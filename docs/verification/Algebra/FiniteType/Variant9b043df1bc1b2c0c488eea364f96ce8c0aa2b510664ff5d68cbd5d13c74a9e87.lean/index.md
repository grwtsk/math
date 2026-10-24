# Verification target: GRWTSK.Algebra.FiniteType.Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "078cd57ced28ca65140f2c21065ce89f8bffab2d",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `078cd57ced28ca65140f2c21065ce89f8bffab2d`.

Source path: `GRWTSK/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Tower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Orzech` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FiniteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/algebra-finitetype--3136e0da14af0879ff3d9035.md) | 35 | `declaration-track:3136e0da14af0879ff3d9035b7c11d28ffc493c266533ea78d2b40c17a8161ec` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/instance--611079d996c2a849ed63be86.md) | 51 | `declaration-track:611079d996c2a849ed63be869eab9ace48735f5c57063f254d0fb3b7b5c74b1f` |
| 3 | `theorem` | [self](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/self--fdef52d0b38d4a1c968f9965.md) | 70 | `result-track:fdef52d0b38d4a1c968f9965bcf79a468d5ff4503760d1775a25c498cd83b0e0` |
| 4 | `theorem` | [polynomial](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/polynomial--68f4060fd48374df6bfecbad.md) | 73 | `result-track:68f4060fd48374df6bfecbada056d8c5cce5783f36292afdb0848bbd01cbea6e` |
| 5 | `theorem` | [freeAlgebra](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/freealgebra--97be3d6cdf48b0780120af58.md) | 79 | `result-track:97be3d6cdf48b0780120af58e1312ead5ce88434151656205a03ae187de4c246` |
| 6 | `theorem` | [mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mvpolynomial--b592bf0f14a85ac42cb6695f.md) | 87 | `result-track:b592bf0f14a85ac42cb6695fe6b395d0b1808e8ef482f21b13d27934856d8f1d` |
| 7 | `theorem` | [of_restrictScalars_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-restrictscalars-finitetype--9d7120b11ff83a0f6c5d108c.md) | 95 | `result-track:9d7120b11ff83a0f6c5d108cd096bea3112be8d3fc7d5ee118cacf7b0d1d04f0` |
| 8 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-surjective--bc627e55277debc4cd88d0b3.md) | 107 | `result-track:bc627e55277debc4cd88d0b356f2f9493bd89515f3f0e4b79bff43b7be7ed38c` |
| 9 | `theorem` | [equiv](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/equiv--73cdd1c40e596bdb6a03fecc.md) | 112 | `result-track:73cdd1c40e596bdb6a03fecc9ac5c3069069700fddd18dbe5b8ba5cbdcc05af0` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/trans--4582c39fc7753fa90c358fe5.md) | 115 | `result-track:4582c39fc7753fa90c358fe55a350a96c97d6d3d7cbbeebed8ecb751c2543819` |
| 11 | `instance` | [quotient](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/quotient--7cc53fc9337a492a332ab3ff.md) | 119 | `declaration-track:7cc53fc9337a492a332ab3fffc1ed76849cf0aa0e3daac349b338a42b30d0138` |
| 12 | `theorem` | [iff_quotient_freeAlgebra](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/iff-quotient-freealgebra--bf02cd662fe79bc066b964ad.md) | 125 | `result-track:bf02cd662fe79bc066b964ad17c4b6aed0c1776f7b45b08cb17af0937cc6d21d` |
| 13 | `theorem` | [iff_quotient_mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/iff-quotient-mvpolynomial--55bf2eb58b65b96418b2407b.md) | 138 | `result-track:55bf2eb58b65b96418b2407bf9646ccb49dd7cd8f288cabe425168c1f2595b2e` |
| 14 | `theorem` | [iff_quotient_freeAlgebra'](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/iff-quotient-freealgebra--12d2c8c89ee9038edf113e99.md) | 154 | `result-track:12d2c8c89ee9038edf113e99841ecd31dd1da4eb3b9df1e8a7079dd449238c9d` |
| 15 | `theorem` | [iff_quotient_mvPolynomial'](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/iff-quotient-mvpolynomial--a15014087097ef8aea2ebe45.md) | 166 | `result-track:a15014087097ef8aea2ebe45e447e8cb4df73b36fecb0ae6965a351afa8862bd` |
| 16 | `theorem` | [iff_quotient_mvPolynomial''](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/iff-quotient-mvpolynomial--31d0a011f5a29182b0202708.md) | 178 | `result-track:31d0a011f5a29182b02027082121bd02889130ffb93fb30a3561212b51edfd90` |
| 17 | `instance` | [prod](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/prod--0e7b40bd5687b28084f827e3.md) | 188 | `declaration-track:0e7b40bd5687b28084f827e38c03b97c03f76e417f8e3daaee10e83d8f91ceab` |
| 18 | `theorem` | [isNoetherianRing](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/isnoetherianring--17137f4395fdb372ddf6eeec.md) | 191 | `result-track:17137f4395fdb372ddf6eeec451576f50c8bace972c1e74e08b5c81af6c46b19` |
| 19 | `theorem` | [_root_.Subalgebra.fg_iff_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/root-subalgebra-fg-iff-finitetype--3667bd6cff4ed26a98ae62da.md) | 201 | `result-track:3667bd6cff4ed26a98ae62da0b0284f42562aa4941e1317305178c3aead4c58c` |
| 20 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype--7296fdc45d01fef500061f8b.md) | 216 | `declaration-track:7296fdc45d01fef500061f8b8fbc689eefcba1e6b6a81a85674ec94bda1e3164` |
| 21 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype--5e5be02b8087851fbc0a5ed9.md) | 221 | `result-track:5e5be02b8087851fbc0a5ed963c62729212321fa940abc66f83a4eb4406213b8` |
| 22 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/id--4f23dab44e181c108af57ba0.md) | 229 | `result-track:4f23dab44e181c108af57ba0de7744aafaf63f3d6e8c0b2a3684c37f4a8e5696` |
| 23 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/comp-surjective--324487e76daac2b60ba2bc0b.md) | 232 | `result-track:324487e76daac2b60ba2bc0b8e01361b91032a7a9c15c04f7bf3fd7c4e510914` |
| 24 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-surjective--5398af2912bbbdc10bf87cb5.md) | 241 | `result-track:5398af2912bbbdc10bf87cb5b73fe88e25d0971a564fffac8211943f372ef921` |
| 25 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/comp--e1a265b08b58c1fc6f6785cc.md) | 245 | `result-track:e1a265b08b58c1fc6f6785cc98120994113d07bdfcd71f5fd42aad90cfd63fed` |
| 26 | `theorem` | [of_finite](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-finite--2266bb9429cb9dc23f0dca58.md) | 250 | `result-track:2266bb9429cb9dc23f0dca58c530031907a6388c519ad7fde11375c817b5a2a6` |
| 27 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-comp-finitetype--2da735655ee6acf06de2bf0e.md) | 255 | `result-track:2da735655ee6acf06de2bf0ed42316559a124931fc177b7f3a06b4c5679bb5aa` |
| 28 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype--8dee6599274f22fdd2f49dba.md) | 272 | `declaration-track:8dee6599274f22fdd2f49dba92f8b815d45fcf3fe689720e388b3901651b5bd4` |
| 29 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype--1bad3452df81d643dfae12aa.md) | 277 | `result-track:1bad3452df81d643dfae12aa13874dd828dac17b6e82ec03c1ff9c8b3a53684c` |
| 30 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/id--830875b82a18a9d695f90021.md) | 286 | `result-track:830875b82a18a9d695f90021bb95721241b63e265ecfeadfc69aae1ea195d588` |
| 31 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/comp--49588666d0cf500849d516ca.md) | 291 | `result-track:49588666d0cf500849d516ca39661bba03f13fac5262d29c35b652bd09279fcd` |
| 32 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/comp-surjective--3538cabe12484efd3759ee02.md) | 295 | `result-track:3538cabe12484efd3759ee0273f0ec2cdcec5e8ec28f17b17601e5506138a903` |
| 33 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-surjective--624cf5d12b40fe7553ef56c1.md) | 299 | `result-track:624cf5d12b40fe7553ef56c18aac725e1d8f310c11d49ce2e209a77f70c27e03` |
| 34 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-comp-finitetype--272857760c149a652e085629.md) | 302 | `result-track:272857760c149a652e0856292043233f1e023516269093a40b371bd534087f59` |
| 35 | `theorem` | [algebraMap_finiteType_iff_algebra_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/algebramap-finitetype-iff-algebra-finitetype--36099504a928a5bbd045b762.md) | 310 | `result-track:36099504a928a5bbd045b762afc0c0262469bb5f23fc354ee3d877838d0d13e7` |
| 36 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mem-adjoin-support--adcc7c4120ff74a552e8605e.md) | 330 | `result-track:adcc7c4120ff74a552e8605ec03752094fbdd530d9bf81de611e6823b6c53d2f` |
| 37 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/support-gen-of-gen--323358cc83f95f64d30c7ecf.md) | 339 | `result-track:323358cc83f95f64d30c7ecf4492c7b2a64967993915a315fd055c885b3d9112` |
| 38 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/support-gen-of-gen--6ef1be63efebdce59254b7d9.md) | 352 | `result-track:6ef1be63efebdce59254b7d98125add14628ea7210ecab20feee29be7c7e1029` |
| 39 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/exists-finset-adjoin-eq-top--10f1e6302b5a0bd10ad09c84.md) | 367 | `result-track:10f1e6302b5a0bd10ad09c84c10b21311815ecbb643252c6e3448cbfb5fc2d96` |
| 40 | `theorem` | [of'_mem_span](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-mem-span--50d0a7eb6e585d53de9b1e2e.md) | 379 | `result-track:50d0a7eb6e585d53de9b1e2eb0a3a774e7f15045dd9dde762f02dfa6d987924c` |
| 41 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mem-closure-of-mem-span-closure--02cf6a49bee39d9497a7b951.md) | 390 | `result-track:02cf6a49bee39d9497a7b951f3594d7ea329da0f396c64d782982e78c71a5dca` |
| 42 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--3929163530ad7a6124ff456d.md) | 407 | `result-track:3929163530ad7a6124ff456dced01fd0bdb53b8305b90468b43317219f3f1d81` |
| 43 | `theorem` | [freeAlgebra_lift_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/freealgebra-lift-of-surjective-of-closure--9d07c75147487b14d9f99600.md) | 435 | `result-track:9d07c75147487b14d9f9960034e8793571173fa0c904024f2e970cf58b1c1a1c` |
| 44 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype-of-fg--a9486eae56666f5687f58ac2.md) | 463 | `declaration-track:a9486eae56666f5687f58ac25a2530754fa67298318448752a12964394cfa8b4` |
| 45 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype-iff-fg--9c194054ae077cd150daea93.md) | 474 | `result-track:9c194054ae077cd150daea931eecf78490cebda414a9415092616afa1695b9e1` |
| 46 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/fg-of-finitetype--05277159f537ab11bca9eb25.md) | 485 | `result-track:05277159f537ab11bca9eb257587056e54d907524b6251fad84c36ce2f02327e` |
| 47 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype-iff-group-fg--c03607d2fef4116e14f5b7a1.md) | 491 | `result-track:c03607d2fef4116e14f5b7a1a0201b972ac037ac16beb1ce2e65eccf620daa1a` |
| 48 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mem-adjoin-support--b5c7e1736ed64a43ec402cf7.md) | 508 | `result-track:b5c7e1736ed64a43ec402cf76815c37a1245423af2755e5d70b0dade382db33b` |
| 49 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/support-gen-of-gen--bdb110a463bc411ad4666aa6.md) | 516 | `result-track:bdb110a463bc411ad4666aa6c6404fd37563ca027bb14a879a9668a5f585bdfc` |
| 50 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/support-gen-of-gen--924ce67737ffea617311d113.md) | 532 | `result-track:924ce67737ffea617311d11347878f7eee8e0f6460eda6cbff927e4a858c6111` |
| 51 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/exists-finset-adjoin-eq-top--21c1d40373ea41978af66d81.md) | 547 | `result-track:21c1d40373ea41978af66d812b7c8455bbaa59fd68107b0f014112a206a55537` |
| 52 | `theorem` | [of_mem_span_of_iff](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/of-mem-span-of-iff--a7281b79a90749b838f937fa.md) | 559 | `result-track:a7281b79a90749b838f937fa125889fb6524a6e3d331e3c9e457aa9bec364731` |
| 53 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mem-closure-of-mem-span-closure--7fed2138a205e97c5450f00e.md) | 570 | `result-track:7fed2138a205e97c5450f00e82903d324ed741af6c388278bccffe9d34c56561` |
| 54 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--322178d61b69d6a45cd6d463.md) | 582 | `result-track:322178d61b69d6a45cd6d4631e64daabe2d479ad1f01f83c15a32694247fde04` |
| 55 | `theorem` | [freeAlgebra_lift_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/freealgebra-lift-of-surjective-of-closure--c668cf05215d9113fa4aa52d.md) | 609 | `result-track:c668cf05215d9113fa4aa52defc07262fab7706517c6db21e508198177b24dc8` |
| 56 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype-of-fg--8b4d5d4800b5a4b0b32738b3.md) | 633 | `declaration-track:8b4d5d4800b5a4b0b32738b32119275ddc768dbfed0625acd6907bae86c3932a` |
| 57 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype-iff-fg--d3d8a160544d0ae4f06884fe.md) | 637 | `result-track:d3d8a160544d0ae4f06884fe47f7e351758b5e6f873da1500877543df6e8f1eb` |
| 58 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/fg-of-finitetype--4d449f1557705d5da8fca3cf.md) | 645 | `result-track:4d449f1557705d5da8fca3cf6222a7a35f141753820ed6ada84d0f0c65f4e7c0` |
| 59 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/finitetype-iff-group-fg--1633778bb147409021185df6.md) | 650 | `result-track:1633778bb147409021185df6fc431d23d4e4be2e2a7ce0141d0d8f491131530a` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.lean/declarations/instance--dbfb0a18d538339560a897f0.md) | 681 | `declaration-track:dbfb0a18d538339560a897f0746461a2bcdbb195d7675982f4bc1c0b96c2620c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
