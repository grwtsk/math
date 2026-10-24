# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "442c78da5ee5fbda7d61db6a877bc204bf221e2a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `442c78da5ee5fbda7d61db6a877bc204bf221e2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Determinant` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm--4b95546c3a478231529b1350.md) | 65 | `declaration-track:4b95546c3a478231529b1350227b92795f188751725f607b13b58100729b1315` |
| 2 | `theorem` | [norm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-apply--6c23bfaabf1375115ca46917.md) | 68 | `result-track:6c23bfaabf1375115ca46917e9975a027978007735592d5dab5d4bff3edcf717` |
| 3 | `theorem` | [norm_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-self--65e8ce29729db3cd12b10c81.md) | 71 | `result-track:65e8ce29729db3cd12b10c814f9ccadfcf6a57e3be5fea1a613bff93829b3e95` |
| 4 | `theorem` | [norm_eq_one_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-eq-one-of-not-exists-basis--2618c817a5969d452146cd84.md) | 75 | `result-track:2618c817a5969d452146cd8430b1e2bcefd58ccdbe668eb5638bc21baa34145f` |
| 5 | `theorem` | [norm_eq_one_of_not_module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-eq-one-of-not-module-finite--96ff8b98d434d99ea26da2de.md) | 80 | `result-track:96ff8b98d434d99ea26da2de8d9ea76a10dc673de21d989617567da8b42afc64` |
| 6 | `theorem` | [norm_eq_matrix_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-eq-matrix-det--2542559a01164e0e5699dbde.md) | 86 | `result-track:2542559a01164e0e5699dbde7d48eb7888b66dfd5573132ebb11f237c4cbaa3e` |
| 7 | `theorem` | [norm_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-algebramap-of-basis--70c92c0b542d4676fccc7a89.md) | 91 | `result-track:70c92c0b542d4676fccc7a8985c751b8ba9f828f47d3c07a1ddecf0c065853e6` |
| 8 | `theorem` | [norm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/declarations/norm-algebramap--9cf9cb619be0a20a24a6d729.md) | 104 | `result-track:9cf9cb619be0a20a24a6d7291f05c3faa14ca0e189cc20ad29c350d13d6a7586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
