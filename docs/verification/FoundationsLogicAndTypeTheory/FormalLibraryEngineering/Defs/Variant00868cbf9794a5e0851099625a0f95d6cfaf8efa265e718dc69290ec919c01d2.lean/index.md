# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d46dd28d5567fbb92824213ea26a8cc598e87de3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d46dd28d5567fbb92824213ea26a8cc598e87de3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CharZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/charzero--f09bd52112132a7786419f9c.md) | 42 | `declaration-track:f09bd52112132a7786419f9c4da9c43896294ed396bae653db10c9beb8229234` |
| 2 | `theorem` | [charZero_of_inj_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/charzero-of-inj-zero--015cf83e6cac6e1d0d9ebeb7.md) | 48 | `result-track:015cf83e6cac6e1d0d9ebeb74ccf84e7a2c2113029124943ec8646fc34523f92` |
| 3 | `theorem` | [cast_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-injective--3446aa6f7a73e06928188e9b.md) | 67 | `result-track:3446aa6f7a73e06928188e9bf2ab71cc777d2a63517ac533764f1ee0a65cf309` |
| 4 | `theorem` | [cast_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-inj--a272313c105c9ad275f760ee.md) | 72 | `result-track:a272313c105c9ad275f760ee8371d72a82663049a6ba9a858570ffb29caec75c` |
| 5 | `theorem` | [cast_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-eq-zero--0baa2fa9ff75c7b65a8ef13d.md) | 77 | `result-track:0baa2fa9ff75c7b65a8ef13d295c4efa325bcac38c848fef4bacfa7673d683d1` |
| 6 | `theorem` | [cast_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-ne-zero--d61075663e88f85a5868bd5c.md) | 81 | `result-track:d61075663e88f85a5868bd5c81495ef96728c80f9bb147b5e0d403ab446f214d` |
| 7 | `theorem` | [cast_add_one_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-add-one-ne-zero--e3f549d77641584ed6d6326f.md) | 85 | `result-track:e3f549d77641584ed6d6326f5ae05065779acd8e86d03dc2d6c50e97d5cf8c0c` |
| 8 | `theorem` | [cast_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-eq-one--1998453aad29c98eedcf11f5.md) | 92 | `result-track:1998453aad29c98eedcf11f59bd77867316cbb74a5fb7809f242d942c2934ad1` |
| 9 | `theorem` | [cast_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/cast-ne-one--5b3860fffa716c60fa4504e9.md) | 96 | `result-track:5b3860fffa716c60fa4504e90075eb12abb576256bdf31377a2bd2eea25b159a` |
| 10 | `lemma` | [ofNat_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/ofnat-ne-zero--3f9ff34d2e2867312b5c4144.md) | 106 | `result-track:3f9ff34d2e2867312b5c41445bb5870f9810aee920d02fc07478ad6cacc49196` |
| 11 | `lemma` | [zero_ne_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/zero-ne-ofnat--9a9cf48c5037b774a345ba3d.md) | 109 | `result-track:9a9cf48c5037b774a345ba3d32468f885da5a91b62e50522da080379756d4c5e` |
| 12 | `lemma` | [ofNat_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/ofnat-ne-one--ab58c45a9ce15b1a7304731c.md) | 112 | `result-track:ab58c45a9ce15b1a7304731c31e8b21fa41652bcb538bee19fb0c517ff0ce6bb` |
| 13 | `lemma` | [one_ne_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/one-ne-ofnat--ed695e474e6d9ae7dc818763.md) | 116 | `result-track:ed695e474e6d9ae7dc8187633457b579ab9716b5f8d9e44774b9a9c5eb39868a` |
| 14 | `lemma` | [ofNat_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/ofnat-eq-ofnat--5bde3dc9b553e372cf3d68aa.md) | 119 | `result-track:5bde3dc9b553e372cf3d68aa7e3998e485002693a36a7a62751f93a82355243e` |
| 15 | `instance` | [charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/charzero--04ad10e7b620701475e68538.md) | 127 | `declaration-track:04ad10e7b620701475e6853885daf58a4c6b8db7b7ec269b1d3caa134803bc50` |
| 16 | `instance` | [charZero_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant00868cbf9794a5e0851099625a0f95d6cfaf8efa265e718dc69290ec919c01d2.lean/declarations/charzero-ofnat--eb8f9885994f9d3e05a1fa94.md) | 131 | `declaration-track:eb8f9885994f9d3e05a1fa945815c09e2caa58fe531bb57635bdca4520f2809d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
