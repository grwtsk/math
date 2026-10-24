# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a2de29d29f0f362a1d668f14437dda8818572dc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a2de29d29f0f362a1d668f14437dda8818572dc`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.unaryCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/nat-unarycast--78ceb2d13dca3df79039bee9.md) | 38 | `declaration-track:78ceb2d13dca3df79039bee9d1978d2d9b93ea8747827db40afbb7013b04aa4e` |
| 2 | `class` | [Nat.AtLeastTwo](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/nat-atleasttwo--133ec3cc80a9f3ecf7c5c2bf.md) | 52 | `declaration-track:133ec3cc80a9f3ecf7c5c2bf580c9bc583237810b685e04c74a8cebe27b5adb7` |
| 3 | `instance` | [instNatAtLeastTwo](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/instnatatleasttwo--e917e0c1e3bcd34296c7d8b1.md) | 55 | `declaration-track:e917e0c1e3bcd34296c7d8b1ec6e4e03c9f2d34d815ee6825daa6f8c625d38e6` |
| 4 | `instance` | [instOfNat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/instofnat--c9748b2e54b5f425ec23fb1f.md) | 63 | `declaration-track:c9748b2e54b5f425ec23fb1f596b5c0af4bac632b9d0b7892607eba50734da03` |
| 5 | `theorem` | [Nat.cast_ofNat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/nat-cast-ofnat--1b54b4201ad71d69a0f4c1e5.md) | 66 | `result-track:1b54b4201ad71d69a0f4c1e5a68ecb721185a07f394e44bedf27a311d72b51fb` |
| 6 | `theorem` | [Nat.cast_eq_ofNat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/nat-cast-eq-ofnat--4bee84299f1cd0e17caeedc9.md) | 69 | `result-track:4bee84299f1cd0e17caeedc940c8c39a882878860c59ee4182e43dbcb115399f` |
| 7 | `class` | [AddMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/addmonoidwithone--6a493144ca1a563e864894e0.md) | 75 | `declaration-track:6a493144ca1a563e864894e0348cd6e36d6fab465d99652aad03715b82ef4a93` |
| 8 | `class` | [AddCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/addcommmonoidwithone--5e00e840a955cabb6d744ca8.md) | 89 | `declaration-track:5e00e840a955cabb6d744ca8c205ab19e016d03fde35b0aa86c40411e8dfa80c` |
| 9 | `theorem` | [cast_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-zero--e712f5a3b2aef2f901feac62.md) | 114 | `result-track:e712f5a3b2aef2f901feac62cea2a839d60cb4db852d5714d1790f63c38d7b35` |
| 10 | `theorem` | [cast_succ](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-succ--ddd931d4bc5ee91610588890.md) | 122 | `result-track:ddd931d4bc5ee91610588890830f3ec21049dab00b69940ebb10245436911297` |
| 11 | `theorem` | [cast_add_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-add-one--e7668d5b2f505e04e6e06fa4.md) | 126 | `result-track:e7668d5b2f505e04e6e06fa41d41151b12fc3073e4a710a5c3346fcfd323e230` |
| 12 | `theorem` | [cast_ite](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-ite--d02ee54231f93aa34b2ffe6c.md) | 131 | `result-track:d02ee54231f93aa34b2ffe6ca04742c104de1ecf45de20769d748b03a97fa6eb` |
| 13 | `theorem` | [cast_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-one--ed9ecd60c124742a542771c0.md) | 141 | `result-track:ed9ecd60c124742a542771c0b2700ef03facfc5f6e8a2db8182e0e9190501944` |
| 14 | `theorem` | [cast_add](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-add--6087078a75ce6816fe4e6dd9.md) | 146 | `result-track:6087078a75ce6816fe4e6dd980dfc4d4554f66bf481c488574cb6ea5ec0869ae` |
| 15 | `def` | [binCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/bincast--da4f0da91fa685d3c41f7357.md) | 151 | `declaration-track:da4f0da91fa685d3c41f7357f90fe494f5a24417cd293b21bd31d01921d2686b` |
| 16 | `theorem` | [binCast_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/bincast-eq--dba83f0a40e7bf4343a21f9c.md) | 160 | `result-track:dba83f0a40e7bf4343a21f9ccb900873313750f21b00efd041e832d0218d79d7` |
| 17 | `theorem` | [cast_bit0](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-bit0--246a528dd805df4d306b07f9.md) | 182 | `result-track:246a528dd805df4d306b07f9c18af7d59022002d6b194590efc7548fc7cab0f6` |
| 18 | `theorem` | [cast_bit1](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-bit1--981103caee8e87e8d5580f15.md) | 187 | `result-track:981103caee8e87e8d5580f15f42141b44faa9e2eb8084ccd13bdf71ff95e262c` |
| 19 | `theorem` | [cast_two](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/cast-two--83316e25bb4db2c9a0cb2f6e.md) | 193 | `result-track:83316e25bb4db2c9a0cb2f6ebbbe887fb73ae6f181fa4377a11803956dd044a2` |
| 20 | `def` | [AddMonoidWithOne.unary](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/addmonoidwithone-unary--439d0f55f6d3ce24815cec61.md) | 202 | `declaration-track:439d0f55f6d3ce24815cec6167420b5919b0ddcc7c5834dba24d3cf80bbd5838` |
| 21 | `def` | [AddMonoidWithOne.binary](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/addmonoidwithone-binary--4c2252696f9b0c0add9f332d.md) | 208 | `declaration-track:4c2252696f9b0c0add9f332d89116a5062875e423e4c2d6db1ae8fd0f684ef44` |
| 22 | `lemma` | [natCast_ne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/natcast-ne--e9c5573eee4d9668037f0c0a.md) | 220 | `result-track:e9c5573eee4d9668037f0c0a6139de53c05ecc83d1975cbc988166a332ccc8c1` |
| 23 | `lemma` | [of_neZero_natCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/of-nezero-natcast--7353507d01d2cf62491f5882.md) | 224 | `result-track:7353507d01d2cf62491f588232b57cf372a3c3cabf1c0538804bb603bd50fcab` |
| 24 | `lemma` | [pos_of_neZero_natCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/pos-of-nezero-natcast--de113083cb67addca7a40807.md) | 228 | `result-track:de113083cb67addca7a4080792e82358f44280f98bc25e682a2d2d52e8c3f198` |
| 25 | `theorem` | [one_add_one_eq_two](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/one-add-one-eq-two--0f10a62b7b1f7c748ac56aab.md) | 234 | `result-track:0f10a62b7b1f7c748ac56aabaa5d7d5db3fb8c3444e6d338420f7beb731f88c6` |
| 26 | `theorem` | [two_add_one_eq_three](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/two-add-one-eq-three--1d9595520fe95713c5810036.md) | 240 | `result-track:1d9595520fe95713c5810036e02ecad1c8d1ebc2bf6f67e628594bbdd31e1001` |
| 27 | `theorem` | [three_add_one_eq_four](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant9acd7ba7bcddadbd35de97f07a0b65194cf869c01b2b141aaececbe83cf43c45.lean/declarations/three-add-one-eq-four--ebc5dadf0ece577ab7e2032c.md) | 245 | `result-track:ebc5dadf0ece577ab7e2032cdfbf62dae0d1a41eb77aedc6ed88ebd62c6a02e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
