# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b654c4e5fe07d1654358a83e4c34230ec7a797",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b654c4e5fe07d1654358a83e4c34230ec7a797`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.OfNat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/instnontrivial--573f8c602fdbb3961b5e920f.md) | 28 | `declaration-track:573f8c602fdbb3961b5e920f1d6fb6619e7d325818564a3ce7b480fd76294e8a` |
| 2 | `lemma` | [ofNat_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/ofnat-injective--696f60bfa9ccde96ed55b9a4.md) | 30 | `result-track:696f60bfa9ccde96ed55b9a4e90c04a53faaf568c83ac527215ab604d0556cfa` |
| 3 | `lemma` | [inductionOn'_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/inductionon-add-one--d9fc38095e9506e7ad366522.md) | 39 | `result-track:d9fc38095e9506e7ad366522ffc22f5fab632306db9033350eff5a1754f208f3` |
| 4 | `lemma` | [strongRec_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/strongrec-of-ge--82f14bbea72057935a1fcb0d.md) | 55 | `result-track:82f14bbea72057935a1fcb0d52088318b157eafb4fe8f7ffd3ee0e6a3be28476` |
| 5 | `lemma` | [natAbs_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/natabs-surjective--8b59d45e27fa0b93f23c6d7e.md) | 72 | `result-track:8b59d45e27fa0b93f23c6d7eb97981616ff6acb49776a79f95367a05d5edab15` |
| 6 | `lemma` | [pow_right_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/pow-right-injective--1a1b078df2c10146d66db044.md) | 74 | `result-track:1a1b078df2c10146d66db0441f0a6c57894cfcca673a2a5fc7fda0a10da2a6d7` |
| 7 | `lemma` | [natCast_dvd_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/natcast-dvd-natcast--b4d931eb00377a2392b8b50f.md) | 81 | `result-track:b4d931eb00377a2392b8b50f86a1460de1be311bde39b667484acc21ef7fa707` |
| 8 | `theorem` | [ofNat_dvd_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/ofnat-dvd-natcast--0d9c9c67078e3d381c53329b.md) | 94 | `result-track:0d9c9c67078e3d381c53329b5f6b9831cd203e3270202740ae22d29af8b49af2` |
| 9 | `theorem` | [natCast_dvd_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/natcast-dvd-ofnat--1c06d16e7f1f5b776a358f76.md) | 97 | `result-track:1c06d16e7f1f5b776a358f76b6ae58d5ae96cbd47b4fba938da9885a99c182d3` |
| 10 | `lemma` | [natCast_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/natcast-dvd--4725824bc009a79d6e5e0953.md) | 100 | `result-track:4725824bc009a79d6e5e0953499d5b985622037558e1cc4e40804d5fdc1796cf` |
| 11 | `lemma` | [dvd_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/dvd-natcast--ca0bca298ef6e4fa5b7e8c83.md) | 103 | `result-track:ca0bca298ef6e4fa5b7e8c83eafcf8308fc4b70ebf43b4b49c492a74c04b1caa` |
| 12 | `lemma` | [eq_zero_of_dvd_of_nonneg_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/eq-zero-of-dvd-of-nonneg-of-lt--9ca387bfc650bcd99b1a31bc.md) | 106 | `result-track:9ca387bfc650bcd99b1a31bc98678d60845a66cd27c2ea796d8e1e1aa7bb8c4b` |
| 13 | `lemma` | [eq_of_mod_eq_of_natAbs_sub_lt_natAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/eq-of-mod-eq-of-natabs-sub-lt-natabs--c12366d7d0cd687a5e4b12cd.md) | 110 | `result-track:c12366d7d0cd687a5e4b12cdce1346226a01e7ef9607fb134fbfdeb6912ec7fd` |
| 14 | `lemma` | [natAbs_le_of_dvd_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant238398ce9eb00b395dd54edc424de03a5bb58f4b4f27b9b4cf7cb390f4928e9d.lean/declarations/natabs-le-of-dvd-ne-zero--1a4c7d623447720f6aebd755.md) | 114 | `result-track:1a4c7d623447720f6aebd7552aa2530db7acbfbd47e143f134f88db8638aac27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
