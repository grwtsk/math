# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b171e6334c5a724645c05e9d1d0bec59fa079f64",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b171e6334c5a724645c05e9d1d0bec59fa079f64`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Frontend` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_lt_mul_left_of_pos_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/mul-lt-mul-left-of-pos-of-lt--3fb77825f10c33a7f9f422ee.md) | 102 | `result-track:3fb77825f10c33a7f9f422ee57bd362f151b486a06bdc9d196e648eb91102fd5` |
| 2 | `lemma` | [mul_lt_mul_right_of_pos_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/mul-lt-mul-right-of-pos-of-lt--8a8605c9191097f7556b01ea.md) | 106 | `result-track:8a8605c9191097f7556b01ea15cd1fea95b0e33c36ebca6b6c9eb5163ff2c71f` |
| 3 | `lemma` | [Nat.cast_pos_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/nat-cast-pos-of-pos--b4cd20a6b7d524646e91bd4e.md) | 110 | `result-track:b4cd20a6b7d524646e91bd4e0de4c09cad2463c1f9b26ca5ae4c560beeabb293` |
| 4 | `lemma` | [Nat.one_le_cast_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/nat-one-le-cast-of-le--0a8b4318268e4dcc5144ccb8.md) | 114 | `result-track:0a8b4318268e4dcc5144ccb8bada41a5f9a4b8b864b3ec888138b765864a0aad` |
| 5 | `lemma` | [le_max_of_le_left_or_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/le-max-of-le-left-or-le-right--d89db910b1fd267b99a8793d.md) | 168 | `result-track:d89db910b1fd267b99a8793d54cdbc28730046d201490375343375d6b3aad2a6` |
| 6 | `lemma` | [lt_max_of_lt_left_or_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/lt-max-of-lt-left-or-lt-right--fa85de97aa5d61b09572b9d3.md) | 169 | `result-track:fa85de97aa5d61b09572b9d3004dee8a55e6a3ee16f9e56251229c15a5f23a11` |
| 7 | `lemma` | [min_le_of_left_le_or_right_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/min-le-of-left-le-or-right-le--90b5891a9f635f0ca7d10eed.md) | 170 | `result-track:90b5891a9f635f0ca7d10eed53ce0efcc6fd73249a9505880aa11960ec0f78d5` |
| 8 | `lemma` | [min_lt_of_left_lt_or_right_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/min-lt-of-left-lt-or-right-lt--9eecbb97ec36a7ea3ecaadc1.md) | 171 | `result-track:9eecbb97ec36a7ea3ecaadc1c8ac2d352049dbd1ac22b324cad60f7d75ce8578` |
| 9 | `def` | [boundNormNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/boundnormnum--4133e3495820e3863cd30cd7.md) | 191 | `declaration-track:4133e3495820e3863cd30cd7d5e2043bace3226a4ff3ed086994d2c47c7867ae` |
| 10 | `def` | [boundLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/boundlinarith--3590f491c29e8a72bba57933.md) | 200 | `declaration-track:3590f491c29e8a72bba579337dd25a97cb5fb4227aa7ff4eef8523bdf431b466` |
| 11 | `def` | [boundConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/boundconfig--7de78c237f8b6ad54a2b932c.md) | 211 | `declaration-track:7de78c237f8b6ad54a2b932c941860e61b04da7efd837e0378ffa1546056f4d5` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/syntax--88ee72956eecbd74c7305975.md) | 247 | `declaration-track:88ee72956eecbd74c7305975a26ac10fc320ba09da97389c99d48440737a3839` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/elab-rules--836266f11fcf0ed6b06e2bf0.md) | 250 | `declaration-track:836266f11fcf0ed6b06e2bf03970bd773d4fcd52f64380c311727acbd0ea8a52` |
| 14 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/declarations/macro-rules--39e3a57994e12089eb1fca1f.md) | 256 | `declaration-track:39e3a57994e12089eb1fca1f974327e496b83c9dceb329b8d0d7fd3a1e20dc92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
