module

public import Surface.Core
public meta import Lean.Elab.Command
public meta import Surface.Core.Classification

/-!
# Publication classification audit

Only declarations explicitly tagged `surface_published` enter this audit.
Compiler-generated recursors and helper theorems therefore cannot create false
publication failures.
-/

public meta section

open Lean Elab Command

namespace Surface.Audit

def publicationFailure?
    (env : Environment)
    (info : ConstantInfo) : Option String :=
  let name := info.name
  if !Surface.Core.surfacePublishedAttr.hasTag env name then
    none
  else
    let adapter := Surface.Core.surfaceAdapterAttr.hasTag env name
    let novel := Surface.Core.surfaceNovelAttr.hasTag env name
    let candidate := Surface.Core.surfaceCandidateAttr.hasTag env name
    if adapter == novel then
      some <| name.toString ++
        ": published theorem must have exactly one of surface_adapter/surface_novel"
    else if candidate then
      some <| name.toString ++ ": published theorem is tagged surface_candidate"
    else
      none

def publicationFailures (env : Environment) : List String :=
  env.constants.toList.filterMap fun pair =>
    publicationFailure? env pair.snd

elab "surface_publication_audit" : command => do
  let failures := publicationFailures (← getEnv)
  unless failures.isEmpty do
    throwError "Surface publication audit failed:\n{String.intercalate "\n" failures}"

surface_publication_audit

end Surface.Audit
