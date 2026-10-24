# Verification target: GRWTSK.Algebra.Exactness.Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3062c321422175572253670a12866265db3a0d34",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3062c321422175572253670a12866265db3a0d34`.

Source path: `GRWTSK/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Functoriality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Filtration` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapPreimageDelta](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/mappreimagedelta--3e3da37f91f01b3fd0f3e1f9.md) | 54 | `declaration-track:3e3da37f91f01b3fd0f3e1f911f7b74e634c6d427b16422dc3352f8820cee3a6` |
| 2 | `def` | [mapPreimage](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/mappreimage--06871b5856d0b45cf94f408a.md) | 64 | `declaration-track:06871b5856d0b45cf94f408ae980475b742c504a592fccec36a2ff96a267b9d9` |
| 3 | `theorem` | [map_surjective](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/map-surjective--82dea34df039814788f503b5.md) | 76 | `result-track:82dea34df039814788f503b52f74b942025f1b40f7eb526b83e5be31fc0ebd07` |
| 4 | `theorem` | [map_injective](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/map-injective--2dff117fb762189f46cc574e.md) | 98 | `result-track:2dff117fb762189f46cc574eb76c30311d49f1eb4c9cd2f6d3b072ea057b9d51` |
| 5 | `def` | [mapExactAuxDelta](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/mapexactauxdelta--a2b194e7813cc365042fdd72.md) | 130 | `declaration-track:a2b194e7813cc365042fdd72e635bc33eb0841025195eaace81c3780ed25bec4` |
| 6 | `def` | [mapExactAux](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/mapexactaux--1f3630de90ab64a660037ec1.md) | 159 | `declaration-track:1f3630de90ab64a660037ec1114e5e0c4314208438165a5974f037e9ccdd005e` |
| 7 | `theorem` | [map_exact](../../../../mathematics/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/declarations/map-exact--b2727de68ddaf6154c6bb9e1.md) | 190 | `result-track:b2727de68ddaf6154c6bb9e16a5284f72dcaf021d8653abaadbb8453fee6cbba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
