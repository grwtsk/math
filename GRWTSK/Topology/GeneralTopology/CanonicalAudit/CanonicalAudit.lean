import FormalResearch.PositiveAtlas.RationalPhase

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let entries := env.constants.toList.filter fun item =>
    (`FormalResearch.PositiveAtlas.RationalPhase).isPrefixOf item.1
  for (name, info) in entries.mergeSort (fun a b => Name.lt a.1 b.1) do
    let axioms ← collectAxioms name
    logInfo m!"AUDIT_NAME {name}"
    logInfo m!"AUDIT_TYPE {info.type}"
    logInfo m!"AUDIT_AXIOMS {axioms.qsort Name.lt |>.toList}"
