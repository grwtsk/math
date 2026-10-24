# Verification target: GRWTSK.Algebra.UniversalAlgebra.Conjneg.Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08cecd34d25c31bf4e73764371a14ab486ba603f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08cecd34d25c31bf4e73764371a14ab486ba603f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg--b8d2cc41c6ac6e383a21b33c.md) | 28 | `declaration-track:b8d2cc41c6ac6e383a21b33c615890c154ce4154b93a58ae6560fcd837f07b6a` |
| 2 | `lemma` | [conjneg_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-apply--c8e859fa5bdb19120a871d4b.md) | 30 | `result-track:c8e859fa5bdb19120a871d4b3111ed440fcd7c6f03d64952e72b0a06dfc74060` |
| 3 | `lemma` | [conjneg_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-conjneg--2b2a01ae7c2064035c682609.md) | 31 | `result-track:2b2a01ae7c2064035c6826090140c7c801823fd43b1df9fd53c0c61d28132909` |
| 4 | `lemma` | [conjneg_involutive](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-involutive--17f42bd048a97cec3afe4580.md) | 33 | `result-track:17f42bd048a97cec3afe45808521a7c8815903833408b51a1638ed8bec6bec35` |
| 5 | `lemma` | [conjneg_bijective](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-bijective--be65a69e42ed229cca4eaca7.md) | 34 | `result-track:be65a69e42ed229cca4eaca7f9cdd47bd2bf1666a8d7cdd19cd7bb13d07eef0b` |
| 6 | `lemma` | [conjneg_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-injective--f544fd9da40ae3256d06af79.md) | 35 | `result-track:f544fd9da40ae3256d06af792892e05f51fd7132a38f2a1e0f236d8159bc2ffe` |
| 7 | `lemma` | [conjneg_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-surjective--67429d59cd03e9818096b4b6.md) | 36 | `result-track:67429d59cd03e9818096b4b6b3d2a95bff77c80db0e6643857724cc114cd035d` |
| 8 | `lemma` | [conjneg_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-inj--4f860b909e12a7ff72e0fc99.md) | 38 | `result-track:4f860b909e12a7ff72e0fc999153bc33c77d2ce4ffdda35d87e2631d9fe86fbb` |
| 9 | `lemma` | [conjneg_ne_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-ne-conjneg--10fa00b0f6d4be843178e399.md) | 39 | `result-track:10fa00b0f6d4be843178e3995c40bb61c6da976f0bdd8d0e50a66f320cce14ed` |
| 10 | `lemma` | [conjneg_conj](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-conj--50958653fe0c55484504a8d5.md) | 41 | `result-track:50958653fe0c55484504a8d5c7bf25af374836496576ed5a0c69fd9c3b69ed94` |
| 11 | `lemma` | [conjneg_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-zero--9a7523d06279327ab5168974.md) | 43 | `result-track:9a7523d06279327ab5168974f218ec5be9097349f74d6736c537fa155b807b03` |
| 12 | `lemma` | [conjneg_one](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-one--6089e39baa8d487121d485bd.md) | 44 | `result-track:6089e39baa8d487121d485bddd1d6b25788bc725b54e500622c8707fe407ea0f` |
| 13 | `lemma` | [conjneg_add](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-add--5e22dd4cf6926de2a94793a4.md) | 45 | `result-track:5e22dd4cf6926de2a94793a42093e4d85222dfecafd043909ea2699e4161b6cb` |
| 14 | `lemma` | [conjneg_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-mul--4fef58e51574e5796da20937.md) | 46 | `result-track:4fef58e51574e5796da209378e8cb52a96a605af4587d5a0249f07a803cd3f11` |
| 15 | `lemma` | [conjneg_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-sum--8cc083db3be5265bba8902d0.md) | 48 | `result-track:8cc083db3be5265bba8902d069ebce2187ab0680da2de3630bc30d54a4447d60` |
| 16 | `lemma` | [conjneg_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-prod--7a5db8dae2045d92c17b010e.md) | 51 | `result-track:7a5db8dae2045d92c17b010eb33c3bb310d15022576c5fcfdf9e4a1b9ec74688` |
| 17 | `lemma` | [conjneg_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-eq-zero--eb11ea61bd5ea79828f5a43f.md) | 54 | `result-track:eb11ea61bd5ea79828f5a43f9371a8ec0f7f55279f29c960d052ea8b8323d6ed` |
| 18 | `lemma` | [conjneg_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-eq-one--11b594dac236146cd8d5066e.md) | 57 | `result-track:11b594dac236146cd8d5066e5d13c43227a567549e66d4522fc630241b626005` |
| 19 | `lemma` | [conjneg_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-ne-zero--46273c397c69a2aec0a264d7.md) | 60 | `result-track:46273c397c69a2aec0a264d767e9610407c10a2181f75b51d1faf189c694b66d` |
| 20 | `lemma` | [conjneg_ne_one](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-ne-one--6cb5f1d6b9becb3772b49bf2.md) | 61 | `result-track:6cb5f1d6b9becb3772b49bf240ba30bb3050c10df21ab1588b455abaea706344` |
| 21 | `lemma` | [sum_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/sum-conjneg--5892e689500a9ccda33f9e14.md) | 63 | `result-track:5892e689500a9ccda33f9e14bab53258dcc1b167a3db18139bed19cba4c2035b` |
| 22 | `lemma` | [support_conjneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/support-conjneg--1e9f7d5cc34275a29574ef69.md) | 66 | `result-track:1e9f7d5cc34275a29574ef69884b9eae5512ff05d1fc683578176b5a0aac4402` |
| 23 | `def` | [conjnegRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjnegringhom--2222e4223a4f088ead35583f.md) | 70 | `declaration-track:2222e4223a4f088ead35583f10987072576391ba47564dc4ee75918adaa609bd` |
| 24 | `lemma` | [conjneg_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-sub--1d9603595f2eede0b31441a9.md) | 82 | `result-track:1d9603595f2eede0b31441a9b2440e70127a2a29f583eb5e9ae26b980da7d0eb` |
| 25 | `lemma` | [conjneg_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant7b5040f301445f4f0ae4f398e3ccb24ce3c3dd89e5d4c1f6f743ea2d6582a9c0.lean/declarations/conjneg-neg--37a8abe1df217f6270705e2d.md) | 83 | `result-track:37a8abe1df217f6270705e2ded30f29c3d6fdc02b58da8154757890458573f7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
