# Verification target: GRWTSK.Topology.GeneralTopology.DerivedSet.Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36b94573123520c4a3873806c19cf7571bc113a8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36b94573123520c4a3873806c19cf7571bc113a8`.

Source path: `GRWTSK/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Perfect` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.map](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/accpt-map--df46b8213cf7bc5ddc88eb2d.md) | 29 | `result-track:df46b8213cf7bc5ddc88eb2dd4a2c1b323ee964d387d3efabd839f1b5f56100a` |
| 2 | `def` | [derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/derivedset--0f96eb47abc0b87a81d05df5.md) | 41 | `declaration-track:0f96eb47abc0b87a81d05df5dd8a842818172b04b603117fa52c21ea871f4a66` |
| 3 | `lemma` | [mem_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/mem-derivedset--539cd0b8a7e0b75598ef5b25.md) | 44 | `result-track:539cd0b8a7e0b75598ef5b255d8abfd49330284244864a9b598ef03ef80300ef` |
| 4 | `lemma` | [derivedSet_union](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/derivedset-union--9a9927c71f8884e2df7b2f31.md) | 46 | `result-track:9a9927c71f8884e2df7b2f3173a7a8e3d570da352d1582adb341ffc86a315b7a` |
| 5 | `lemma` | [derivedSet_mono](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/derivedset-mono--152be0f8483bfd4e0090efc0.md) | 50 | `result-track:152be0f8483bfd4e0090efc0297f3b48202d1fbe3af1316fab0fd65f332a83d6` |
| 6 | `theorem` | [Continuous.image_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/continuous-image-derivedset--2937813ca3be08da6196b25f.md) | 53 | `result-track:2937813ca3be08da6196b25f51ce82bd9dc247a3eddc888750f81399dda2965f` |
| 7 | `lemma` | [derivedSet_subset_closure](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/derivedset-subset-closure--85c437628fff071cea8b989c.md) | 62 | `result-track:85c437628fff071cea8b989c39ae4f53f04b3114641eb89ed2457b62ee546c22` |
| 8 | `lemma` | [isClosed_iff_derivedSet_subset](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/isclosed-iff-derivedset-subset--ee2fb69ee76751f19554b197.md) | 65 | `result-track:ee2fb69ee76751f19554b1978a32c312366167db25b1aa0e723d2ef7b682480d` |
| 9 | `lemma` | [closure_eq_self_union_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/closure-eq-self-union-derivedset--4b1726afd0abc4356a806544.md) | 75 | `result-track:4b1726afd0abc4356a8065444751e2c2833309eb005c22da74a96f08c03e8b92` |
| 10 | `lemma` | [derivedSet_closure](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/derivedset-closure--519f3d8cb26b264fbac1ea40.md) | 85 | `result-track:519f3d8cb26b264fbac1ea40a2fb4a2bc78b02525b814189fe88b790076db8cf` |
| 11 | `lemma` | [isClosed_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/isclosed-derivedset--0dcb6e4efc7a16b36ab172bd.md) | 94 | `result-track:0dcb6e4efc7a16b36ab172bda758c8e9851914b0c3a2247ca97114facb9c4f50` |
| 12 | `lemma` | [preperfect_iff_subset_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/preperfect-iff-subset-derivedset--40fac1860af8f84e8ec48cca.md) | 99 | `result-track:40fac1860af8f84e8ec48cca2aa2767ded9d9b5348eb1a2f6f6c664a57fa8103` |
| 13 | `lemma` | [perfect_iff_eq_derivedSet](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/perfect-iff-eq-derivedset--4b77a037122834fe4a3527b5.md) | 102 | `result-track:4b77a037122834fe4a3527b550a362dcde4194f7583b3bc277583cb84e57c664` |
| 14 | `lemma` | [IsPreconnected.inter_derivedSet_nonempty](../../../../../mathematics/Topology/GeneralTopology/DerivedSet/Variant0f514806360500f3cb2f3b399fdf708d5bbcb8882b3a27027b40e107ed371ef7.lean/declarations/ispreconnected-inter-derivedset-nonempty--d2d6948381a64f26ff2f75a2.md) | 106 | `result-track:d2d6948381a64f26ff2f75a26c6a6194f38a2d01fa63170bc84cc82b81cd99dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
