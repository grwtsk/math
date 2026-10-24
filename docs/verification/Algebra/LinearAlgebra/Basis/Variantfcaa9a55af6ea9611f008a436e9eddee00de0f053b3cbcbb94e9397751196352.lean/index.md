# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c44af205f93b3695e88f6c1ca76a80aed3fd78b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c44af205f93b3695e88f6c1ca76a80aed3fd78b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Rank` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeAlgebra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFreeAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/declarations/equivfreealgebra--f4f19024bdce5bac793f3ec9.md) | 40 | `declaration-track:f4f19024bdce5bac793f3ec93d4296d858d2c3c3f96e0833755c2a107d9d65ff` |
| 2 | `lemma` | [equivFreeAlgebra_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/declarations/equivfreealgebra-apply--16f3a24ea614e014e8959e01.md) | 49 | `result-track:16f3a24ea614e014e8959e015371b143d7551af086a5aca6a4ea9667a932d60c` |
| 3 | `lemma` | [equivFreeAlgebra_symm_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/declarations/equivfreealgebra-symm--15b5022e334fe305446d777e.md) | 54 | `result-track:15b5022e334fe305446d777e54dfefb6eee62ed4acf4f9a4e9abdd83caad9c4c` |
| 4 | `def` | [_root_.Basis.tensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/declarations/root-basis-tensoralgebra--6cbe1b1c26a3e1d11ffa71c7.md) | 60 | `declaration-track:6cbe1b1c26a3e1d11ffa71c70345f5384f13e9451e479b9487f0c40d15d49919` |
| 5 | `instance` | [instModuleFree](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/declarations/instmodulefree--9b18016700510d4c5a5db33c.md) | 65 | `declaration-track:9b18016700510d4c5a5db33c84a1a0328d93af03ce32237c156f33fd737fc108` |
| 6 | `lemma` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.lean/declarations/rank-eq--686c0702fab7817b27a2f703.md) | 79 | `result-track:686c0702fab7817b27a2f70340d51bea31b3e9b8216e66f1070c7f80360e66be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
