# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelabelNat.Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1e3e1dc57df37fd7c31ab45f796cf68c31e806b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1e3e1dc57df37fd7c31ab45f796cf68c31e806b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Inv1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/inv1--36f1dc708856e823293427df.md) | 37 | `declaration-track:36f1dc708856e823293427dfd2debcaf6ba5ec8d92927d71d4f9f10e24536324` |
| 2 | `theorem` | [Inv1.lt_of_get?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/inv1-lt-of-get-eq-some--2b4350624878b4bfce7a8828.md) | 41 | `result-track:2b4350624878b4bfce7a8828d8656ea15de567aac868954237672b2d7803fc1a` |
| 3 | `theorem` | [Inv1.property](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/inv1-property--fa18aea0a6d4a3b956cb5a2c.md) | 63 | `result-track:fa18aea0a6d4a3b956cb5a2c6dfcb05a8ad5a464a45eaf8e12888350dccda68c` |
| 4 | `inductive` | [Inv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/inv2--1573a0d08d202046521574db.md) | 100 | `declaration-track:1573a0d08d202046521574dba1dc0686ef1d5f4c44b3f27d56300f5f3967fc09` |
| 5 | `theorem` | [Inv2.upper_lt_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/inv2-upper-lt-size--869b156e53e3a870243490b7.md) | 111 | `result-track:869b156e53e3a870243490b7854ad29a79291898da431c86282e17e0d26ddf32` |
| 6 | `theorem` | [Inv2.property](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/inv2-property--9be0815b33276e8e6771508a.md) | 119 | `result-track:9be0815b33276e8e6771508a8d56e1f4456c37459be01385da5b235d8645fb4a` |
| 7 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/state--42be7689d9451106fb458e3a.md) | 170 | `declaration-track:42be7689d9451106fb458e3a839932d81ddafe06503d4de08c6b507e250e1933` |
| 8 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/empty--48bde2ff409fd3918284ddec.md) | 193 | `declaration-track:48bde2ff409fd3918284ddecdc853bd7b22ee428bc00ec6679c99911bf6ab6a4` |
| 9 | `def` | [addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/addatom--0ca9fc265c12a0ff473cb27c.md) | 199 | `declaration-track:0ca9fc265c12a0ff473cb27ca88cdd97ead559ef1b0a1bd88ec1a55a7353381c` |
| 10 | `def` | [addFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/addfalse--0c52566938730dcad183d6f4.md) | 229 | `declaration-track:0c52566938730dcad183d6f479cfc79292f0b3ffec26b052004298467e27bf65` |
| 11 | `def` | [addGate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/addgate--efd75d368e7a2ae2f9a3a590.md) | 242 | `declaration-track:efd75d368e7a2ae2f9a3a59061a2bef1a85f8769852ad902b71ddc0899f4ee59` |
| 12 | `def` | [ofAIGAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/ofaigaux--2f0ff9f993ca01d48422629a.md) | 255 | `declaration-track:2f0ff9f993ca01d48422629abab42b052cffec7b3d979c61a8d4261d5be4c3b2` |
| 13 | `def` | [ofAIG](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/ofaig--7a56bd8d4c312b72a3043a59.md) | 275 | `declaration-track:7a56bd8d4c312b72a3043a5943576fffbfaf75ae73999799d7770c1236d229d8` |
| 14 | `theorem` | [ofAIG.Inv1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/ofaig-inv1--58a0a45f0ddbfe59e0f41bcd.md) | 281 | `result-track:58a0a45f0ddbfe59e0f41bcdc5ac8db68c715735ce843c7707169e7eb8777669` |
| 15 | `theorem` | [ofAIG.Inv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/ofaig-inv2--fa66808ddf1809daa2632862.md) | 289 | `result-track:fa66808ddf1809daa2632862e5a4e3e2c4be9b76c8ea55ba55f493e9df10f9f8` |
| 16 | `theorem` | [ofAIG_find_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/ofaig-find-unique--6200f4be37f41de16bafe41e.md) | 296 | `result-track:6200f4be37f41de16bafe41e4a19075bb2297695a6864805e63765511994e173` |
| 17 | `theorem` | [ofAIG_find_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/ofaig-find-some--951944b15c7a57ddbc083505.md) | 305 | `result-track:951944b15c7a57ddbc083505956478dfc32fe35e1b478883570bc8a7cfd873f7` |
| 18 | `def` | [relabelNat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat--be9176c954376557dfedb9ad.md) | 318 | `declaration-track:be9176c954376557dfedb9ad57259680c609e1dd8840da79f3ebe4f316f9662d` |
| 19 | `def` | [relabelNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat--042a885d58e250320b106ded.md) | 331 | `declaration-track:042a885d58e250320b106ded76de6a54e3f48c5c2eefe3593ea97be0784ade2b` |
| 20 | `theorem` | [relabelNat'_fst_eq_relabelNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat-fst-eq-relabelnat--60fd1dca69bc5744e6540919.md) | 335 | `result-track:60fd1dca69bc5744e6540919d2a4f908105fa75c07335c29d745b91c3bec4323` |
| 21 | `theorem` | [relabelNat_size_eq_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat-size-eq-size--b971a58895b8a979f7ef2f1e.md) | 339 | `result-track:b971a58895b8a979f7ef2f1e2fe65caa8e4cecfd49e538918707c6c545cfa012` |
| 22 | `theorem` | [relabelNat_unsat_iff_of_NonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat-unsat-iff-of-nonempty--ab029b818bd1d775ad56a4c6.md) | 342 | `result-track:ab029b818bd1d775ad56a4c6b56da617b4016931ee5b7370e812f7289b99efa0` |
| 23 | `theorem` | [relabelNat_unsat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat-unsat-iff--fe80b65bb27e316e798b957c.md) | 367 | `result-track:fe80b65bb27e316e798b957c95d3cc4f86d78cb1242c22f0ebe945e38f660187` |
| 24 | `def` | [relabelNat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat--5e944f489be1531274857b87.md) | 375 | `declaration-track:5e944f489be1531274857b8701f59f871cc389daef1e6f812b0226e5b7cda9b4` |
| 25 | `def` | [relabelNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat--02e0c08a6d05388fbe06e8c7.md) | 389 | `declaration-track:02e0c08a6d05388fbe06e8c7adfee2654e3363cc434fe05277fd2b0c36a2d52d` |
| 26 | `theorem` | [relabelNat_unsat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/declarations/relabelnat-unsat-iff--32554bc79022a8ccae8ee690.md) | 398 | `result-track:32554bc79022a8ccae8ee69069d02854fe4058e6778cfe3edd070f42e29afa8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
