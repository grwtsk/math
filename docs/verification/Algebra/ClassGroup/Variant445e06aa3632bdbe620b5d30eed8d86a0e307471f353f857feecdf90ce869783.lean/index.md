# Verification target: GRWTSK.Algebra.ClassGroup.Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c8845b904c5fa31d7b7c381e31820785303acad",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/index.md) · [Full source](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c8845b904c5fa31d7b7c381e31820785303acad`.

Source path: `GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_toPrincipalIdeal](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/coe-toprincipalideal--693b742028e34550052854f6.md) | 62 | `result-track:693b742028e34550052854f6e952b49d5271b69407dd141699930ff5ad5a2c4b` |
| 2 | `theorem` | [toPrincipalIdeal_eq_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/toprincipalideal-eq-iff--2b2b8c7926be6cfad764710d.md) | 67 | `result-track:2b2b8c7926be6cfad764710d4d9e4f76cc511784409610ce0a562de848215949` |
| 3 | `theorem` | [mem_principal_ideals_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/mem-principal-ideals-iff--9aede8e90374359ec10f7344.md) | 71 | `result-track:9aede8e90374359ec10f7344c79cfc0edd834a51bfb85443c9c696f1e150b470` |
| 4 | `instance` | [PrincipalIdeals.normal](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/principalideals-normal--acbef077754bca543d5a4003.md) | 80 | `declaration-track:acbef077754bca543d5a40034c55f7c3b307699abd8c70648636d52daf593e59` |
| 5 | `def` | [ClassGroup](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup--aec5a8e2925019d2ad333a77.md) | 90 | `declaration-track:aec5a8e2925019d2ad333a773500f10919c2ca1c237b3ddf26f3829df20a6064` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/instance--a01b04877d84aeaf4276e605.md) | 93 | `declaration-track:a01b04877d84aeaf4276e605c61cf6f59821ced8fc22542706a2ded67ef1eb71` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/instance--86c2e3a1a471eda33739682d.md) | 96 | `declaration-track:86c2e3a1a471eda33739682d502f089e41eb99c6d13c1a68d7e9751d502973fb` |
| 8 | `def` | [ClassGroup.mk](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk--adc926d15188fb4409b5806c.md) | 101 | `declaration-track:adc926d15188fb4409b5806c0ccc7dfb8c5f18b6098cd5731291f5f9a09b95b4` |
| 9 | `lemma` | [ClassGroup.mk_def](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-def--80d0df0cf0d6ba6b273584fc.md) | 105 | `result-track:80d0df0cf0d6ba6b273584fcb498c71ac94d40a7ffb8f00c50d4dd8605e2cdad` |
| 10 | `theorem` | [ClassGroup.Quot_mk_eq_mk](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-quot-mk-eq-mk--9f4bc64ae29900e5eee8c932.md) | 111 | `result-track:9f4bc64ae29900e5eee8c932f11aaf262cabe8705dcf4011668734a3ea1919f7` |
| 11 | `theorem` | [ClassGroup.mk_eq_mk](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-eq-mk--cbfb2272a4a7ffa34974e645.md) | 117 | `result-track:cbfb2272a4a7ffa34974e6451f8affbb34ebea592175f178d11a21ae000ea3a5` |
| 12 | `theorem` | [ClassGroup.mk_eq_mk_of_coe_ideal](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-eq-mk-of-coe-ideal--9abdc3a3dc348108a9f1d587.md) | 123 | `result-track:9abdc3a3dc348108a9f1d587c74c48af6a33e9c398463508f2ffe0063865eab7` |
| 13 | `theorem` | [ClassGroup.mk_eq_one_of_coe_ideal](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-eq-one-of-coe-ideal--34aa56f5ceb88a3fbcb9ed1b.md) | 143 | `result-track:34aa56f5ceb88a3fbcb9ed1b219f8571127febad4cbc2219e359ea462ef972ca` |
| 14 | `theorem` | [ClassGroup.induction](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-induction--58f4eb6138cba498f0d25179.md) | 165 | `result-track:58f4eb6138cba498f0d25179deb377e1fabdcd85693e87f32e43d7fb853028ea` |
| 15 | `def` | [ClassGroup.equiv](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-equiv--4b56a4709a96163870f77b0e.md) | 175 | `declaration-track:4b56a4709a96163870f77b0ea19b9f14711cac1212beb6567893d9a9772bbe79` |
| 16 | `theorem` | [ClassGroup.equiv_mk](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-equiv-mk--99b0b0384dc9c3ff4f632b07.md) | 202 | `result-track:99b0b0384dc9c3ff4f632b0710612997ec863bbd37ba5cc4c44dfa57c4d503b8` |
| 17 | `theorem` | [ClassGroup.mk_canonicalEquiv](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-canonicalequiv--9550c4c7dd2d8cb1452a883c.md) | 214 | `result-track:9550c4c7dd2d8cb1452a883c18670706c759934879cee7baf0248a83aedd7633` |
| 18 | `def` | [FractionalIdeal.mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/fractionalideal-mk0--202a65b09b295b54335a5120.md) | 223 | `declaration-track:202a65b09b295b54335a5120cf1bb0837f60e8ba41aec29c8074e1d47996db75` |
| 19 | `theorem` | [FractionalIdeal.coe_mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/fractionalideal-coe-mk0--24ed69de41f48553c51cbdb3.md) | 230 | `result-track:24ed69de41f48553c51cbdb3a9981b34a34c84a7d92537ea0db8748610006bbc` |
| 20 | `theorem` | [FractionalIdeal.canonicalEquiv_mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/fractionalideal-canonicalequiv-mk0--b33063aa4276652364565eef.md) | 233 | `result-track:b33063aa4276652364565eef06c36377af706dba957a07fafc64316b5269a1a7` |
| 21 | `theorem` | [FractionalIdeal.map_canonicalEquiv_mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/fractionalideal-map-canonicalequiv-mk0--859df9316e640e91b896487f.md) | 240 | `result-track:859df9316e640e91b896487fd0160175f90de16912841e28847aa868b005da88` |
| 22 | `def` | [ClassGroup.mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0--99d573a34bea3f2acc8d0fb8.md) | 247 | `declaration-track:99d573a34bea3f2acc8d0fb8a3feccdd7b503bb308aac71c9b659acd9914d272` |
| 23 | `theorem` | [ClassGroup.mk_mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-mk0--fad392616c5ad5c900b0ff70.md) | 251 | `result-track:fad392616c5ad5c900b0ff70f668fb553d5b4c450608116d603a64e4279482e7` |
| 24 | `theorem` | [ClassGroup.equiv_mk0](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-equiv-mk0--2515802a28338cc53fc3d498.md) | 257 | `result-track:2515802a28338cc53fc3d4984d3f297921a1b2535cfb90ec384e162e43d766e4` |
| 25 | `theorem` | [ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0-eq-mk0-iff-exists-fraction-ring--b05f6da3abbd7dc50f797f8c.md) | 264 | `result-track:b05f6da3abbd7dc50f797f8cc6a95087200b43be754edb5b4a32d3d42468563f` |
| 26 | `theorem` | [ClassGroup.mk0_eq_mk0_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0-eq-mk0-iff--5cbd24d1d0605d970e2ae295.md) | 281 | `result-track:5cbd24d1d0605d970e2ae295cd40d7d4b873dd9a49547bfb561dbfa97298cab5` |
| 27 | `def` | [ClassGroup.integralRep](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-integralrep--2a8f0f6f5fad1e59ae8184d9.md) | 301 | `declaration-track:2a8f0f6f5fad1e59ae8184d9585fdfc5122fb174d13559403779710e97071705` |
| 28 | `theorem` | [ClassGroup.integralRep_mem_nonZeroDivisors](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-integralrep-mem-nonzerodivisors--f222b3ffa0c0bdb85bc100ee.md) | 304 | `result-track:f222b3ffa0c0bdb85bc100ee01deb6aec8488c22a23ab8e7753340b8ee22492b` |
| 29 | `theorem` | [ClassGroup.mk0_integralRep](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0-integralrep--aca28a3f63e27f0b29d714f0.md) | 309 | `result-track:aca28a3f63e27f0b29d714f07bf249a9fdfd714c07702d028db044f0a488460e` |
| 30 | `theorem` | [ClassGroup.mk0_surjective](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0-surjective--285a222c36e2ce766b904d0c.md) | 321 | `result-track:285a222c36e2ce766b904d0c1b0d308404fc98345ca3352327b708c33b6003a2` |
| 31 | `theorem` | [ClassGroup.mk_eq_one_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk-eq-one-iff--2da7c5f4b631873509bf12b6.md) | 327 | `result-track:2da7c5f4b631873509bf12b64399617614c94657948e00f0c5b6f8cc6adf3480` |
| 32 | `theorem` | [ClassGroup.mk0_eq_one_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0-eq-one-iff--4060f94500d5309b7a423a6c.md) | 343 | `result-track:4060f94500d5309b7a423a6cacc5988d608e0910b5c80cf5d49ec93ea2e38d8d` |
| 33 | `theorem` | [ClassGroup.mk0_eq_mk0_inv_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/classgroup-mk0-eq-mk0-inv-iff--6664d53361e016c587d2b7dc.md) | 347 | `result-track:6664d53361e016c587d2b7dcc9c20b4bd80eb50af4a60d7d1836fc7013c19bfd` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/instance--4e553285ce254a751e102a9e.md) | 362 | `declaration-track:4e553285ce254a751e102a9e0e4192e32cfa0388025d9621ed8fdac350b8dae3` |
| 35 | `theorem` | [card_classGroup_eq_one](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/card-classgroup-eq-one--1eca3e4a617e8563bdc5b763.md) | 370 | `result-track:1eca3e4a617e8563bdc5b76365b9a2cdff38d08601dd04f4855445a3fa3c7427` |
| 36 | `theorem` | [card_classGroup_eq_one_iff](../../../../mathematics/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/declarations/card-classgroup-eq-one-iff--85fd0dcdbbf759f588ffd52e.md) | 377 | `result-track:85fd0dcdbbf759f588ffd52e2e164c1ed7d5ecab71b2a71972c9683266e0776f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
