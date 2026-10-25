# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3badb5328bee522c961574b467354ded7ca7884d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3badb5328bee522c961574b467354ded7ca7884d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Bool` — import line 1; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_toNat_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/eq-of-tonat-eq--c6b4fb5914f8c2ae18f0a076.md) | 10 | `result-track:c6b4fb5914f8c2ae18f0a07603dc54437482d9200701ad44a9ed4ef2e94bd9c5` |
| 2 | `theorem` | [toNat_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-eq--edb56c70eb6f0d0e0c53f33f.md) | 13 | `result-track:edb56c70eb6f0d0e0c53f33fa77f6d2775dbadbcfa12acd3f34952761311b7a1` |
| 3 | `theorem` | [testBit_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/testbit-tonat--91ae779f3148be2505b4d54e.md) | 16 | `result-track:91ae779f3148be2505b4d54ecfce2617a93da0c54c3b5c58b5d67c93c1fcb48f` |
| 4 | `theorem` | [getLsb_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/getlsb-ge--043032afc58e29bf203baf95.md) | 18 | `result-track:043032afc58e29bf203baf950ce2b49f5ed3b8d8bf42dd38feac9292f7c99c0a` |
| 5 | `theorem` | [eq_of_getLsb_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/eq-of-getlsb-eq--934288885163b96612aa26ae.md) | 24 | `result-track:934288885163b96612aa26ae1ba02b11f630fdb810ea5a70ae8a8a07bd2cbd61` |
| 6 | `theorem` | [eq_of_getMsb_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/eq-of-getmsb-eq--50ac9ce9fd129556c1c9d489.md) | 35 | `result-track:50ac9ce9fd129556c1c9d489f5224d39e683b31c87afbbf963f7ab20b0abe04a` |
| 7 | `theorem` | [toNat_ofBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-ofbool--e8dbce21d09c6a1565c23dad.md) | 54 | `result-track:e8dbce21d09c6a1565c23dad749f125332259df36ca35dd1a796a16707305e20` |
| 8 | `theorem` | [toNat_ofFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-offin--7d93954f22d9ecfd99f758ac.md) | 57 | `result-track:7d93954f22d9ecfd99f758ac2a0fd3f25b5a6dc6dda34d5555190858dbab6cae` |
| 9 | `theorem` | [toNat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-ofnat--54b96d3caad8f8a167b5b3e2.md) | 59 | `result-track:54b96d3caad8f8a167b5b3e2b2e71bc640a2812caf66d8e336e12f4cc850e13f` |
| 10 | `theorem` | [toNat_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-zero--5913c5873724747f34541a80.md) | 62 | `result-track:5913c5873724747f34541a80ab53186919bde3aa18211390aecfd70d12d1fd36` |
| 11 | `theorem` | [lt_two_pow_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/lt-two-pow-of-le--c8023268db5422d987aa5408.md) | 64 | `result-track:c8023268db5422d987aa5408e3e0548bea803d9537f16652e3dc001e822d6bc2` |
| 12 | `theorem` | [ofNat_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/ofnat-tonat--5b6c176fff3a674089608dd2.md) | 67 | `result-track:5b6c176fff3a674089608dd22f8cef69902db7ac38e29826c5633cd320360f64` |
| 13 | `theorem` | [toNat_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-append--bb9ced562882496d5654f73e.md) | 78 | `result-track:bb9ced562882496d5654f73e05d09cd3411ad475417f00aa0f8cfba445712240` |
| 14 | `theorem` | [toNat_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-cast--ae847fab864a20490ca6b094.md) | 81 | `result-track:ae847fab864a20490ca6b0941195f43d5cbfa4cb3ac8b7d7aefe9745165f3285` |
| 15 | `theorem` | [toNat_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-cons--2f1ae47407d7c02ede9504a5.md) | 83 | `result-track:2f1ae47407d7c02ede9504a5ecb3fc9f00c23d150bef9b7b38df2a8eb4299d76` |
| 16 | `theorem` | [getLsb_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/getlsb-cons--79ea8cc903769a4f0b79d1da.md) | 89 | `result-track:79ea8cc903769a4f0b79d1da84a3c8ec5189ae2ca76494a9aeeea357cf3f100f` |
| 17 | `theorem` | [toNat_zeroExtend'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-zeroextend--dac3f849b7263d2e7214afa3.md) | 106 | `result-track:dac3f849b7263d2e7214afa3b58b7c3f1ee0888604369dcbf53f018485fbedff` |
| 18 | `theorem` | [toNat_zeroExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-zeroextend--70797744af5bbbd3106ec7c5.md) | 111 | `result-track:70797744af5bbbd3106ec7c5e76749a1038ab0496c8253d20fd13d7ae260e607` |
| 19 | `theorem` | [zeroExtend_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/zeroextend-eq--f017961625658e6c64cd7a63.md) | 121 | `result-track:f017961625658e6c64cd7a631c7675c203cfb9b73cf29c5bdc5bba1b8306b4df` |
| 20 | `theorem` | [zeroExtend_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/zeroextend-zero--3ff950eb6589db99ccd4220f.md) | 126 | `result-track:3ff950eb6589db99ccd4220f6be447cc5b7a908d86cb41548237347ec4bdbf9c` |
| 21 | `theorem` | [truncate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/truncate-eq--c7b3bf61f233f7d8ea9ac253.md) | 130 | `result-track:c7b3bf61f233f7d8ea9ac253f81d0a4310191cd452d4bf8455365a4650e63567` |
| 22 | `theorem` | [toNat_truncate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-truncate--45966e9a55c8016e1fc6ff4d.md) | 132 | `result-track:45966e9a55c8016e1fc6ff4df38c510309112691b8ceabbe36fae681436b539b` |
| 23 | `theorem` | [getLsb_zeroExtend'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/getlsb-zeroextend--ea103431b7527c36484ef3da.md) | 135 | `result-track:ea103431b7527c36484ef3daec1c00635d74c145e0100cd32f04e3a6e9e16948` |
| 24 | `theorem` | [getLsb_zeroExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/getlsb-zeroextend--15e83c46df8bb2249080dda5.md) | 139 | `result-track:15e83c46df8bb2249080dda58829a90ba4b7a027ecf51f8cede09c01c60d80c0` |
| 25 | `theorem` | [getLsb_truncate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/getlsb-truncate--41183004c266eed64437f1ec.md) | 143 | `result-track:41183004c266eed64437f1ecbc330569ff0ccdf23523610873478030823cbaa2` |
| 26 | `theorem` | [truncate_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/truncate-succ--20b2894381a15ca2d9ce2b09.md) | 147 | `result-track:20b2894381a15ca2d9ce2b0993e352897591ae2ef61d92a9ee352a332a3a51d3` |
| 27 | `theorem` | [toNat_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/tonat-add--74d421d6fb4dccc8a037a655.md) | 163 | `result-track:74d421d6fb4dccc8a037a655015864edc5148f8583242f197ff369c1d5cc1f59` |
| 28 | `theorem` | [add_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/declarations/add-zero--bd5c3b267519e5f011f6dc37.md) | 165 | `result-track:bd5c3b267519e5f011f6dc37850a663eee5d94f01f384e35122b000d209d37a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
