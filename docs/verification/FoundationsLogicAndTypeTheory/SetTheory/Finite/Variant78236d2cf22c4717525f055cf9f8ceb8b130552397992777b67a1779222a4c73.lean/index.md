# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Finite.Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4d0eaff5f97138566bd26253d9d1ed69bede696",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4d0eaff5f97138566bd26253d9d1ed69bede696`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Deprecated.Cardinal.PartENat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card--be746c2584de4556979e4ffd.md) | 34 | `declaration-track:be746c2584de4556979e4ffda958e90f1bfab59aa1c856aeabe843d78dc00acc` |
| 2 | `theorem` | [card_eq_coe_fintype_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-eq-coe-fintype-card--02c77efdf7ade50c0338301d.md) | 41 | `result-track:02c77efdf7ade50c0338301d70f02998da8eec2de690968ceaaddfbf3d6210d4` |
| 3 | `theorem` | [card_eq_top_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-eq-top-of-infinite--c871ec8ed6d9b784d6f15a37.md) | 45 | `result-track:c871ec8ed6d9b784d6f15a3797a9e8f5ead7f3cd8ae21232557de4ea2a59167c` |
| 4 | `theorem` | [card_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-sum--e7b3740e5ebcaeec0dfa568d.md) | 49 | `result-track:e7b3740e5ebcaeec0dfa568d5fa37881701eb126d57c836a2d6a64cb699d3e4f` |
| 5 | `theorem` | [card_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-congr--5cf6c0e8e94da122c70f0c78.md) | 53 | `result-track:5cf6c0e8e94da122c70f0c78e4668802213b23160c7a6410b805e655443d9546` |
| 6 | `lemma` | [card_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-ulift--6a9aa79ecf49e10d3684500c.md) | 56 | `result-track:6a9aa79ecf49e10d3684500c34748688389457f6f90d020b50e18fba1a50021e` |
| 7 | `lemma` | [card_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-plift--1ea0a6ccc400d428f0002315.md) | 58 | `result-track:1ea0a6ccc400d428f00023155165fb6c39cadf31587487117edb105f0d139103` |
| 8 | `theorem` | [card_image_of_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-image-of-injon--2f21dcb45e30016721d7ea9e.md) | 60 | `result-track:2f21dcb45e30016721d7ea9e6b049c947a231016fc96387b0cfe52384b5b2349` |
| 9 | `theorem` | [card_image_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-image-of-injective--dfab9216e14537a8d2beaafb.md) | 64 | `result-track:dfab9216e14537a8d2beaafbd6739f0f2ce003b4e78417d3b848216b352b5a5f` |
| 10 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.Cardinal.natCast_le_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant5a2a826b--c29ed97c3fb0affb74a28640.md) | 70 | `result-track:c29ed97c3fb0affb74a28640931dbb3543c98ec8acca3b5c7da8182f448b4a0d` |
| 11 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.Cardinal.toPartENat_le_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant5a2a826b--6e19277102f8574b482c0d32.md) | 75 | `result-track:6e19277102f8574b482c0d32f660e69e2729f11bc8e0c1d1595289ce7134ccab` |
| 12 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.Cardinal.natCast_eq_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant5a2a826b--bd2860180ab29ed086eb9bae.md) | 80 | `result-track:bd2860180ab29ed086eb9bae76f565ae12c98e237c51167156c7a556f8347eba` |
| 13 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.Cardinal.toPartENat_eq_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant5a2a826b--d6dcf5036d74c38f384f5f4c.md) | 86 | `result-track:d6dcf5036d74c38f384f5f4c2c87d4b37f23bd0963e4907ef61d14dc4fa0704a` |
| 14 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.Cardinal.natCast_lt_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant5a2a826b--8bec539d3d09c0f513533e2e.md) | 91 | `result-track:8bec539d3d09c0f513533e2ed41195d103671ca4df7e0e8e3134b8014db54644` |
| 15 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant5a2a826bda41991eacb7aebf58f678035111e1a77cef544ab17f84ea1ce7cde9.Cardinal.toPartENat_lt_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant5a2a826b--ff306f31c89201dd04bc245d.md) | 96 | `result-track:ff306f31c89201dd04bc245d6a5df11e1493dca01b0159c093b763924dfd04eb` |
| 16 | `theorem` | [card_eq_zero_iff_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-eq-zero-iff-empty--b578256ec14fac879bcd9afd.md) | 100 | `result-track:b578256ec14fac879bcd9afdaae15c11ae23f61380c45b3057e553d560d70b80` |
| 17 | `theorem` | [card_le_one_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-le-one-iff-subsingleton--ab82e375a6d03a33bb8ef513.md) | 106 | `result-track:ab82e375a6d03a33bb8ef513e303addcfc55341e8d985b882be2172dc6d1483a` |
| 18 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/one-lt-card-iff-nontrivial--44da6fadaa871ccb67faf71d.md) | 112 | `result-track:44da6fadaa871ccb67faf71d6584d9de03ef13853c8007b9f6121561b4be3237` |
| 19 | `theorem` | [card_eq_coe_natCard](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant78236d2cf22c4717525f055cf9f8ceb8b130552397992777b67a1779222a4c73.lean/declarations/card-eq-coe-natcard--bef0187816e58e50fff150c5.md) | 120 | `result-track:bef0187816e58e50fff150c56fcee7065c61e44584ad6734e4b03c8b429b5e82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
