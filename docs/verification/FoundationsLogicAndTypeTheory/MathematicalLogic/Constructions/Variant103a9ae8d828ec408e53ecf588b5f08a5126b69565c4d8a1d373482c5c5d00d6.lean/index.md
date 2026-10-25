# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Constructions.Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21c5a00238941280d4427398f0076618fbc153b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21c5a00238941280d4427398f0076618fbc153b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Module.Synonym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bilipschitz` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--8e5695c0449fd7b199a1e244.md) | 72 | `declaration-track:8e5695c0449fd7b199a1e2444c5fd62e6c8775a95b16750cae5b329672488802` |
| 2 | `lemma` | [inner_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/inner-def--d7f0a6f6fa48ef5a3d5af856.md) | 85 | `result-track:d7f0a6f6fa48ef5a3d5af856fc064e819945e4d26971446fde4a5620e7e653db` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--b6ec09110a438edf37e005c0.md) | 100 | `declaration-track:b6ec09110a438edf37e005c0c806f5df76b7464dcc3570a5648840391c8e1822` |
| 4 | `lemma` | [prod_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/prod-norm--81b918b53785ad1a8dc12acc.md) | 103 | `result-track:81b918b53785ad1a8dc12acc02892e3b6b8d7b0e0878e67ad998f2468f94e942` |
| 5 | `lemma` | [prod_norm_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/prod-norm-sq--ea51d7cfe7383c9435bdaa09.md) | 105 | `result-track:ea51d7cfe7383c9435bdaa09e8ddf0390833635db3d1bc8c5d9d96e7fa7e5f13` |
| 6 | `lemma` | [prod_norm_le_norm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/prod-norm-le-norm-add--fe913775f5388cf27138308e.md) | 108 | `result-track:fe913775f5388cf27138308ee47777a16b3ed0bb785f0923408fb6c414b02990` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--78690828528198475c3f6e3b.md) | 117 | `declaration-track:78690828528198475c3f6e3b3a0928203da56a02ca7a7e81838aab60278c3472` |
| 8 | `lemma` | [prod_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/prod-inner--d24b80352d9461bbbe3c1faf.md) | 134 | `result-track:d24b80352d9461bbbe3c1faf040d47574e916777eabbd515ab19a1c01b0af287` |
| 9 | `lemma` | [max_le_prod_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/max-le-prod-norm--28f59bb6fc86febd8248fbff.md) | 136 | `result-track:28f59bb6fc86febd8248fbffa7727c6e132946b0786ca2c443d7e1bd3f77eb5a` |
| 10 | `lemma` | [norm_equiv_le_norm_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/norm-equiv-le-norm-prod--ea1a2772383cc816936552fc.md) | 147 | `result-track:ea1a2772383cc816936552fc0541f01f9288a0eb10beb7d9f1cc8faf2fba73ff` |
| 11 | `def` | [normedAddCommGroupProdAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/normedaddcommgroupprodaux--9fc11eab31a45bf045f2e8f7.md) | 159 | `declaration-track:9fc11eab31a45bf045f2e8f7ee8a5b753d96b3903eee054b6ae5b648f8a17748` |
| 12 | `lemma` | [antilipschitzWith_two_equiv_prod_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/antilipschitzwith-two-equiv-prod-aux--303ebda120cd892413cb2ba1.md) | 166 | `result-track:303ebda120cd892413cb2ba1f5ffb7408f1ea7b710ab8d214fe3dd6fc71362ea` |
| 13 | `lemma` | [lipschitzWith_one_equiv_prod_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/lipschitzwith-one-equiv-prod-aux--1fdf2871df0b9eb406018da7.md) | 174 | `result-track:1fdf2871df0b9eb406018da7c1a633b0d3e90cb4382102cdd32b5417162b5673` |
| 14 | `lemma` | [uniformity_prod_eq_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/uniformity-prod-eq-aux--6f0f84de03d143e383ad0eb1.md) | 178 | `result-track:6f0f84de03d143e383ad0eb16d7916156b279cdec1488d359aa59850750be884` |
| 15 | `lemma` | [isBounded_prod_iff_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/isbounded-prod-iff-aux--bc9854c93885a4bd73195d01.md) | 182 | `result-track:bc9854c93885a4bd73195d012a4991a8b4144fae3f66bbd45f7990b8246b2e2b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--f6c528d159ae07f3b8cc188f.md) | 189 | `declaration-track:f6c528d159ae07f3b8cc188fa83f908ecd3281cfe46e9b4f39387ff8377a5361` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--231c2497f427d5061130c24a.md) | 192 | `declaration-track:231c2497f427d5061130c24add02afb919b9fe14ac4ae8612537f6f2c9f835b8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--1308e5de5d893cb1671c7529.md) | 206 | `declaration-track:1308e5de5d893cb1671c7529c61b8d8a29e063bbafd6fdd59f06b640733fd3f1` |
| 19 | `lemma` | [pi_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/pi-norm--6884a8493a9cb94885262856.md) | 209 | `result-track:6884a8493a9cb948852628565c900e4dc89b2f28758eb38c4bb850306a3332ab` |
| 20 | `lemma` | [pi_norm_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/pi-norm-sq--75e7dd11d6fee7c7e3df6ac6.md) | 212 | `result-track:75e7dd11d6fee7c7e3df6ac640cf9ebfc3c3dac9a56408d2c750ee665e6790a4` |
| 21 | `lemma` | [pi_norm_le_sum_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/pi-norm-le-sum-norm--1c4748e8e0e72e062afac903.md) | 216 | `result-track:1c4748e8e0e72e062afac9033f31f69563cbcd9f14a9809d68d60a20304a4b7e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--59f10e804a5baee40ac2bf6b.md) | 225 | `declaration-track:59f10e804a5baee40ac2bf6be5948b262659fa746b7bd85b50159848758adc66` |
| 23 | `lemma` | [pi_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/pi-inner--0d2560997048660d45120a6b.md) | 239 | `result-track:0d2560997048660d45120a6b460cd1f3f8dde939309baee93f04e1b6c5b19463` |
| 24 | `lemma` | [inner_single_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/inner-single-left--8e8c45733f062cdec51095b1.md) | 242 | `result-track:8e8c45733f062cdec51095b17e3b2ed49feb79bfabb0aff22dc4627486227e4a` |
| 25 | `lemma` | [inner_single_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/inner-single-right--fd8a05cf47e3c29aa0ea5d7d.md) | 249 | `result-track:fd8a05cf47e3c29aa0ea5d7dc29f0b7b76a02c9c844a728f96fc7e5d5d9699d0` |
| 26 | `lemma` | [norm_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/norm-single--8a44e7a9e7e41a9e6430d851.md) | 256 | `result-track:8a44e7a9e7e41a9e6430d85193a3c208a012c3c678b2866c6699ee312300cfa2` |
| 27 | `lemma` | [norm_apply_le_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/norm-apply-le-norm--85b5f8854bb6e3be4daa076c.md) | 262 | `result-track:85b5f8854bb6e3be4daa076c686e074a6eaef0b36de6362c7ea277509498eefb` |
| 28 | `lemma` | [norm_equiv_le_norm_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/norm-equiv-le-norm-pi--37a9db0c918fe41dee3cd755.md) | 270 | `result-track:37a9db0c918fe41dee3cd755574610b11493c993f4f3072a9a8dbf23e4c41650` |
| 29 | `def` | [normedAddCommGroupPiAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/normedaddcommgrouppiaux--4f05c0912b840cf55ef6ec32.md) | 284 | `declaration-track:4f05c0912b840cf55ef6ec327b0126fefca5fe63ed58ebc4789798f82a28cf96` |
| 30 | `lemma` | [antilipschitzWith_card_equiv_pi_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/antilipschitzwith-card-equiv-pi-aux--0703be532fadffb8b3a0f052.md) | 291 | `result-track:0703be532fadffb8b3a0f0520150503f0605aeea8804d0c19708ad61bfeea900` |
| 31 | `lemma` | [lipschitzWith_one_equiv_pi_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/lipschitzwith-one-equiv-pi-aux--4a0ec216ad81ebb44b86ea06.md) | 299 | `result-track:4a0ec216ad81ebb44b86ea06b13f5f656b72133f6c746128c8279821d8bf1d82` |
| 32 | `lemma` | [uniformity_pi_eq_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/uniformity-pi-eq-aux--6bcffd17013f7087f809f695.md) | 303 | `result-track:6bcffd17013f7087f809f695272360d5719d0fe89a349d614e03f220e9bb4ae1` |
| 33 | `lemma` | [isBounded_pi_iff_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/isbounded-pi-iff-aux--3890f010e9ce32db0ec4af3a.md) | 307 | `result-track:3890f010e9ce32db0ec4af3a46bdd99b26a935935339424b6e83f715266e91ba` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--836c8e401d6541a0c3cd83a5.md) | 313 | `declaration-track:836c8e401d6541a0c3cd83a5c025f8dab145fdcb2a51d1525fa1c2eaf43031e0` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instance--a7dd7de79d90db2582fd948e.md) | 316 | `declaration-track:a7dd7de79d90db2582fd948eab41d4e7f0bca59c5244ffc621252827f2de2372` |
| 36 | `instance` | [instCStarModuleComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/instcstarmodulecomplex--5b006447e10a9420a0eea50d.md) | 336 | `declaration-track:5b006447e10a9420a0eea50d208220cac4011168058f10df51e47cfa22f6627a` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/example--16a35d13da5085ccd1bc090a.md) | 350 | `declaration-track:16a35d13da5085ccd1bc090a3ea80bf5470f053c8b9d4c76305276bdaceb03e1` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant103a9ae8d828ec408e53ecf588b5f08a5126b69565c4d8a1d373482c5c5d00d6.lean/declarations/example--d4c45b75564b612a3a3600af.md) | 355 | `declaration-track:d4c45b75564b612a3a3600af8dfa9553cbe863ed68e1b70494845d714d817600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
