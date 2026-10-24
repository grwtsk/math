# Verification target: GRWTSK.Algebra.LinearAlgebra.External.Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `211f269a90fb27ed9f21b1f73cc890de4be5491d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.IntUnitsPower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/instance--82b165c9ecea9efaa70fe5fe.md) | 61 | `declaration-track:82b165c9ecea9efaa70fe5fe50bc9472d1cda70adda8a21ca61281f43a89e9d6` |
| 2 | `def` | [gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcommaux--989373bfd0e5f5cbc1a409c8.md) | 76 | `declaration-track:989373bfd0e5f5cbc1a409c848663d7db451db22966b78f342a777e7d5f925b8` |
| 3 | `theorem` | [gradedCommAux_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcommaux-lof-tmul--9f56c01153ff5dc31b0d23d4.md) | 83 | `result-track:9f56c01153ff5dc31b0d23d4ef2921f2d5a3fcffe0ebbb039ea0d3630394d823` |
| 4 | `theorem` | [gradedCommAux_comp_gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcommaux-comp-gradedcommaux--bd484fb4d13e9db249cd581a.md) | 91 | `result-track:bd484fb4d13e9db249cd581ad21956eb97f8eee55ab0fd347b2a3bbe04129c6f` |
| 5 | `def` | [gradedComm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm--c52b8621583b8843ccc92f9a.md) | 101 | `declaration-track:c52b8621583b8843ccc92f9a86b9a339097efacf54bfaf3656273a09f0748ecd` |
| 6 | `theorem` | [gradedComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-symm--92786bf0dc69cf4f89354888.md) | 109 | `result-track:92786bf0dc69cf4f893548880057ccedda4aed314c4c533efc52030107f7532c` |
| 7 | `theorem` | [gradedComm_of_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-of-tmul-of--2619bdec05bf71bd8497fc43.md) | 114 | `result-track:2619bdec05bf71bd8497fc43fa7bc35980064839c5111bddacbc4d094da8f4c9` |
| 8 | `theorem` | [gradedComm_tmul_of_zero](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-tmul-of-zero--d0a0052ef2eae826124e8f46.md) | 124 | `result-track:d0a0052ef2eae826124e8f46bcd87a6a52318842f8682fd5f93ce71e1edd0b56` |
| 9 | `theorem` | [gradedComm_of_zero_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-of-zero-tmul--64c854a0916c06820e021b40.md) | 135 | `result-track:64c854a0916c06820e021b40e2457575de597a7b2755691b322ff325d17c3815` |
| 10 | `theorem` | [gradedComm_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-tmul-one--26e30e4e6d23ba4157c1249f.md) | 145 | `result-track:26e30e4e6d23ba4157c1249ff898f6b9bd4fb84a41a398ffb6d2720b47e351e5` |
| 11 | `theorem` | [gradedComm_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-one-tmul--9603f56c622c7b0a5733c039.md) | 149 | `result-track:9603f56c622c7b0a5733c039b8b63745c28b9e29e625d4666262d651870ec3cf` |
| 12 | `theorem` | [gradedComm_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-one--6d5182129da6dccd4ab74ca1.md) | 154 | `result-track:6d5182129da6dccd4ab74ca148fdafd769bd76bbc2abc25d32f8421467b36f9d` |
| 13 | `theorem` | [gradedComm_tmul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-tmul-algebramap--38afeefedf28b70231e74a8a.md) | 157 | `result-track:38afeefedf28b70231e74a8a689bba55bc114b08768698afee2fe20c41611236` |
| 14 | `theorem` | [gradedComm_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-algebramap-tmul--1b953924e095efbc1459e56a.md) | 162 | `result-track:1b953924e095efbc1459e56a96097a92f35f5cfc73ec153f6f0c1e8830958129` |
| 15 | `theorem` | [gradedComm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-algebramap--127ddc2dd9606893265fde52.md) | 167 | `result-track:127ddc2dd9606893265fde522ba1ecff37881fdd4224a66884863b79f5a1634a` |
| 16 | `theorem` | [tmul_of_gradedMul_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/tmul-of-gradedmul-of-tmul--71041685175097d8675cdce9.md) | 189 | `result-track:71041685175097d8675cdce95b820e7029d39cad76c81ff8aac70dc4c90b4a04` |
| 17 | `theorem` | [algebraMap_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/algebramap-gradedmul--287eced936e05b649a7b1e28.md) | 206 | `result-track:287eced936e05b649a7b1e288fa8846e700c385b377f7e6631048189422e6c9b` |
| 18 | `theorem` | [one_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/one-gradedmul--8870a3624df79cd209fbc400.md) | 216 | `result-track:8870a3624df79cd209fbc4001a8d21b544b69d57f8f257b8d5977b10ee12a2b9` |
| 19 | `theorem` | [gradedMul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedmul-algebramap--71cb19590ac85eb8930e55cc.md) | 221 | `result-track:71cb19590ac85eb8930e55cce78f46869176b4b35c4520b467587efc34bb4b8c` |
| 20 | `theorem` | [gradedMul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedmul-one--1215d696b4ffc3ac92c52e93.md) | 232 | `result-track:1215d696b4ffc3ac92c52e93b2790dc5d9294756193fdd42aa5ab14f02f66242` |
| 21 | `theorem` | [gradedMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedmul-assoc--ee0324bd60bbd6a524270633.md) | 237 | `result-track:ee0324bd60bbd6a5242706336004d1a599f93fa0a50dd063fabc1f372d0863ac` |
| 22 | `theorem` | [gradedComm_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/declarations/gradedcomm-gradedmul--b29641c075e8517cb3bcf613.md) | 254 | `result-track:b29641c075e8517cb3bcf6137df7d66098b12615c7d12f60c6a9cd7fb355504d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
