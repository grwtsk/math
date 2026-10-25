# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CantorNormalForm.Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "617745775dbff2cc60f740d5cab1a64bb40b2e1e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `617745775dbff2cc60f740d5cab1a64bb40b2e1e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Family` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CNFRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnfrec--e6cff97c7ef08d824400861b.md) | 42 | `declaration-track:e6cff97c7ef08d824400861be60f7737901f6c2085ecb7a4b5ab9d0054686a97` |
| 2 | `theorem` | [CNFRec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnfrec-zero--9c6ad6f1ec25cc25e637912f.md) | 49 | `result-track:9c6ad6f1ec25cc25e637912f64647c448b22181bba3b71476ee8864b0a85fe28` |
| 3 | `theorem` | [CNFRec_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnfrec-pos--74ec78af6af5aaec8416fe64.md) | 53 | `result-track:74ec78af6af5aaec8416fe64fbc7bcca9c0c9718de814da046273d89130e9ef8` |
| 4 | `def` | [CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf--85434b340e0d9d096e5f39d3.md) | 65 | `declaration-track:85434b340e0d9d096e5f39d3066b5144834c649e4458b599bac8bc573f42cb67` |
| 5 | `theorem` | [CNF_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-zero--2e03f5c577601bbc98aecbce.md) | 69 | `result-track:2e03f5c577601bbc98aecbce1820349b8ad6a1cfd65390bdd8f3e0ae22ee4a67` |
| 6 | `theorem` | [CNF_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-ne-zero--efe9c22c2e731348b2315a7d.md) | 73 | `result-track:efe9c22c2e731348b2315a7d77377bbad33729d7adaa57d7e439b8975da1363a` |
| 7 | `theorem` | [zero_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/zero-cnf--b09ed6668e3de66b3781c7dc.md) | 77 | `result-track:b09ed6668e3de66b3781c7dcd64a6a918c3687b8e28a9c8ad47b723cba15b4a9` |
| 8 | `theorem` | [one_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/one-cnf--a9f9ad431efc53a7e7d8da40.md) | 79 | `result-track:a9f9ad431efc53a7e7d8da400d2ce60326dabcf787725045b9bdc4b0d3632672` |
| 9 | `theorem` | [CNF_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-of-le-one--26022e786ade662b18e36347.md) | 81 | `result-track:26022e786ade662b18e363471b3c0598af86dc62ad27864cbffd680dbfa76286` |
| 10 | `theorem` | [CNF_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-of-lt--3fb4254f4e0d6d9cf7bb7fc2.md) | 85 | `result-track:3fb4254f4e0d6d9cf7bb7fc2939ff971be7668b1d8763468e1e211b26d70f0ae` |
| 11 | `theorem` | [CNF_foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-foldr--1c3e76f7c8d515ab11197228.md) | 89 | `result-track:1c3e76f7c8d515ab11197228848f83b3ae1cca24264c9041d030285996bb296a` |
| 12 | `theorem` | [CNF_fst_le_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-fst-le-log--2761f3634a585f62edcab37d.md) | 96 | `result-track:2761f3634a585f62edcab37def69d22d55024d0b531b012e1f28a527eafa4a71` |
| 13 | `theorem` | [CNF_lt_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-lt-snd--5f6cc3e8dd3ae3624ff25a33.md) | 106 | `result-track:5f6cc3e8dd3ae3624ff25a33a0d5b6ebca95eb6f8dcaf368fe24812c1284da86` |
| 14 | `theorem` | [CNF_snd_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-snd-lt--eac4327fdf5af610aedf9c64.md) | 114 | `result-track:eac4327fdf5af610aedf9c64d722080795c93105735bd5afacf25f2d0a8d2d41` |
| 15 | `theorem` | [CNF_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/declarations/cnf-sorted--3f1d507a43a7f649a941f74f.md) | 125 | `result-track:3f1d507a43a7f649a941f74f82eb3397fdae0dd80394fa94ffff079cb55cd11d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
