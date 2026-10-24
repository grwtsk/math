# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59584a5d38b43a83878ce151bf326a29e32fccbe",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59584a5d38b43a83878ce151bf326a29e32fccbe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.DependsOn` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pi.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-empty--3b833c6cee2dc867160cf52e.md) | 34 | `declaration-track:3b833c6cee2dc867160cf52ee47f287327e61e2dd444f54abd72aa9ce180081a` |
| 2 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi--1b93a93e567a9d46ce918c7b.md) | 46 | `declaration-track:1b93a93e567a9d46ce918c7bcfb6cae4b407332a693641d33a7c1d36fd1bcbd5` |
| 3 | `theorem` | [pi_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-val--0f126d4bf7eaef0daa4b4eed.md) | 50 | `result-track:0f126d4bf7eaef0daa4b4eed25a774ca52284d8213457e19b7b0212c59b9a2c8` |
| 4 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/mem-pi--c5abb0e1d766d12e257b6e61.md) | 54 | `result-track:c5abb0e1d766d12e257b6e61d269e6c87305ae28861eac1ccb169c275fbdc13b` |
| 5 | `def` | [Pi.cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-cons--fd3f9756e4117f63519c6aaa.md) | 62 | `declaration-track:fd3f9756e4117f63519c6aaaa5006904db5b89f286f8d83658f2de9e85105768` |
| 6 | `theorem` | [Pi.cons_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-cons-same--63ecf83bc66b389752419622.md) | 67 | `result-track:63ecf83bc66b3897524196228a68c9f5ae0debd2e61b9abbe85afc217c84a27f` |
| 7 | `theorem` | [Pi.cons_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-cons-ne--0211aaceaf13aa816bf0003c.md) | 71 | `result-track:0211aaceaf13aa816bf0003c7e6c59571a88e00e203526d243de984a485e6ffb` |
| 8 | `theorem` | [Pi.cons_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-cons-injective--e85177f659146593cb0c9db3.md) | 75 | `result-track:e85177f659146593cb0c9db350d5790635e47a1e201febfd08e36dd7e7b9072a` |
| 9 | `theorem` | [pi_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-empty--4cb6f7c64175cbf04328da48.md) | 87 | `result-track:4cb6f7c64175cbf04328da4865a029176c19a9bbe59cbf22b225ae6d76836d5c` |
| 10 | `lemma` | [pi_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-nonempty--56292a720f0f5901ffe3313f.md) | 91 | `result-track:56292a720f0f5901ffe3313f06fbb79bf44a8d6ebaf5cf1d216e4731c8a49fd1` |
| 11 | `lemma` | [pi_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-eq-empty--8af9b00cbeddf54f3b2a3e63.md) | 98 | `result-track:8af9b00cbeddf54f3b2a3e63dc240c408c11ff5ee6358c80c5b1d403df623a66` |
| 12 | `theorem` | [pi_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-insert--f24398b93a95e3828ff2636d.md) | 102 | `result-track:f24398b93a95e3828ff2636da77137c8ec3bc477914c4f1d0a477abca27a71ae` |
| 13 | `theorem` | [pi_singletons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-singletons--ebd177d68d30393f7bf836df.md) | 120 | `result-track:ebd177d68d30393f7bf836df75c21252c339f399a6fe0a21f269a3d96bf01272` |
| 14 | `theorem` | [pi_const_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-const-singleton--b42958a1525c117e642ebf2b.md) | 130 | `result-track:b42958a1525c117e642ebf2b2764dfa96f7eacb1652b09617f5258c2f3826334` |
| 15 | `theorem` | [pi_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-subset--cc5ce881c8a047466816c918.md) | 134 | `result-track:cc5ce881c8a047466816c91800a66b43855e6f349b64f27f64b2601b6243326f` |
| 16 | `theorem` | [pi_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pi-disjoint-of-disjoint--2d5a34da9448ce12177bc168.md) | 137 | `result-track:2d5a34da9448ce12177bc16844569d85aafb67cd7b6631bbd24cc856cdbc6ca0` |
| 17 | `def` | [piDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/pidiag--59c76a8d7b27959641be5d93.md) | 151 | `declaration-track:59c76a8d7b27959641be5d93a0a779c0f8ae108df6559abded77bf272728812e` |
| 18 | `lemma` | [mem_piDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/mem-pidiag--008429e8a4b510abdd2f9044.md) | 153 | `result-track:008429e8a4b510abdd2f9044d2f0075f38ca8367792740a2a635dd1a47e39816` |
| 19 | `lemma` | [card_piDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/card-pidiag--d0ce0fb7a7f2b273877dfaa7.md) | 155 | `result-track:d0ce0fb7a7f2b273877dfaa7872a84c7f63e097dea11f7de486a2e2c1db6580b` |
| 20 | `def` | [restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict--883595d0f493a585f1f1b6e1.md) | 164 | `declaration-track:883595d0f493a585f1f1b6e1f3859afcd27254cf2a6129e0d69076809c24207c` |
| 21 | `theorem` | [restrict_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict-def--5c38c682a9714d80beca364a.md) | 166 | `result-track:5c38c682a9714d80beca364a0bf546b58a0c9436a6167b6821b8a7b6a932ecda` |
| 22 | `theorem` | [_root_.Set.piCongrLeft_comp_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/root-set-picongrleft-comp-restrict--8fdda207fc06ff45ed0a6f94.md) | 170 | `result-track:8fdda207fc06ff45ed0a6f94e9c0008293f75fe94733c7ded65183470df4e881` |
| 23 | `theorem` | [piCongrLeft_comp_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/picongrleft-comp-restrict--f55f167647681f72e0c18a50.md) | 173 | `result-track:f55f167647681f72e0c18a50aa3b93f19a48252a18a30a99863e86330c524678` |
| 24 | `def` | [restrict₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict--7d73a27f09398175162bb044.md) | 179 | `declaration-track:7d73a27f09398175162bb044648870795571412d335f079c2b0d9f4ddc41266a` |
| 25 | `theorem` | [restrict₂_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict-def--b35d8be7ea4ccbd8a8bb5a85.md) | 181 | `result-track:b35d8be7ea4ccbd8a8bb5a85e60fe13d3f2d54449be9e10c22b60aa5f49eb536` |
| 26 | `theorem` | [restrict₂_comp_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict-comp-restrict--9e8e934c4e66c0d7b5d9d3df.md) | 183 | `result-track:9e8e934c4e66c0d7b5d9d3df7d0fb6ccccd36b502859a924c29eaaf88932cfc3` |
| 27 | `theorem` | [restrict₂_comp_restrict₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict-comp-restrict--583f2d9a3fa6d64d47a3e137.md) | 186 | `result-track:583f2d9a3fa6d64d47a3e1371ae343541ed34867b7f39441c578382152a6b26b` |
| 28 | `lemma` | [dependsOn_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/dependson-restrict--18ac8a3a1f48642ab010fcaa.md) | 189 | `result-track:18ac8a3a1f48642ab010fcaa08506e3a04c8c795329a1a755354239f5d76414e` |
| 29 | `lemma` | [restrict_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict-preimage--70b5afb63098eb7882975c09.md) | 192 | `result-track:70b5afb63098eb7882975c090374ccd22005ce9bafe9fb0d5dc1a69adc48168c` |
| 30 | `lemma` | [restrict₂_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.lean/declarations/restrict-preimage--3a91daf051662cfbe0a38bbf.md) | 202 | `result-track:3a91daf051662cfbe0a38bbf416527c6cec88f85fb6dc277bac282a8664a00f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
