# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb2021723b128e75748f0c58e85674d52f3c640",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb2021723b128e75748f0c58e85674d52f3c640`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulAction.toPerm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/mulaction-toperm--e2d266a20756bfe09f28ac86.md) | 30 | `declaration-track:e2d266a20756bfe09f28ac860ea762644827dde5da9352751c693bfb015dfcb0` |
| 2 | `lemma` | [MulAction.toPerm_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/mulaction-toperm-injective--5a5248c68c648c2eba5f12ec.md) | 38 | `result-track:5a5248c68c648c2eba5f12eca36aa64608242c63e3ce5ca0543069a27b358bec` |
| 3 | `lemma` | [MulAction.bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/mulaction-bijective--3bb24feffb9e6aa3caeca657.md) | 43 | `result-track:3bb24feffb9e6aa3caeca6571147b55c09217453326b3012cdc51bc5cb0b0ec6` |
| 4 | `lemma` | [MulAction.injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/mulaction-injective--74ab550c019915fd406f8c41.md) | 47 | `result-track:74ab550c019915fd406f8c4170d46612275d2187e44444344c10f1644894656a` |
| 5 | `lemma` | [MulAction.surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/mulaction-surjective--f5629c2986fbc41f3d557a2c.md) | 51 | `result-track:f5629c2986fbc41f3d557a2c228d5c16183244b5669b17db80269f256e082b04` |
| 6 | `lemma` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-left-cancel--3b65bb1863e83d060e73551c.md) | 55 | `result-track:3b65bb1863e83d060e73551cb8a83c2f1ca8d6abcf9ad0d25d4e232b5d33d698` |
| 7 | `lemma` | [smul_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-left-cancel-iff--5b401a616ca8558f746cfa3f.md) | 58 | `result-track:5b401a616ca8558f746cfa3f44ee3100a17bd0b9077749972c68e8e4147c719b` |
| 8 | `lemma` | [smul_eq_iff_eq_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-eq-iff-eq-inv-smul--d8561b55e289aa59606e224c.md) | 62 | `result-track:d8561b55e289aa59606e224cb62cc113879ecbb629ea9cc456ee997d989adae2` |
| 9 | `lemma` | [invOf_smul_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/invof-smul-smul--9efa7b91587b1d54434c3f2e.md) | 70 | `result-track:9efa7b91587b1d54434c3f2eb21612f57c181139c401747103e7d7598039429c` |
| 10 | `lemma` | [smul_invOf_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-invof-smul--2ad69868a7abce1c25b8f276.md) | 71 | `result-track:2ad69868a7abce1c25b8f276a8c8339f7945054edc489b230f0a0cc522c3c43b` |
| 11 | `lemma` | [invOf_smul_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/invof-smul-eq-iff--f7d182941ca1669fab3f1af5.md) | 75 | `result-track:f7d182941ca1669fab3f1af5c7186441464b7e46b16ccdde99eb154ead22e646` |
| 12 | `lemma` | [smul_eq_iff_eq_invOf_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-eq-iff-eq-invof-smul--29193a754ae8943c7b8988c4.md) | 77 | `result-track:29193a754ae8943c7b8988c4ba10a083e26407c4c15f97dcfda39a06baae9245` |
| 13 | `def` | [arrowAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/arrowaction--c1ba2a30c1f5586ec280d5f3.md) | 89 | `declaration-track:c1ba2a30c1f5586ec280d5f31f45abe30d062f8ac8f994594622d15a97f237c5` |
| 14 | `def` | [arrowMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/arrowmuldistribmulaction--a45f28e2de66596ad1878e9e.md) | 103 | `declaration-track:a45f28e2de66596ad1878e9e2e6aab6f54359dee204202d6a5c48bcef62d422c` |
| 15 | `theorem` | [smul_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-bijective--bd45f34625dee8ad8f8416bb.md) | 113 | `result-track:bd45f34625dee8ad8f8416bb647f0fecbb25567c73d587f5e8a2c4650e893eb1` |
| 16 | `lemma` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-left-cancel--2fa85bd97d6959322227a81a.md) | 125 | `result-track:2fa85bd97d6959322227a81afb605bfe14682026968dd66a491ea201f7dc6c6d` |
| 17 | `lemma` | [isUnit_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/isunit-smul-iff--921f85b210a4a26d4975cada.md) | 134 | `result-track:921f85b210a4a26d4975cada5ff2cd477d881d09da26feb86d56b6939c31f7de` |
| 18 | `def` | [toFun](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/tofun--dcc215c321a4c409bdd8a0e7.md) | 146 | `declaration-track:dcc215c321a4c409bdd8a0e778411cc016b5c6296931c78e8d037bac81314fa8` |
| 19 | `lemma` | [toFun_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/tofun-apply--9a0a063af4f4995c5d4db39c.md) | 150 | `result-track:9a0a063af4f4995c5d4db39c6a062400cc5deb7e75a7264488953ccab120142f` |
| 20 | `abbrev` | [Function.Injective.mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/function-injective-muldistribmulaction--a83ca08721540a8ce1564895.md) | 160 | `declaration-track:a83ca08721540a8ce15648950ed20b950c1a501daacd5b9592f53d7cacbe1fa9` |
| 21 | `abbrev` | [Function.Surjective.mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/function-surjective-muldistribmulaction--60e587a7550d2ba127d462d4.md) | 169 | `declaration-track:60e587a7550d2ba127d462d4f084732f0e9077c9af14eea9268de56b66e6b503` |
| 22 | `def` | [MulDistribMulAction.toMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/muldistribmulaction-tomonoidhom--55b27db98a335d10ccb45c4b.md) | 177 | `declaration-track:55b27db98a335d10ccb45c4bec35002e3ceadf4e30aab2409180f943a47ba7ad` |
| 23 | `lemma` | [smul_pow'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-pow--c507f61fd16e7c43337473a2.md) | 182 | `result-track:c507f61fd16e7c43337473a2d9febbaecdb85c5c884a36f4db8c5efa7f7490fa` |
| 24 | `def` | [MulDistribMulAction.toMonoidEnd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/muldistribmulaction-tomonoidend--ea67e23553e84b6afd8a9caf.md) | 188 | `declaration-track:ea67e23553e84b6afd8a9cafe4868445d36b1163441b2f7027eca6f2cd6c56e7` |
| 25 | `lemma` | [smul_inv'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-inv--eb56c6dfda8116f68fff41aa.md) | 198 | `result-track:eb56c6dfda8116f68fff41aaea58ec389de6358d267e1b09f6f0f7b287e00954` |
| 26 | `lemma` | [smul_div'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/declarations/smul-div--ab58762762ebf83de169f660.md) | 201 | `result-track:ab58762762ebf83de169f66088d17fa8fc7560475b89518ea252e5f86e0a61fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
