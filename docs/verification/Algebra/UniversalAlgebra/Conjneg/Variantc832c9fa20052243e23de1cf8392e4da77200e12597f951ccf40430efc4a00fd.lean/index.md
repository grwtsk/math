# Verification target: GRWTSK.Algebra.UniversalAlgebra.Conjneg.Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b247dbc08de4da922d8ad8a9f6376a2abd26ed1b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b247dbc08de4da922d8ad8a9f6376a2abd26ed1b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg--9145a4af71a685e384cd98a2.md) | 36 | `declaration-track:9145a4af71a685e384cd98a2e016eeed6834cc94c1f7c36baa73c652829b2f60` |
| 2 | `lemma` | [conjneg_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-apply--b82352930fda0cb07affc904.md) | 38 | `result-track:b82352930fda0cb07affc904a4533e8519841954ec120c5e6268495f5e961af4` |
| 3 | `lemma` | [conjneg_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-conjneg--7d8b56641bbdc3fc7a20c5c8.md) | 39 | `result-track:7d8b56641bbdc3fc7a20c5c88b659b8861a8e97a46927377811db048a0d67b86` |
| 4 | `lemma` | [conjneg_involutive](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-involutive--bb487bc9bfb2c2b5081cf58b.md) | 41 | `result-track:bb487bc9bfb2c2b5081cf58b6b8f7da5a8f9bdc4c99e8161e4a8c539e34da1dc` |
| 5 | `lemma` | [conjneg_bijective](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-bijective--fd08c1e23e4603562108eac4.md) | 42 | `result-track:fd08c1e23e4603562108eac425e394e8dbea3c95ee39e217ee3ef39ef85e6a95` |
| 6 | `lemma` | [conjneg_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-injective--90689aff8395073b03b5c1f2.md) | 43 | `result-track:90689aff8395073b03b5c1f22c841fa6f8bb470c7e2389da292b7efaedc357a4` |
| 7 | `lemma` | [conjneg_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-surjective--b61360eb446c2a9614285436.md) | 44 | `result-track:b61360eb446c2a961428543670598270002b934a670cdc4333a47bcd8f8a4d13` |
| 8 | `lemma` | [conjneg_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-inj--d36b1292c322a58e5477842d.md) | 46 | `result-track:d36b1292c322a58e5477842d4219dab885bdf8a65bc87abe7c59dd6e3d5cca6a` |
| 9 | `lemma` | [conjneg_ne_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-ne-conjneg--09be304ad85cf4472f86a247.md) | 47 | `result-track:09be304ad85cf4472f86a247f11e48b4bba61a5002ac088f5b8f1288e6cefc13` |
| 10 | `lemma` | [conjneg_conj](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-conj--60cd38e0a5ec2ab3dd127791.md) | 49 | `result-track:60cd38e0a5ec2ab3dd127791480d427a9e1a081df3451b6b1a24516cc3f66d99` |
| 11 | `lemma` | [conjneg_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-zero--95cd20de5c07680143f1aced.md) | 51 | `result-track:95cd20de5c07680143f1aced67869c54e51596bce3770448a3f01d0585a168a0` |
| 12 | `lemma` | [conjneg_one](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-one--a9b2f89107484c66ddd915c0.md) | 52 | `result-track:a9b2f89107484c66ddd915c06fbf0ee5ce84b57a3967e3ce544f4be69f6bb0a3` |
| 13 | `lemma` | [conjneg_add](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-add--69b8117cb1995e76e9fd2e87.md) | 53 | `result-track:69b8117cb1995e76e9fd2e87cd9b19d24391ace66f78c725d7ed8c613ec81883` |
| 14 | `lemma` | [conjneg_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-mul--f4d7b211fb28f939f83e6dc5.md) | 54 | `result-track:f4d7b211fb28f939f83e6dc58bf9d3f7c4dc6f2f757dc78dbe88dd8f554897d1` |
| 15 | `lemma` | [conjneg_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-sum--53af66234e1bd1bda5299cc3.md) | 56 | `result-track:53af66234e1bd1bda5299cc3c91701d9b27210a55846893d663e1669bd9339f3` |
| 16 | `lemma` | [conjneg_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-prod--511f61e2d7b5bd5b87992171.md) | 59 | `result-track:511f61e2d7b5bd5b87992171ed34730efa70a4839efbf6a15fd857b06cd59c13` |
| 17 | `lemma` | [conjneg_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-eq-zero--92fd2a74b69a3cc35be24763.md) | 62 | `result-track:92fd2a74b69a3cc35be24763ac51bd38baaa044ef75e332a6791bcfb8ff39664` |
| 18 | `lemma` | [conjneg_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-eq-one--0453ed497344d8a2606e8820.md) | 65 | `result-track:0453ed497344d8a2606e88209b67c99546b2dd00918c6c63eb41ef2be65b0907` |
| 19 | `lemma` | [conjneg_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-ne-zero--89b9349fb9721941296f6c63.md) | 68 | `result-track:89b9349fb9721941296f6c633d37cd1c5b4baae7d11f69ef5353ae579f37245a` |
| 20 | `lemma` | [conjneg_ne_one](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-ne-one--11b78447914484c1dfddaf44.md) | 69 | `result-track:11b78447914484c1dfddaf4436381e7dc1a2045c0eff5ee85ce5789f11793e38` |
| 21 | `lemma` | [sum_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/sum-conjneg--1e516d3ff906f52d9f7f93e9.md) | 71 | `result-track:1e516d3ff906f52d9f7f93e9db9e2b07b1e24c2a3280e32ba4523a16a85bf081` |
| 22 | `lemma` | [support_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/support-conjneg--fe8b6bb3fb4b8e44c1193777.md) | 74 | `result-track:fe8b6bb3fb4b8e44c1193777af72c6b8754b32396001141dce794783aced8126` |
| 23 | `def` | [conjnegRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjnegringhom--e10bce3e82cd013caf9e8f8a.md) | 78 | `declaration-track:e10bce3e82cd013caf9e8f8a86fa80970879fab0c0a47af221bb0a83e881b919` |
| 24 | `lemma` | [conjneg_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-sub--cd24d00e22a3b59b751b2efe.md) | 90 | `result-track:cd24d00e22a3b59b751b2efef9c15972c3f53231a74aa10795c69c8b5eebfe7e` |
| 25 | `lemma` | [conjneg_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variantc832c9fa20052243e23de1cf8392e4da77200e12597f951ccf40430efc4a00fd.lean/declarations/conjneg-neg--ba83945e1f573de01bc162d7.md) | 91 | `result-track:ba83945e1f573de01bc162d7f372cf2c2ca34730ce902f14e75c7aec142acb65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
