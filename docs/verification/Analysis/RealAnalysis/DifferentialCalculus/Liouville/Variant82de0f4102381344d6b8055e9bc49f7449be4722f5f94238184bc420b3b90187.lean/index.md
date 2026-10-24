# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Liouville.Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "050c20b44512b802bfcf87b3a2d38d338d860b92",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `050c20b44512b802bfcf87b3a2d38d338d860b92`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/norm-iteratedderiv-le-of-forall-mem-sphere-norm-le--b479d4651fa441a36b53d316.md) | 52 | `result-track:b479d4651fa441a36b53d316c6480000a3918e147e47176c78d613e8a977b2a5` |
| 2 | `theorem` | [norm_deriv_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/norm-deriv-le-aux--efa37410ecf137ccc87432c1.md) | 74 | `result-track:efa37410ecf137ccc87432c178c87282df0928523f1f0607882a2b8449a5ed86` |
| 3 | `theorem` | [norm_deriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/norm-deriv-le-of-forall-mem-sphere-norm-le--8da7665a47182f1e626c48ac.md) | 84 | `result-track:8da7665a47182f1e626c48ac1e864a3833bfccd592d8e2d290d666c87b020207` |
| 4 | `theorem` | [liouville_theorem_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/liouville-theorem-aux--cb68d7a805545cff47c37c5f.md) | 100 | `result-track:cb68d7a805545cff47c37c5f18e1335f0117ef1072ab215b29aa35e6cd8c78d7` |
| 5 | `theorem` | [apply_eq_apply_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/apply-eq-apply-of-bounded--8f6d020f5701740f7865bb9c.md) | 122 | `result-track:8f6d020f5701740f7865bb9ce90e32d32fa260801552f2db129b689a6fe6f9f9` |
| 6 | `theorem` | [exists_const_forall_eq_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/exists-const-forall-eq-of-bounded--6787f3800d515efd7645fe81.md) | 131 | `result-track:6787f3800d515efd7645fe810c32c4b93b2695e3f6176d78cceeef53fc474147` |
| 7 | `theorem` | [exists_eq_const_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/exists-eq-const-of-bounded--9e05ddcbf97413c8fa5e0e00.md) | 136 | `result-track:9e05ddcbf97413c8fa5e0e000f70fee6fc77c634d29b4b2327c8b03a55d05142` |
| 8 | `theorem` | [eq_const_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/eq-const-of-tendsto-cocompact--52c2e449cec46dbc9795d66f.md) | 143 | `result-track:52c2e449cec46dbc9795d66f09f4880a5ed4c568eff198e02a8959def89bab4e` |
| 9 | `theorem` | [apply_eq_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant82de0f4102381344d6b8055e9bc49f7449be4722f5f94238184bc420b3b90187.lean/declarations/apply-eq-of-tendsto-cocompact--d8e1910cb0702f38e21e347b.md) | 158 | `result-track:d8e1910cb0702f38e21e347b9c4a0847bcd24c29834fc4aef180a276f7483cec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
