# Verification target: GRWTSK.Algebra.GroupTheory.Abs.Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d34a1b16aa34ad61d8e5d1338243f20d42e45a2e",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d34a1b16aa34ad61d8e5d1338243f20d42e45a2e`.

Source path: `GRWTSK/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Even` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs--19009b65bc92d788b5ac6c5e.md) | 41 | `declaration-track:19009b65bc92d788b5ac6c5e663e77bdde20d535236af21603035f647fb71190` |
| 2 | `def` | [mabs.unexpander](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-unexpander--44f07eb5865dab1c88a26d9a.md) | 52 | `declaration-track:44f07eb5865dab1c88a26d9a751807ba0adbcd871862b978760e0c6870fc4466` |
| 3 | `def` | [abs.unexpander](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/abs-unexpander--b07aa295e3e3995a70d940ca.md) | 62 | `declaration-track:b07aa295e3e3995a70d940ca54f25bbabac6dd64d629b0c7087857fbeb82b950` |
| 4 | `lemma` | [mabs_le'](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-le--55d9e104bbb871d15ad414a2.md) | 69 | `result-track:55d9e104bbb871d15ad414a2717c18f2929236b2d99cef098415ebade05bc14a` |
| 5 | `lemma` | [le_mabs_self](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/le-mabs-self--39f117486d6c67789b1b54d7.md) | 71 | `result-track:39f117486d6c67789b1b54d7f9136d14d7b3cccb9b70466ed59625375626f0e9` |
| 6 | `lemma` | [inv_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/inv-le-mabs--dd50762341f4e32c0073d008.md) | 73 | `result-track:dd50762341f4e32c0073d00830abdc492486ca981eafe3a3bbb9f8b56c04214d` |
| 7 | `lemma` | [mabs_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-le-mabs--88991ef577428b2c956873d9.md) | 75 | `result-track:88991ef577428b2c956873d9577b88066634109bb921c0fbdb3ae80f7451b72f` |
| 8 | `lemma` | [mabs_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-inv--c74a3c9bc28161ddb53841d8.md) | 78 | `result-track:c74a3c9bc28161ddb53841d80b4a152d3ba23e831901205c088437aa4f9b2847` |
| 9 | `lemma` | [mabs_div_comm](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-div-comm--7cd768abe2b8b4187d56fb82.md) | 80 | `result-track:7cd768abe2b8b4187d56fb82ea057e4ad5ea5daba2befd56134040eaf3a65d67` |
| 10 | `lemma` | [mabs_ite](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-ite--912fbd4837c7aa5158fba12e.md) | 82 | `result-track:912fbd4837c7aa5158fba12ef318334591a7744a5a04e51fb83b0d34395de215` |
| 11 | `lemma` | [mabs_dite](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-dite--29feb48b682208c50aa16370.md) | 86 | `result-track:29feb48b682208c50aa16370b71c3383ef5933b279eb436dde77cb18e3d3f12f` |
| 12 | `lemma` | [mabs_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-of-one-le--2c9618ae845f91a03752caa7.md) | 92 | `result-track:2c9618ae845f91a03752caa765ac112ab53e54166b2b9245dabf37be7d1d63e6` |
| 13 | `lemma` | [mabs_of_one_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-of-one-lt--03cc054152867c7a19740d7a.md) | 95 | `result-track:03cc054152867c7a19740d7a7c41838e29507414028995e50a04f6204437f223` |
| 14 | `lemma` | [mabs_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-of-le-one--e707f99e4486cb96178414e3.md) | 97 | `result-track:e707f99e4486cb96178414e38c137b6e85cb8cd6d86a9b054cd14a6637a823cf` |
| 15 | `lemma` | [mabs_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-of-lt-one--4272d100713ee19fd94b3caa.md) | 100 | `result-track:4272d100713ee19fd94b3caa14b73d3011a1674325476961e3fdcb7ed9b49094` |
| 16 | `lemma` | [mabs_le_mabs_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-le-mabs-of-one-le--cb49aa1e0038167b548b2719.md) | 102 | `result-track:cb49aa1e0038167b548b2719724e79763d228e9e7cc51f4ff452e181537b72dc` |
| 17 | `lemma` | [mabs_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-one--2e1e32a6d34ce66dab04c4a4.md) | 107 | `result-track:2e1e32a6d34ce66dab04c4a4810dc04c2d037c5641f8a9092e9b8b394f7c10ab` |
| 18 | `lemma` | [one_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/one-le-mabs--4109f3afd5f7792432081e27.md) | 111 | `result-track:4109f3afd5f7792432081e2729658a81dcfa507e642e47da81197eecb71ecb7a` |
| 19 | `lemma` | [mabs_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-mabs--63bb498fa6620748c68651f1.md) | 116 | `result-track:63bb498fa6620748c68651f17afa88197393065621ac7e3755ec3d4bb2851872` |
| 20 | `lemma` | [mabs_mul_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-mul-le--09b4fb5106dd6cff3b8d4223.md) | 127 | `result-track:09b4fb5106dd6cff3b8d4223ec292d338b26158a316f266c4fd909b83cfc4eea` |
| 21 | `lemma` | [mabs_mabs_div_mabs_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-mabs-div-mabs-le--f0484da8d06583cc1b266560.md) | 134 | `result-track:f0484da8d06583cc1b266560f073cd1b213a609419e60df1bdc15164fb387d34` |
| 22 | `lemma` | [sup_div_inf_eq_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/sup-div-inf-eq-mabs-div--24e5506c04b190427b93acad.md) | 144 | `result-track:24e5506c04b190427b93acad402f25582464d3fac5dad7515717b16b3792701a` |
| 23 | `lemma` | [sup_sq_eq_mul_mul_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/sup-sq-eq-mul-mul-mabs-div--c2329c91a030fb514a101d09.md) | 150 | `result-track:c2329c91a030fb514a101d095f676bd3b29d5c11c26651d844d61b896dfe8735` |
| 24 | `lemma` | [inf_sq_eq_mul_div_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/inf-sq-eq-mul-div-mabs-div--dc29a2b5a62e093669edbdbf.md) | 155 | `result-track:dc29a2b5a62e093669edbdbf8cbc0fba08784eb2fecf0c1c8636bad8bba14ceb` |
| 25 | `lemma` | [mabs_div_sup_mul_mabs_div_inf](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-div-sup-mul-mabs-div-inf--4bd95dae8f2f5a38661213dd.md) | 162 | `result-track:4bd95dae8f2f5a38661213dd649fca947d58a24e35c7ef06a1e7c0d72222f976` |
| 26 | `lemma` | [mabs_sup_div_sup_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-sup-div-sup-le-mabs--73aab8595fc1ba7a52888eca.md) | 181 | `result-track:73aab8595fc1ba7a52888ecae317183f0766f9b2b05b95bc88cafaba16a09274` |
| 27 | `lemma` | [mabs_inf_div_inf_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-inf-div-inf-le-mabs--ba3596d8cb062b1b5f413faa.md) | 184 | `result-track:ba3596d8cb062b1b5f413faad7e8d75995daf38bcab338a874dbef7f1dad5ca5` |
| 28 | `lemma` | [m_Birkhoff_inequalities](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/m-birkhoff-inequalities--5888ce985c237689df6d9b50.md) | 190 | `result-track:5888ce985c237689df6d9b5061f6b0d1cfdd56ff8da176281669272378f649c6` |
| 29 | `lemma` | [mabs_choice](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-choice--0d04043d4963aa54e4afdbd2.md) | 200 | `result-track:0d04043d4963aa54e4afdbd28bc6d8d79f3284d1512aadce79853036e1befc0d` |
| 30 | `lemma` | [le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/le-mabs--a3bdb8f98382b0c33047ae16.md) | 202 | `result-track:a3bdb8f98382b0c33047ae16552f8557c30c92ea310ab585d1b630f155219563` |
| 31 | `lemma` | [mabs_eq_max_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-eq-max-inv--ddf6171232ec31ffdc90b9b4.md) | 204 | `result-track:ddf6171232ec31ffdc90b9b4270991bbf0bdfffe1ff40fceb29b0c4a0a1544c6` |
| 32 | `lemma` | [lt_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/lt-mabs--fd7ca9d77de5237ae4a0b461.md) | 206 | `result-track:fd7ca9d77de5237ae4a0b461c16f0f47382af7c13310be9c70f028ebd8cb1adf` |
| 33 | `lemma` | [mabs_by_cases](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-by-cases--20c42f9034ba53209803a1ff.md) | 208 | `result-track:20c42f9034ba53209803a1ffe874db076cd28c723c56c3aff86c5e221e5d70e1` |
| 34 | `lemma` | [eq_or_eq_inv_of_mabs_eq](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/eq-or-eq-inv-of-mabs-eq--14e48970289f50a5e25eaa49.md) | 211 | `result-track:14e48970289f50a5e25eaa490ffb1f70d994e59bce36cec5711ef6b42021a9e9` |
| 35 | `lemma` | [mabs_eq_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-eq-mabs--76cd33a027a1ecf8c109356c.md) | 214 | `result-track:76cd33a027a1ecf8c109356cf7dd0621fbc1d72c036a905ed9530620fd70d9f1` |
| 36 | `lemma` | [isSquare_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/issquare-mabs--57105154c2d1a8cdbdf6371b.md) | 219 | `result-track:57105154c2d1a8cdbdf6371b029fc37455986a95ba5b6621a95bb76d51431258` |
| 37 | `lemma` | [lt_of_mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/lt-of-mabs-lt--4c4d68ae0e8dbb54ae8d49b4.md) | 222 | `result-track:4c4d68ae0e8dbb54ae8d49b4b3ec46884f52b02fb228fee726cf94c72fadc468` |
| 38 | `lemma` | [one_lt_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/one-lt-mabs--d1ed380eac6ac8978ee2c9dd.md) | 226 | `result-track:d1ed380eac6ac8978ee2c9dd226a5d2f3718dd86080e51be6b1481d36ea1953b` |
| 39 | `lemma` | [one_lt_mabs_pos_of_one_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/one-lt-mabs-pos-of-one-lt--122901461bcf7fbb9a79e39e.md) | 232 | `result-track:122901461bcf7fbb9a79e39ee92d47a824ea538765c287d7b2393839d1ba7f64` |
| 40 | `lemma` | [one_lt_mabs_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/one-lt-mabs-of-lt-one--b196e99250645d66c785912a.md) | 235 | `result-track:b196e99250645d66c785912a9ab69dc907bec0b5cb5e37541a99683d7de86721` |
| 41 | `lemma` | [inv_mabs_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/inv-mabs-le--819a1e82b3fe05a3bef6c91f.md) | 238 | `result-track:819a1e82b3fe05a3bef6c91f995ae4f5a1f406efe65158f001da7e7dceeb34cf` |
| 42 | `lemma` | [one_le_mul_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/one-le-mul-mabs--850b2489b58e1e00af3483fe.md) | 243 | `result-track:850b2489b58e1e00af3483fef844c6dda42075ef6b971dd31938566b9782f110` |
| 43 | `lemma` | [inv_mabs_le_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/inv-mabs-le-inv--d3b549295888353d6e046537.md) | 246 | `result-track:d3b549295888353d6e046537520b073dc7d4fe9c776e3ed762c50565b04f488b` |
| 44 | `lemma` | [mabs_ne_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-ne-one--e00f9b7edd1b45db26158133.md) | 250 | `result-track:e00f9b7edd1b45db26158133a5428f78511c4849860086215543e657ca6b130a` |
| 45 | `lemma` | [mabs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-eq-one--3463d3c759be072c64694372.md) | 253 | `result-track:3463d3c759be072c646943723e729185e1b20aa428799a1670e3aa6ff9932e99` |
| 46 | `lemma` | [mabs_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-le-one--b0aa06af3c89376973830cd2.md) | 255 | `result-track:b0aa06af3c89376973830cd25946778b0cf2386f0d5742001445443621e74d24` |
| 47 | `lemma` | [mabs_le_mabs_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-le-mabs-of-le-one--40136b86bf540cf0225204f0.md) | 258 | `result-track:40136b86bf540cf0225204f006a05a8db52d9bb876064d306769428ea49f831d` |
| 48 | `lemma` | [mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/mabs-lt--a9b21a641274c1111697da76.md) | 261 | `result-track:a9b21a641274c1111697da7693aeb5232d5232e7414ec7ba9133a8400856e447` |
| 49 | `lemma` | [inv_lt_of_mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/inv-lt-of-mabs-lt--360fd556e1d0a86fe738873a.md) | 264 | `result-track:360fd556e1d0a86fe738873a8c81af8d742a81d1b2b385525bf3b5fa2e6987f2` |
| 50 | `lemma` | [max_div_min_eq_mabs'](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/max-div-min-eq-mabs--b52ce25ca0f41e0d27caee44.md) | 266 | `result-track:b52ce25ca0f41e0d27caee4468e530b740f13aefbc2a9c3933cd2d601d9a6771` |
| 51 | `lemma` | [max_div_min_eq_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/max-div-min-eq-mabs--084f6b4943f3a4be576913f2.md) | 273 | `result-track:084f6b4943f3a4be576913f24a22709b673baaaaebb889122b9d4e6a00bdb452` |
| 52 | `def` | [IsSolid](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/issolid--766a0a5b2db6d6be0271e0cb.md) | 283 | `declaration-track:766a0a5b2db6d6be0271e0cbae83eed96a6f3a788aa40e868e2d985de432caba` |
| 53 | `def` | [solidClosure](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/solidclosure--7c1f5c62c986aad5c654ce67.md) | 286 | `declaration-track:7c1f5c62c986aad5c654ce672cc8837f5893cf54c1d39387402a4522d1611377` |
| 54 | `lemma` | [isSolid_solidClosure](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/issolid-solidclosure--da953317d1cdfd6221265ce4.md) | 288 | `result-track:da953317d1cdfd6221265ce4b1f99186550e7d3c4a67ca59990eca42dd849a8b` |
| 55 | `lemma` | [solidClosure_min](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/solidclosure-min--370773c8bc06cfc1d2aa0133.md) | 291 | `result-track:370773c8bc06cfc1d2aa01332b6708f69b26fef91e8dd7f2febcb4ad20929953` |
| 56 | `lemma` | [abs_apply](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/abs-apply--2df3d1c9e2a18b5bf18f60db.md) | 299 | `result-track:2df3d1c9e2a18b5bf18f60db92198a925411855a8ee8f37978ecd6814427cb9e` |
| 57 | `lemma` | [abs_def](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/declarations/abs-def--ac028583fc723339ee1624e5.md) | 301 | `result-track:ac028583fc723339ee1624e5c5f9848770131c3fd7262fbdc0507a639a67b582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
