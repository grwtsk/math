# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e73019858dc6ee70a0c71d86f6b99dfbb7833f03",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e73019858dc6ee70a0c71d86f6b99dfbb7833f03`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Bitwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_natCast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/le-natcast-sub--9e7237ebedf8488016c2c136.md) | 31 | `result-track:9e7237ebedf8488016c2c136058937f06c693840d7f40967e928101211847fdb` |
| 2 | `theorem` | [succ_natCast_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/succ-natcast-pos--13e0967c1369667e9e30da52.md) | 39 | `result-track:13e0967c1369667e9e30da524498bd7e07720e68ebce0dda87202cc7d1a19b27` |
| 3 | `theorem` | [natAbs_eq_iff_sq_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-eq-iff-sq-eq--1810f3cefc18789e9fb7efe8.md) | 45 | `result-track:1810f3cefc18789e9fb7efe862ad69fd690b3d688b69e3cd6e40f8707137c873` |
| 4 | `theorem` | [natAbs_lt_iff_sq_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-lt-iff-sq-lt--4a92b6ea509bf89441d72617.md) | 49 | `result-track:4a92b6ea509bf89441d726177da77588a6ee65985a3c1faefff39207ef18afa4` |
| 5 | `theorem` | [natAbs_le_iff_sq_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-le-iff-sq-le--ed238c95323b291c20e88d7b.md) | 53 | `result-track:ed238c95323b291c20e88d7b0aea1c39ae09f314446b696bb807cabc6c1fc917` |
| 6 | `theorem` | [natAbs_inj_of_nonneg_of_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-inj-of-nonneg-of-nonneg--db00abd5665b80cb60ba9c9d.md) | 57 | `result-track:db00abd5665b80cb60ba9c9defd719a4d2c5305fa7f7c4b51ba42f4055072cd4` |
| 7 | `theorem` | [natAbs_inj_of_nonpos_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-inj-of-nonpos-of-nonpos--0f4354ccf177f461058aec48.md) | 60 | `result-track:0f4354ccf177f461058aec48fb5b0e193ab6008b53046548354c4e09f28e0130` |
| 8 | `theorem` | [natAbs_inj_of_nonneg_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-inj-of-nonneg-of-nonpos--d4173358dd0e1ca3706da906.md) | 65 | `result-track:d4173358dd0e1ca3706da906a6a0a0f21d63f76c73ae7908c8c68ff46c1b0cb4` |
| 9 | `theorem` | [natAbs_inj_of_nonpos_of_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-inj-of-nonpos-of-nonneg--c49bb17405b81a8d29b13a3e.md) | 69 | `result-track:c49bb17405b81a8d29b13a3e2272d3eb608d664baa3ac57bd08a25dad353c28a` |
| 10 | `theorem` | [natAbs_coe_sub_coe_le_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-coe-sub-coe-le-of-le--1a39a831b0e65f8c3c33297a.md) | 75 | `result-track:1a39a831b0e65f8c3c33297a19deee9cf90f56973eae38d35f7f4f5d767ee669` |
| 11 | `theorem` | [natAbs_coe_sub_coe_lt_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/natabs-coe-sub-coe-lt-of-lt--660caf725fc65725b072066e.md) | 83 | `result-track:660caf725fc65725b072066e5402288064b598fc41951b7f723f7b651269550d` |
| 12 | `theorem` | [strictMonoOn_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/strictmonoon-natabs--44a3c14d407f9d56747f8de4.md) | 93 | `result-track:44a3c14d407f9d56747f8de43b169170d3f70e0f803adf7a615f626b9f20a478` |
| 13 | `theorem` | [strictAntiOn_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/strictantion-natabs--3a54587722f389c575776067.md) | 96 | `result-track:3a54587722f389c5757760673d76c8564bb0a2d48765ce0956fb27612c08bb6f` |
| 14 | `theorem` | [injOn_natAbs_Ici](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/injon-natabs-ici--d8a6a74c236727cf3bc4927a.md) | 100 | `result-track:d8a6a74c236727cf3bc4927a4fd189809625d628bb4ed8db07e0526fbaf4b54a` |
| 15 | `theorem` | [injOn_natAbs_Iic](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/injon-natabs-iic--6442ba2644eb723324e400bc.md) | 103 | `result-track:6442ba2644eb723324e400bcda064a5c3ef2c8927a52e57558091d96fb8f2a06` |
| 16 | `theorem` | [div2_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/div2-bit--e85dbc247221acf415673409.md) | 114 | `result-track:e85dbc247221acf415673409aacde1fb4f39dcb370bb7e1e27343bcdf032e500` |
| 17 | `theorem` | [ediv_emod_unique''](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1c7c68593bdbb158655c8c89c587178f0d56212f8e99cb57c24a9cedc44a0200.lean/declarations/ediv-emod-unique--313ab44361eae69b67f3cbe1.md) | 123 | `result-track:313ab44361eae69b67f3cbe10bbc8ea70b7aa4adc6abf347d7932f3db56db861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
