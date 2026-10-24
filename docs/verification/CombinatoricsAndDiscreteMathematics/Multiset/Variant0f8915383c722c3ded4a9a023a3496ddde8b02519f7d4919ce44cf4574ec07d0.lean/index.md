# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd77bffc72171a38b6d92e9e29355dd0283f38fd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd77bffc72171a38b6d92e9e29355dd0283f38fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Multiset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_add_left_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-left-icc--5870a58db810f9d486d52fff.md) | 21 | `result-track:5870a58db810f9d486d52fff92ea98301f0984cdf65e14170e876fe19eeb9f37` |
| 2 | `lemma` | [map_add_left_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-left-ico--c4de47d89c4053de14f628f0.md) | 25 | `result-track:c4de47d89c4053de14f628f01202e590264159932305012c6f737195593476bf` |
| 3 | `lemma` | [map_add_left_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-left-ioc--1bbde957d1279f9795cdafb6.md) | 29 | `result-track:1bbde957d1279f9795cdafb6ea08aad0ca40e4547aa1f6da5feeb8e62302e98e` |
| 4 | `lemma` | [map_add_left_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-left-ioo--3b3719704f876c0a9d90c287.md) | 33 | `result-track:3b3719704f876c0a9d90c287aecfc2e0f35e256f0b245262c6735959292f2e87` |
| 5 | `lemma` | [map_add_right_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-right-icc--39b58ba61b95524570fc04c7.md) | 37 | `result-track:39b58ba61b95524570fc04c7b1d636e67794235e13b4c5e603bfd98f49f57bba` |
| 6 | `lemma` | [map_add_right_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-right-ico--2458bd515d2607961e3e3522.md) | 41 | `result-track:2458bd515d2607961e3e3522517e30f7824507a18889cb05f76f8dc3af9c42a8` |
| 7 | `lemma` | [map_add_right_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-right-ioc--4bd9e10809ba9efda19ac3ae.md) | 45 | `result-track:4bd9e10809ba9efda19ac3ae78bc26e0605982161db5ee8a329ec54f18ec67a0` |
| 8 | `lemma` | [map_add_right_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0f8915383c722c3ded4a9a023a3496ddde8b02519f7d4919ce44cf4574ec07d0.lean/declarations/map-add-right-ioo--4700acf01c7a5b26559d9e77.md) | 49 | `result-track:4700acf01c7a5b26559d9e77df15a9360e75c92d1803f0429765bee30af0b534` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
