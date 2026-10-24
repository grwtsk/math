# Verification target: GRWTSK.Algebra.Integral.Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d783079a5579dfae081fd03c412e3606b782cb01",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d783079a5579dfae081fd03c412e3606b782cb01`.

Source path: `GRWTSK/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Algebraic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegral.isAlgebraic](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isintegral-isalgebraic--4066be61c5d7e855fdf2eb7b.md) | 47 | `result-track:4066be61c5d7e855fdf2eb7bf239954bbe186c82a76971ad286611886728f5dc` |
| 2 | `instance` | [Algebra.IsIntegral.isAlgebraic](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isintegral-isalgebraic--5037bf4b528e746bf2fbe1f3.md) | 50 | `declaration-track:5037bf4b528e746bf2fbe1f34dd0191a00c0d9f4518cd8a45be7753dc3969fed` |
| 3 | `theorem` | [isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-iff-isintegral--ef8d8f7833d761ea285a4ae6.md) | 60 | `result-track:ef8d8f7833d761ea285a4ae68f3d374722e7e9385f695d3f035b368191859f81` |
| 4 | `theorem` | [Algebra.isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-iff-isintegral--28da264a1e1a564fb7de8053.md) | 66 | `result-track:28da264a1e1a564fb7de80538436b5eb11244239f6d5418ed1bbc87f2758c335` |
| 5 | `instance` | [Algebra.IsAlgebraic.isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-isintegral--edc908392883ede08433f475.md) | 75 | `declaration-track:edc908392883ede08433f47599c50943b092f1787b6a26aab81193d55f231a3e` |
| 6 | `theorem` | [Algebra.IsAlgebraic.of_isIntegralClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-of-isintegralclosure--7f597d7d58b799919e837c0c.md) | 78 | `result-track:7f597d7d58b799919e837c0c138dc7009bdfc2869918a13e73c62b6d1ddcb73d` |
| 7 | `theorem` | [IsAlgebraic.of_finite](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-of-finite--b374a322ebaee433a28ff012.md) | 94 | `result-track:b374a322ebaee433a28ff01297a790b02081d753ce09a3c2cba99e83a73908a2` |
| 8 | `instance` | [Algebra.IsAlgebraic.of_finite](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-of-finite--a64cd79d4aa21c7f2a0e9313.md) | 101 | `declaration-track:a64cd79d4aa21c7f2a0e93133632f5ac01ba4de2e31ca55a6e996dba9900d34e` |
| 9 | `theorem` | [transcendental_aeval_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/transcendental-aeval-iff--6db4907695aa43d7396b900a.md) | 114 | `result-track:6db4907695aa43d7396b900a9d1f281128fc474822dfdfb24fd30c5d8eb996b7` |
| 10 | `theorem` | [AlgHom.bijective](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/alghom-bijective--c32f045255b8be5be9462c27.md) | 124 | `result-track:c32f045255b8be5be9462c27ebe8970834473289df17a69a817c7c905df3a66a` |
| 11 | `abbrev` | [algEquivEquivAlgHom](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algequivequivalghom--55bd875dcf008e7cb7a744ea.md) | 129 | `declaration-track:55bd875dcf008e7cb7a744eacde72818a6b135da495f6781d61b682785d025d5` |
| 12 | `theorem` | [exists_integral_multiple](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/exists-integral-multiple--abcaea894ab59711d3f5bf7e.md) | 143 | `result-track:abcaea894ab59711d3f5bf7e7c043e91f027976c17a85a42d6864b3de410c247` |
| 13 | `theorem` | [_root_.Algebra.IsAlgebraic.exists_integral_multiples](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/root-algebra-isalgebraic-exists-integral-multiples--2718de3f91e6f82420b7bed0.md) | 160 | `result-track:2718de3f91e6f82420b7bed0749362a7c27e9da571d319cf2e2a3491e3f0d760` |
| 14 | `theorem` | [of_smul_isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/of-smul-isintegral--ede08a9492d931ec11a93177.md) | 169 | `result-track:ede08a9492d931ec11a931776fd4da1040a0de7d19863908e609d84d8df8b4d7` |
| 15 | `theorem` | [of_smul](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/of-smul--49105eb500ef400667debbd4.md) | 180 | `result-track:49105eb500ef400667debbd48cf1f03c050765cc833d5a3053b32de8318b55be` |
| 16 | `theorem` | [iff_exists_smul_integral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/iff-exists-smul-integral--7d447e95ada0ba11f14dc47a.md) | 185 | `result-track:7d447e95ada0ba11f14dc47a062ba4287a061af9bcfba31e972009b9a9b8a940` |
| 17 | `theorem` | [restrictScalars_of_isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/restrictscalars-of-isintegral--bae939d736eff658e9a8aee8.md) | 204 | `result-track:bae939d736eff658e9a8aee8a076ec89ac5eeab2e66268297c5f7db6f2b5170d` |
| 18 | `theorem` | [restrictScalars](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/restrictscalars--467a6be2500cf20442dfb95b.md) | 220 | `result-track:467a6be2500cf20442dfb95be2ca1f2d572b3b3454b44fe6f30a784da1e9bdc0` |
| 19 | `theorem` | [_root_.IsIntegral.trans_isAlgebraic](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/root-isintegral-trans-isalgebraic--b5761031efd0305837e3f886.md) | 242 | `result-track:b5761031efd0305837e3f886b074f5fdebb9146f049c6f17c832ec1975ab1ec5` |
| 20 | `lemma` | [neg](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/neg--7584757044be7fcfd59cd5a2.md) | 256 | `result-track:7584757044be7fcfd59cd5a2028d747845477dcc0245e948bcaef473f7a8d776` |
| 21 | `lemma` | [smul](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/smul--4e6a493f7a5512d46ed1cd0d.md) | 260 | `result-track:4e6a493f7a5512d46ed1cd0d3a3cbf8818bc8876b34daf0a66f9cd9000f18197` |
| 22 | `lemma` | [nsmul](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/nsmul--1e0a76a6ea6deed81a168162.md) | 264 | `result-track:1e0a76a6ea6deed81a1681627f967433e980ed7c0cd7071a0d2ff108edc1189d` |
| 23 | `lemma` | [zsmul](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/zsmul--a47ee522263eb316f4008f49.md) | 267 | `result-track:a47ee522263eb316f4008f49c59c81b73409f2a4d858cdfd478b5a8eb5bf6e3b` |
| 24 | `lemma` | [mul](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/mul--0dd2abba04637d102ee699fc.md) | 272 | `result-track:0dd2abba04637d102ee699fc467189a48b709837c291726da6848109479e4493` |
| 25 | `lemma` | [add](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/add--545853fd97bedea017b74d23.md) | 279 | `result-track:545853fd97bedea017b74d235c9ea668841f5a10f18b9144c14cf1005a80f42f` |
| 26 | `lemma` | [sub](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/sub--9161d83b2d0c703a28d36682.md) | 286 | `result-track:9161d83b2d0c703a28d36682c49f4a1834410fec24844f43b58311178acf8d77` |
| 27 | `lemma` | [pow](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/pow--a303bedee95c0fd3ad6ef69b.md) | 290 | `result-track:a303bedee95c0fd3ad6ef69b08f5d18954c976acfbf54f4e084b7de4f89f351b` |
| 28 | `theorem` | [IsAlgebraic.trans](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-trans--303109138c2f91ef363debb0.md) | 301 | `result-track:303109138c2f91ef363debb05aabc417359c3e578888ee4b17217edd9329ff6b` |
| 29 | `theorem` | [IsIntegral.trans_isAlgebraic](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isintegral-trans-isalgebraic--f872d47171246c39f8aca8b1.md) | 307 | `result-track:f872d47171246c39f8aca8b19372e6d66f24384bf9fc4ea66bb71a8d316afa90` |
| 30 | `theorem` | [IsAlgebraic.trans_isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-trans-isintegral--dc5cce50fc75c63473a84ce6.md) | 311 | `result-track:dc5cce50fc75c63473a84ce685377362afd91b8d5f2b6d471049b1ab1a7df0b8` |
| 31 | `theorem` | [IsIntegral.isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isintegral-isalgebraic-iff--076d8be3b6c4db696ec20e0b.md) | 317 | `result-track:076d8be3b6c4db696ec20e0bd460eb52c88af6206110045f4ffa56ac4708f078` |
| 32 | `theorem` | [IsIntegral.isAlgebraic_iff_top](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isintegral-isalgebraic-iff-top--7117893d6f29392422628b8e.md) | 321 | `result-track:7117893d6f29392422628b8eee37e4a79c2a6965ce93ec886ed337c3d14a6e7c` |
| 33 | `theorem` | [IsAlgebraic.isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-isalgebraic-iff--3cc469bf8b8795484b494d2f.md) | 325 | `result-track:3cc469bf8b8795484b494d2febfc5166f770e7e5105c99ae78c59b1757f1e4d1` |
| 34 | `theorem` | [IsAlgebraic.isAlgebraic_iff_top](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-isalgebraic-iff-top--cd8181116a2f509133320688.md) | 329 | `result-track:cd8181116a2f509133320688012d4e66e40c9187ee5663c3aface3a28e294d05` |
| 35 | `theorem` | [IsAlgebraic.isAlgebraic_iff_bot](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-isalgebraic-iff-bot--35ed6550f9810c039d37a95e.md) | 333 | `result-track:35ed6550f9810c039d37a95e672994caa011bce3b54a739fd713d2f66401fc06` |
| 36 | `def` | [Subalgebra.algebraicClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/subalgebra-algebraicclosure--4a48773f03f7d5d5a1a47516.md) | 342 | `declaration-track:4a48773f03f7d5d5a1a475166cd7ca51a18fd0f40a71855c18dd4797d4bc1ff0` |
| 37 | `theorem` | [Subalgebra.mem_algebraicClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/subalgebra-mem-algebraicclosure--7376079658f2a5dcdd8315b2.md) | 348 | `result-track:7376079658f2a5dcdd8315b26a4da5479af1e1aaabc542b23902fe38f7fbcbf5` |
| 38 | `theorem` | [integralClosure_le_algebraicClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/integralclosure-le-algebraicclosure--db7a5f53a24b4ab3342c0d95.md) | 351 | `result-track:db7a5f53a24b4ab3342c0d957e1d50c15d296a14e5dd9a550f2f88311c764587` |
| 39 | `theorem` | [Subalgebra.algebraicClosure_eq_integralClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/subalgebra-algebraicclosure-eq-integralclosure--e4897fd7c1666d92c7f76733.md) | 355 | `result-track:e4897fd7c1666d92c7f76733bebbc8fc01ba9a6e3e5fc9e01bfca6571f8b2728` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/instance--8cb053c17fd8885da66430cb.md) | 359 | `declaration-track:8cb053c17fd8885da66430cb7314be02d6cee0f8bc9571811b6f247177bc6eb5` |
| 41 | `theorem` | [Algebra.isAlgebraic_adjoin_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-adjoin-iff--3b92ca5b8b9b0ce49061ee3e.md) | 364 | `result-track:3b92ca5b8b9b0ce49061ee3e0d22c35c1b0b14947a3f28acb32aef8e846507c5` |
| 42 | `theorem` | [Algebra.isAlgebraic_adjoin_of_nonempty](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-adjoin-of-nonempty--159ad8af21e9452ea5575aa6.md) | 368 | `result-track:159ad8af21e9452ea5575aa6284a334eaba3b0d720e9ab7177a18df0776398cc` |
| 43 | `theorem` | [Algebra.isAlgebraic_adjoin_singleton_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/algebra-isalgebraic-adjoin-singleton-iff--242d0eeb2b4d4bc31800668e.md) | 378 | `result-track:242d0eeb2b4d4bc31800668e725ffa4c24fa223d24a2ba696c5374d391631eab` |
| 44 | `theorem` | [IsAlgebraic.of_mul](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-of-mul--044fb2403568133155d7a9a7.md) | 382 | `result-track:044fb2403568133155d7a9a703abec9d085b84cefa3e7e5bab6ad7f655e25f7a` |
| 45 | `theorem` | [IsAlgebraic.adjoin_of_forall_isAlgebraic](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-adjoin-of-forall-isalgebraic--a908a9870d15b509a182488f.md) | 391 | `result-track:a908a9870d15b509a182488fc909866db29021381b01f15ca9bdba97127f0395` |
| 46 | `lemma` | [extendScalars_of_isIntegral](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/extendscalars-of-isintegral--dc88a9ad84ad8c33ddddb1ac.md) | 419 | `result-track:dc88a9ad84ad8c33ddddb1ac0d25811453ec0522cbb4c2b8ef9698b163dbb76c` |
| 47 | `lemma` | [extendScalars](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/extendscalars--fd176a00d91d006cdc09ccff.md) | 425 | `result-track:fd176a00d91d006cdc09ccffea4f91fa352d9c3a67e5489e5b87a5663882a909` |
| 48 | `lemma` | [integralClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/integralclosure--c2d261def763e72f3bf5f18d.md) | 435 | `result-track:c2d261def763e72f3bf5f18dc61c18cef4ebe517c89bc42fb3c118f96b46fd39` |
| 49 | `lemma` | [subalgebraAlgebraicClosure](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/subalgebraalgebraicclosure--941d7f3854534019929f474c.md) | 438 | `result-track:941d7f3854534019929f474cd4d0e391a061cc512057b93d677c45f395046c05` |
| 50 | `theorem` | [IsIntegral.transcendental_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isintegral-transcendental-iff--15e37b8a377cf63395203270.md) | 447 | `result-track:15e37b8a377cf6339520327080eb3e116f4a34e0f3d9560d3e252371b0bbe359` |
| 51 | `theorem` | [IsAlgebraic.transcendental_iff](../../../../mathematics/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/declarations/isalgebraic-transcendental-iff--3fd2ec4aae7d0fe5e2ab86ae.md) | 451 | `result-track:3fd2ec4aae7d0fe5e2ab86ae66bca4d465ef314687fd61a1db8416464cb32d30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
