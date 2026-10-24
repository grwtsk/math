# Verification target: GRWTSK.Algebra.LinearAlgebra.HermitianFunctionalCalculus.Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2d1f864aec77c282db10d2d33075c3ca33296af",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2d1f864aec77c282db10d2d33075c3ca33296af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Matrix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Units` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_real_spectrum](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/finite-real-spectrum--808adb6bd683662235b89a6f.md) | 48 | `result-track:808adb6bd683662235b89a6f3f72a1ae57887ce8db7387d0d27cf16e6c8c0f37` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/instance--580fa1190ee8cf2e727a0a84.md) | 52 | `declaration-track:580fa1190ee8cf2e727a0a8434af2ecf1c42168ef5d68a967a726878c868877e` |
| 3 | `theorem` | [eigenvalues_eq_spectrum_real](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/eigenvalues-eq-spectrum-real--7a34d0fd6a64705a1ec9de73.md) | 60 | `result-track:7a34d0fd6a64705a1ec9de7331a9dd60e99f93bc60e919ab4b19c299ec0117c8` |
| 4 | `def` | [cfcAux](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/cfcaux--09402e0e5b7346c06e29263b.md) | 71 | `declaration-track:09402e0e5b7346c06e29263b8cb0227c072158f2a6d02aae02909267d701cd6b` |
| 5 | `lemma` | [isClosedEmbedding_cfcAux](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/isclosedembedding-cfcaux--63cc2ac3cf14adbf0c547706.md) | 100 | `result-track:63cc2ac3cf14adbf0c547706ff809e43ab5e01eab9b60d1a375880568bff0f32` |
| 6 | `lemma` | [cfcAux_id](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/cfcaux-id--7d28a4068222c512caf5b7ac.md) | 120 | `result-track:7d28a4068222c512caf5b7acb59761012c0a3956c20904dcecb33e341605c757` |
| 7 | `instance` | [instContinuousFunctionalCalculus](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/instcontinuousfunctionalcalculus--fccaa30f88febfea1c98b082.md) | 126 | `declaration-track:fccaa30f88febfea1c98b08272b875b9c3d14e7d19aefb4c75f7d2eb7e03eea3` |
| 8 | `def` | [cfc](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/cfc--8f376de097f7c7bd700e2ad9.md) | 160 | `declaration-track:8f376de097f7c7bd700e2ad91c82fa6f7f8208df3e20942cfecea3f2be852b4b` |
| 9 | `lemma` | [cfc_eq](../../../../../mathematics/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/declarations/cfc-eq--1fab331035258d76a9314aab.md) | 164 | `result-track:1fab331035258d76a9314aabc0b53ba67b952ea3e51ae54bd2ea8291383e2e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
