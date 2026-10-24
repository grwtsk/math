# Verification target: GRWTSK.Algebra.LinearAlgebra.Products.Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee5b86a2f0f9fb15273fe172054eb3b921685e5a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee5b86a2f0f9fb15273fe172054eb3b921685e5a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productCone](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/declarations/productcone--eb66fa7bdc60bf67cc7ee19b.md) | 39 | `declaration-track:eb66fa7bdc60bf67cc7ee19b04bf3551b4d253603159ff074d4edddcb58bb19d` |
| 2 | `def` | [productConeIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/declarations/productconeislimit--af28bdfcd9aff85d136d00de.md) | 44 | `declaration-track:af28bdfcd9aff85d136d00deaa0931de4008ae6e0496a7efc4502c7c31ef45f6` |
| 3 | `def` | [piIsoPi](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/declarations/piisopi--41690a6882fd5fcda9a9d2a2.md) | 62 | `declaration-track:41690a6882fd5fcda9a9d2a284ade074cc5eb60100c80022911a8dc4068f2741` |
| 4 | `theorem` | [piIsoPi_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/declarations/piisopi-inv-kernel--ea572eb073fd1689f1052b56.md) | 68 | `result-track:ea572eb073fd1689f1052b56b18271ed1a1f40eba475c3cb5cd96fea6609fb83` |
| 5 | `theorem` | [piIsoPi_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variant1d2237e22bd98e55f958597bf0198367d41f76be80df9f8cfce1a02258766678.lean/declarations/piisopi-hom-ker-subtype--9cfe77fc4b3b659579bf09ed.md) | 74 | `result-track:9cfe77fc4b3b659579bf09ed4c7c88b808c197a6e4e51b15f71631b2e9354026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
