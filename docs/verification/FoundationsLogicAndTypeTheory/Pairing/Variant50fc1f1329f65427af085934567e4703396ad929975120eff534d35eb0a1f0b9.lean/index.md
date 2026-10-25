# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pairing.Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35bdf1153a83875cae296d4dbb872c184aaa92cd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35bdf1153a83875cae296d4dbb872c184aaa92cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair--c3839c20866c027dd01ff966.md) | 46 | `declaration-track:c3839c20866c027dd01ff9668d27aae930aa3b7001469efb670c0bd1e1c28756` |
| 2 | `def` | [unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair--1fe21403fd7a32afe0b6df9a.md) | 51 | `declaration-track:1fe21403fd7a32afe0b6df9a9a6f209f2d4922b8c0edfcee2b99d46d910a0eb3` |
| 3 | `theorem` | [pair_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair-unpair--9f3e8d5629465cad1f5fb985.md) | 56 | `result-track:9f3e8d5629465cad1f5fb9856456abd03da74a0eaa9a2e975342f86daa13ab4a` |
| 4 | `theorem` | [pair_eq_of_unpair_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair-eq-of-unpair-eq--e37b4780fdf24e5502802ec4.md) | 65 | `result-track:e37b4780fdf24e5502802ec416eb80e808d9a112016192a8341d279e2bb08ae0` |
| 5 | `theorem` | [unpair_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair-pair--613823797bcd705663f29733.md) | 69 | `result-track:613823797bcd705663f29733ddd047f8db16d0353993da38c09a0735127587eb` |
| 6 | `def` | [pairEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pairequiv--28416d95079a983b852ddf55.md) | 82 | `declaration-track:28416d95079a983b852ddf55b8d5e7aa636f8f60bed295a76aa33ac4d242bfd4` |
| 7 | `theorem` | [surjective_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/surjective-unpair--f6e4a5a12a567d9b2e375128.md) | 85 | `result-track:f6e4a5a12a567d9b2e37512839d63abfd0de4f1455109695d4aebcd8859cbbec` |
| 8 | `theorem` | [pair_eq_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair-eq-pair--a55b6b54d8df0b5e34f0972f.md) | 89 | `result-track:a55b6b54d8df0b5e34f0972fdae8e316eb9a38bd54463d5bd9595dbc17255850` |
| 9 | `theorem` | [unpair_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair-lt--b4fb6a1ea37869a008719bf8.md) | 92 | `result-track:b4fb6a1ea37869a008719bf8969150471b1ef3dd0e199f67ea1eacef7b68cd48` |
| 10 | `theorem` | [unpair_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair-zero--a1904846ea00deec95ef2b98.md) | 102 | `result-track:a1904846ea00deec95ef2b986fbb124777cba7d493e0408ac10f442436ccce41` |
| 11 | `theorem` | [unpair_left_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair-left-le--39bea6adc31dba851d873a53.md) | 106 | `result-track:39bea6adc31dba851d873a53add54d8bcbb73fff013734ae7d2574e57d4ea8b1` |
| 12 | `theorem` | [left_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/left-le-pair--42cf49b89dd374ea48b3b0f5.md) | 110 | `result-track:42cf49b89dd374ea48b3b0f5649cf105e5a0396ef6db2033d157a1afdb976550` |
| 13 | `theorem` | [right_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/right-le-pair--b4cfbd66b873639a4928ea2a.md) | 112 | `result-track:b4cfbd66b873639a4928ea2aed4883949fdc95e141dddb115327b9f4618ec6b3` |
| 14 | `theorem` | [unpair_right_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair-right-le--c7875c777e2a89d9b12ce203.md) | 117 | `result-track:c7875c777e2a89d9b12ce203bda4f28bbae4de8ac394bade17b01565f6e921ed` |
| 15 | `theorem` | [pair_lt_pair_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair-lt-pair-left--54905e4318369af1580eadb0.md) | 120 | `result-track:54905e4318369af1580eadb052ac772769d0dc2ec3992bbbae5f13b4b83fe0a4` |
| 16 | `theorem` | [pair_lt_pair_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair-lt-pair-right--10ab2dde634123a4e6e03e3b.md) | 134 | `result-track:10ab2dde634123a4e6e03e3b5eb6dd199c1da5d53df6574c045125bb6996b937` |
| 17 | `theorem` | [pair_lt_max_add_one_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/pair-lt-max-add-one-sq--a69f3aa8940762b7b89e41bf.md) | 144 | `result-track:a69f3aa8940762b7b89e41bfa375ced2a98a10ee57a2eafa55abe10ff91bfbfa` |
| 18 | `theorem` | [max_sq_add_min_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/max-sq-add-min-le-pair--0238da7cab2e9a42bbf6dbf7.md) | 148 | `result-track:0238da7cab2e9a42bbf6dbf7a94ebb80467be962319bb7a45805d6c11428f8a8` |
| 19 | `theorem` | [add_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/add-le-pair--bd149940e929826d1b3303a8.md) | 156 | `result-track:bd149940e929826d1b3303a8ec41b7e9fc0d70907b0fc1257c100cd6ed796c94` |
| 20 | `theorem` | [unpair_add_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/unpair-add-le--977fcdac5ba308f2482b5a75.md) | 163 | `result-track:977fcdac5ba308f2482b5a75452f0c190730727e2782baddf60815db0eba8814` |
| 21 | `theorem` | [iSup_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/isup-unpair--4b14df27a3999ac1bed427db.md) | 173 | `result-track:4b14df27a3999ac1bed427db5f9444e79f24529988bff0500ade8e1c81fcc415` |
| 22 | `theorem` | [iUnion_unpair_prod](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/iunion-unpair-prod--0b93e2979dfb23e48d4f7760.md) | 181 | `result-track:0b93e2979dfb23e48d4f77607f3a0d13dad5f855a6c77cfbea766c33e4ced3c1` |
| 23 | `theorem` | [iUnion_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/iunion-unpair--dd036a7e21baa980750c89c3.md) | 186 | `result-track:dd036a7e21baa980750c89c30fe0b8685f982a05f44824a8acd47e1f39cde91f` |
| 24 | `theorem` | [iInter_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/declarations/iinter-unpair--ea1e907cf0bd04d51bc3472a.md) | 190 | `result-track:ea1e907cf0bd04d51bc3472adec82f3afef42b670adbf341b48cf7fd0f8f4840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
