# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Enum.Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b344bd925339acaeca18748fcbb97f94a0929524",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b344bd925339acaeca18748fcbb97f94a0929524`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord--99fec9246e4a6cbca925ddab.md) | 38 | `declaration-track:99fec9246e4a6cbca925ddab9c0a49b04570b63d1b4c10bbf6279796d0a04627` |
| 2 | `theorem` | [enumOrd_le_of_forall_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-le-of-forall-lt--a1afa8a3fa386bddec56efbb.md) | 44 | `result-track:a1afa8a3fa386bddec56efbb93472f03cbb870ebb9b73bdef9484f6fd024403d` |
| 3 | `theorem` | [enumOrd_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-nonempty--01955e8531decc2beef35136.md) | 49 | `result-track:01955e8531decc2beef351367ad579f7f48d12e3b471cfa14998067df20073fb` |
| 4 | `theorem` | [enumOrd_mem_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-mem-aux--4e666b0f82d47e6b63b4f04c.md) | 56 | `result-track:4e666b0f82d47e6b63b4f04cbd2df7b7e034076333c6c24fba85751e5c1f1a0a` |
| 5 | `theorem` | [enumOrd_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-mem--8c861308664b2e06e9c18467.md) | 61 | `result-track:8c861308664b2e06e9c18467c502037af504740998d984d009f9d98d4ca6167f` |
| 6 | `theorem` | [enumOrd_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-strictmono--01cbb3f89384586483193d5e.md) | 64 | `result-track:01cbb3f89384586483193d5e9f85d8705da30129421b6c3bc3e25f72b46b3065` |
| 7 | `theorem` | [enumOrd_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-injective--9f44b72eedaa219fa696243b.md) | 67 | `result-track:9f44b72eedaa219fa696243b34c4f103f7789cf60c06af07ff3476a1869b8954` |
| 8 | `theorem` | [enumOrd_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-inj--77acbce0d877d1da09072bb9.md) | 70 | `result-track:77acbce0d877d1da09072bb91ee9cf9a45d6c9bf76966551e57ca16253f240fe` |
| 9 | `theorem` | [enumOrd_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-le-enumord--c882e6e26d27bef5f298978b.md) | 73 | `result-track:c882e6e26d27bef5f298978b1dcfdb368d4ad609f8a2da4fb102f4dcd5803bb2` |
| 10 | `theorem` | [enumOrd_lt_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-lt-enumord--f263651383c08a132d714aba.md) | 77 | `result-track:f263651383c08a132d714aba3b79709da430f2b325fb0c446a4c4f8f1d179cae` |
| 11 | `theorem` | [id_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/id-le-enumord--fac99fe60aed0095beb7521d.md) | 81 | `result-track:fac99fe60aed0095beb7521d5ac2ba555e0d9c942dbf2151811e27e0fbb38d3c` |
| 12 | `theorem` | [le_enumOrd_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/le-enumord-self--bcd45a7bacff429c0032bd89.md) | 84 | `result-track:bcd45a7bacff429c0032bd895432f6a6108008921caac05c9cba4c84249a3a0a` |
| 13 | `theorem` | [enumOrd_succ_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-succ-le--eb61d82338ddf642b2cd63c0.md) | 87 | `result-track:eb61d82338ddf642b2cd63c0390e89090338039b7fbdacd1cf24651e5626dd9e` |
| 14 | `theorem` | [range_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/range-enumord--271fdf8192e90bb59ac5be1a.md) | 94 | `result-track:271fdf8192e90bb59ac5be1a9ccbf13ae4450f9690742db115ad9440f4dc85ea` |
| 15 | `theorem` | [enumOrd_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-surjective--52d18647d8ef01f2261c9b16.md) | 107 | `result-track:52d18647d8ef01f2261c9b1637625ed3439610628cb93b357324103af704f906` |
| 16 | `theorem` | [enumOrd_le_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-le-of-subset--3f64f5f7bf705cdfef1972d5.md) | 111 | `result-track:3f64f5f7bf705cdfef1972d5708212203d890c07108f90cefc2e05962a580036` |
| 17 | `theorem` | [eq_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/eq-enumord--5ae2482afd2a8830d6ea66cc.md) | 120 | `result-track:5ae2482afd2a8830d6ea66ccbabc084230b413f7d3d2894693004c801c5dfaed` |
| 18 | `theorem` | [enumOrd_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-range--93b7bf279f9919aafdbbda61.md) | 128 | `result-track:93b7bf279f9919aafdbbda61c64e8d601110adfbcc7573fe5853831e03784cf2` |
| 19 | `theorem` | [isNormal_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/isnormal-enumord--785889590d3798963a9a4db5.md) | 133 | `result-track:785889590d3798963a9a4db5c4ddfa1e13438f3d2c68a9006b4abe2084541838` |
| 20 | `theorem` | [enumOrd_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-univ--96596fc10a56116b7f7aa10a.md) | 146 | `result-track:96596fc10a56116b7f7aa10af3a1227ce814426b88a14e0cd93f34c3bf408ca8` |
| 21 | `lemma` | [enumOrd_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumord-zero--d24e07366f141a86ba0b5cfc.md) | 150 | `result-track:d24e07366f141a86ba0b5cfcd8abf34ab2a761ed062352725ba06326e3482e89` |
| 22 | `def` | [enumOrdOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant7d092375b37eb2191e8de61b9e77477af77107cf607521bb2f840a60e7489ebd.lean/declarations/enumordorderiso--c5091f465e265262ce843776.md) | 153 | `declaration-track:c5091f465e265262ce843776eb05b7fdb54ec57e68d12c2fe78c7e70f585473d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
