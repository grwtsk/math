# Verification target: GRWTSK.Algebra.LinearAlgebra.Centralizer.Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f958aaf53397a7db97ea10d62540accae60c6938",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f958aaf53397a7db97ea10d62540accae60c6938`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_centralizer_iff](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/le-centralizer-iff--a29d1ff00eaf87a521b5e1e5.md) | 42 | `result-track:a29d1ff00eaf87a521b5e1e5b6c38f5e1d896bbce8f78037d8ab12be23e2b9a8` |
| 2 | `lemma` | [centralizer_coe_sup](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-sup--2eaca25eaaa0f19d3bd6a683.md) | 45 | `result-track:2eaca25eaaa0f19d3bd6a683a5d7584ed505500c99b27746de4947c1abb8e3e1` |
| 3 | `lemma` | [centralizer_coe_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-isup--0a6f642cfcf68b7415e20719.md) | 50 | `result-track:0a6f642cfcf68b7415e207197fe6b2219bf696283e640ea1d7cc763deb8a3024` |
| 4 | `lemma` | [centralizer_coe_image_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-image-includeleft-eq-center-tensorproduct--162fef137361754f415a0c30.md) | 70 | `result-track:162fef137361754f415a0c300e6c915101957968277f691cc3674a130be16e6f` |
| 5 | `lemma` | [centralizer_coe_image_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-image-includeright-eq-center-tensorproduct--276c3e4a84a33ab8452cc2a6.md) | 111 | `result-track:276c3e4a84a33ab8452cc2a6ce5389920ed35c7254ac1f9482d05ccbce64d344` |
| 6 | `lemma` | [centralizer_coe_map_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-map-includeleft-eq-center-tensorproduct--ecf04f6b147abe9e2c8fd359.md) | 139 | `result-track:ecf04f6b147abe9e2c8fd359f93112c4d506527d858f92b6a33928c67d5e8f13` |
| 7 | `lemma` | [centralizer_coe_map_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-map-includeright-eq-center-tensorproduct--f76fc090497470d85933ee24.md) | 152 | `result-track:f76fc090497470d85933ee24d9792f6870d7ed52f6d48426729d28803f88e70e` |
| 8 | `lemma` | [centralizer_coe_range_includeLeft_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-coe-range-includeleft-eq-center-tensorproduct--9a1c7f1e8f45c5ac707c69ca.md) | 164 | `result-track:9a1c7f1e8f45c5ac707c69ca80f34091188b3a85c77e04f9e9689103c1da8f76` |
| 9 | `lemma` | [centralizer_range_includeRight_eq_center_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-range-includeright-eq-center-tensorproduct--c9e98860329d790eb68ceb3c.md) | 177 | `result-track:c9e98860329d790eb68ceb3c5763da224484e040513e90d88ab2349f25d7c414` |
| 10 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_left](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-left--c01dd14ccd5e2f60569e7989.md) | 186 | `result-track:c01dd14ccd5e2f60569e7989b15a1bbbe5bd46535747b45d5735e806183638c8` |
| 11 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_right](../../../../../mathematics/Algebra/LinearAlgebra/Centralizer/Variant4ab97dcb428bf545a501f9590c9baef4f84da96a448fee608d58018073df6492.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-right--a5eafbac4e70e27b7405e724.md) | 193 | `result-track:a5eafbac4e70e27b7405e7247246912edde57bf5314ce756406bb5e428ebd237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
