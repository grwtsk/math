# Verification target: GRWTSK.Algebra.RingHomProperties.Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae7717b5ea7daa8300cf1d3764a7059b2d7a0b9d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae7717b5ea7daa8300cf1d3764a7059b2d7a0b9d`.

Source path: `GRWTSK/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RespectsIso](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/respectsiso--52db18be215658f5738c4812.md) | 39 | `declaration-track:52db18be215658f5738c4812484793448dd0def2c063c0568e118ac8bdec2628` |
| 2 | `theorem` | [RespectsIso.cancel_left_isIso](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/respectsiso-cancel-left-isiso--13283882a18c252b36d24316.md) | 45 | `result-track:13283882a18c252b36d24316ea881b1fb701f5c7b2bab23e12ed0dc54d7cbdc4` |
| 3 | `theorem` | [RespectsIso.cancel_right_isIso](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/respectsiso-cancel-right-isiso--f9bb31e60c61559e049a8d90.md) | 51 | `result-track:f9bb31e60c61559e049a8d90191199b47b9abd13d2ffe688da1bb7b505edfc57` |
| 4 | `theorem` | [RespectsIso.isLocalization_away_iff](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/respectsiso-islocalization-away-iff--04b48f7ec93d4fd851a8a715.md) | 58 | `result-track:04b48f7ec93d4fd851a8a715293b056937dcd79722d225d767efd0c8e9db208e` |
| 5 | `lemma` | [RespectsIso.and](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/respectsiso-and--f355e78da9871e0a1ca082f2.md) | 89 | `result-track:f355e78da9871e0a1ca082f228711b487f33e8067292043a6a0a28d7f7c9ecb1` |
| 6 | `def` | [StableUnderComposition](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/stableundercomposition--2fb85ae31339fcbd4a3e04ed.md) | 104 | `declaration-track:2fb85ae31339fcbd4a3e04ed331be8bac15264de108f5a02665250a9b266e8d5` |
| 7 | `theorem` | [StableUnderComposition.respectsIso](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/stableundercomposition-respectsiso--6549a38b756d39da69a47d66.md) | 108 | `result-track:6549a38b756d39da69a47d66c3e2b3b80852c3646859585621632fcc16d57d11` |
| 8 | `lemma` | [StableUnderComposition.and](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/stableundercomposition-and--5745d98776b2b1cd44ec2ff4.md) | 119 | `result-track:5745d98776b2b1cd44ec2ff4a83c8beab37ca3716123065eaa9a40e9de68b284` |
| 9 | `def` | [IsStableUnderBaseChange](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/isstableunderbasechange--bb146fd316dcfe1a7d5ab3f7.md) | 131 | `declaration-track:bb146fd316dcfe1a7d5ab3f7f75bf3596ea418ad7140aa70ebf275b051d63f8f` |
| 10 | `theorem` | [IsStableUnderBaseChange.mk](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/isstableunderbasechange-mk--a25cf153e57e38a55031dc5c.md) | 137 | `result-track:a25cf153e57e38a55031dc5c1e99f1f25dd86b9abaa68c25304680cc3e269f7e` |
| 11 | `theorem` | [IsStableUnderBaseChange.pushout_inl](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/isstableunderbasechange-pushout-inl--e099419d105cc04cec11332d.md) | 172 | `result-track:e099419d105cc04cec11332da5c634daeef3df3863bb8e050d3c01d887b4e544` |
| 12 | `lemma` | [IsStableUnderBaseChange.and](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/isstableunderbasechange-and--ab6822940bde5362ebfc0e92.md) | 184 | `result-track:ab6822940bde5362ebfc0e9265a84182bd6a435cc9d7cbf3a7048747f056f821` |
| 13 | `def` | [toMorphismProperty](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/tomorphismproperty--de4eba5458d0a776f07d0730.md) | 197 | `declaration-track:de4eba5458d0a776f07d07302c81cbfc8ac3e99434597f761d2638fda5b64186` |
| 14 | `lemma` | [toMorphismProperty_respectsIso_iff](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/tomorphismproperty-respectsiso-iff--b11d3b35193ea0a0b0e52999.md) | 199 | `result-track:b11d3b35193ea0a0b0e5299945de3df8d8d59c49f3568f98ac848440c56fe686` |
| 15 | `lemma` | [RespectsIso.arrow_mk_iso_iff](../../../../mathematics/Algebra/RingHomProperties/Variant906233263de5afa8f979e8e390d0c6460878499c02ea607694295a9580bc50d9.lean/declarations/respectsiso-arrow-mk-iso-iff--9748778a7bcb552e2c4f2c5a.md) | 215 | `result-track:9748778a7bcb552e2c4f2c5a6dbd2aea5aeb1e9024c27084eae3072476afc38d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
