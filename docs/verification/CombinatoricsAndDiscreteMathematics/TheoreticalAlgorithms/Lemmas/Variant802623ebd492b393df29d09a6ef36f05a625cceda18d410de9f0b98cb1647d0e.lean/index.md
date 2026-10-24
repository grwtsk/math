# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f9f577bd019f9053f1aa5611907303ae5c72d21",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f9f577bd019f9053f1aa5611907303ae5c72d21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.BitVec.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.Fin.OfBits` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Data.Int` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toNat_ofFnLEAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/tonat-offnleaux--249fd5456ec0a95f3f979ef3.md) | 22 | `result-track:249fd5456ec0a95f3f979ef3f8b9f1c5add13933af14622e154ba36638cf9d07` |
| 2 | `theorem` | [toFin_ofFnLEAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/tofin-offnleaux--103684ad5c5d418232e98ffc.md) | 33 | `result-track:103684ad5c5d418232e98ffcd0fe998c0d34e9c01e302204967b5c4b16788432` |
| 3 | `theorem` | [toNat_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/tonat-offnle--bda0ec7aca61a1771596153d.md) | 37 | `result-track:bda0ec7aca61a1771596153d0a70437754dee0ecc501afd2637772e6ce1a6df7` |
| 4 | `theorem` | [toFin_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/tofin-offnle--d6583185c8a5695e04848a07.md) | 40 | `result-track:d6583185c8a5695e04848a0728b8e2dce7d3aa47408438989a04e63c29c7cc6e` |
| 5 | `theorem` | [toInt_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/toint-offnle--7bf67e839139be03f7fc1cab.md) | 43 | `result-track:7bf67e839139be03f7fc1caba3a24696bff5484edebbc3c27704fedc14a92ba2` |
| 6 | `theorem` | [getElem_ofFnLEAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getelem-offnleaux--6aa98e4c0bf46f5327f141c4.md) | 46 | `result-track:6aa98e4c0bf46f5327f141c4efbdf5c05568ae7d64941a865d2268170bddf48f` |
| 7 | `theorem` | [getElem_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getelem-offnle--ee761543c8d42e9520048fe0.md) | 60 | `result-track:ee761543c8d42e9520048fe02663ea9be4a692916fa2cda474093da1e00f919f` |
| 8 | `theorem` | [getLsb'_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getlsb-offnle--92c58ad1e248120446a046b6.md) | 63 | `result-track:92c58ad1e248120446a046b65eef37324d3b64c04e2601092336c0b489f21bb9` |
| 9 | `theorem` | [getLsbD_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getlsbd-offnle--1451e1e5c5b0d60a954dab5b.md) | 65 | `result-track:1451e1e5c5b0d60a954dab5b4ee38341835d3f3f2e752df2483eeef6e265f6ec` |
| 10 | `theorem` | [getMsb'_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getmsb-offnle--e25c352b3ba0113b81415249.md) | 71 | `result-track:e25c352b3ba0113b814152498f7760808f8684120e1fe37588b54f48c0dfd584` |
| 11 | `theorem` | [getMsbD_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getmsbd-offnle--c0d774ae27fa16146012e285.md) | 74 | `result-track:c0d774ae27fa16146012e285be7efd3ff47d0f1d9ceeccc0a681a4d82e84c5e7` |
| 12 | `theorem` | [msb_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/msb-offnle--f4febff50d34403ca7e54c1e.md) | 83 | `result-track:f4febff50d34403ca7e54c1e328801008e6b03344e1a0cf20f29a2f261dfa731` |
| 13 | `theorem` | [toNat_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/tonat-offnbe--c787beddf258370fc4c1f62d.md) | 87 | `result-track:c787beddf258370fc4c1f62de4775f429761601fb2a45d0563164e03904b7a40` |
| 14 | `theorem` | [toFin_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/tofin-offnbe--db62dbbe32e61f12d52b8e53.md) | 90 | `result-track:db62dbbe32e61f12d52b8e530c00bd7f91b38f45bbaf4af39aa0ecb0a111f810` |
| 15 | `theorem` | [toInt_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/toint-offnbe--0f96e6504dceedf32d96375c.md) | 93 | `result-track:0f96e6504dceedf32d96375c3172cd024c91aee86f6b95716cff786ecef10571` |
| 16 | `theorem` | [getElem_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getelem-offnbe--5953b525f85fd920de514492.md) | 96 | `result-track:5953b525f85fd920de514492519b18cbfc83ba617a8c2d2f36fa26cc7dbf4eaa` |
| 17 | `theorem` | [getLsb'_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getlsb-offnbe--fdf7ac5b1a07b97ec84866b2.md) | 99 | `result-track:fdf7ac5b1a07b97ec84866b2291f1be0bb45a890181e3fa0fbad69198a328bf0` |
| 18 | `theorem` | [getLsbD_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getlsbd-offnbe--01793ba768e37982683797bb.md) | 102 | `result-track:01793ba768e37982683797bbb1e23fc881e6405150fa850a60e6ab03a2c0f380` |
| 19 | `theorem` | [getMsb'_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getmsb-offnbe--d11bd9cd01a9cd50f936acc6.md) | 106 | `result-track:d11bd9cd01a9cd50f936acc63933452d1ff6a2a2eeb6efa9f21dbcc20b082682` |
| 20 | `theorem` | [getMsbD_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/getmsbd-offnbe--adfef5ea4a53d166eff4f5d7.md) | 109 | `result-track:adfef5ea4a53d166eff4f5d7e2a1e2179f0e233af49af8053ae1fde83cf83afc` |
| 21 | `theorem` | [msb_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant802623ebd492b393df29d09a6ef36f05a625cceda18d410de9f0b98cb1647d0e.lean/declarations/msb-offnbe--2b65047462bd14fc3db57271.md) | 113 | `result-track:2b65047462bd14fc3db5727158030d7f2f59b4c142c5cc7bede0436f1abe0fe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
