# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.WeightedFiniteReflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bde4095259dfca0b25519323409d43125a8eab91",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bde4095259dfca0b25519323409d43125a8eab91`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vec](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/vec--7b2a68c7b79258c4fd707ace.md) | 29 | `declaration-track:7b2a68c7b79258c4fd707ace7097415a72b6d38aa37bae05e95866a96eb3b702` |
| 2 | `structure` | [Weights](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weights--7d27c585b15962c7026dbd0c.md) | 32 | `declaration-track:7d27c585b15962c7026dbd0cfd4296430781e164823b3fe0c9c49d7ad5644380` |
| 3 | `def` | [pairing](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing--1b58049158e0b97850fe2a96.md) | 40 | `declaration-track:1b58049158e0b97850fe2a9649af531b5953bb64c76ab9a5d1ac04801a551b0e` |
| 4 | `def` | [energy](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/energy--085fbc1ddf3dbb76fc9452cd.md) | 43 | `declaration-track:085fbc1ddf3dbb76fc9452cd6606844aed8fa17d8228511ef3571fe9af935666` |
| 5 | `def` | [weightedMean](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean--bfd9dab388840cb814563a20.md) | 46 | `declaration-track:bfd9dab388840cb814563a200c407e2ed0198834254877caa81239e02742ace4` |
| 6 | `def` | [projector](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/projector--15528b370181edadd3112fe9.md) | 49 | `declaration-track:15528b370181edadd3112fe97abf64836f2dbe8dc43eff192d2e6914dcca1e8c` |
| 7 | `def` | [diffuse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse--d27edadde7d6b6eddf1ac99a.md) | 52 | `declaration-track:d27edadde7d6b6eddf1ac99aebfa04fc2a08b881b3dda42b9a53654806a78b0c` |
| 8 | `def` | [sign](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/sign--435b9646a53b82df628c4ce1.md) | 56 | `declaration-track:435b9646a53b82df628c4ce18d9856d2db7c1b6dbef19b7a8b75bfa6db3c65d5` |
| 9 | `def` | [phase](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/phase--58933be3eb79e0089d7ec501.md) | 58 | `declaration-track:58933be3eb79e0089d7ec5017a03b9f492b148030977b73a578417ef381515d3` |
| 10 | `def` | [step](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step--1688aab1d41b0e287007c494.md) | 61 | `declaration-track:1688aab1d41b0e287007c494e492e4595189b63c296d18b4885e654b25a2586d` |
| 11 | `def` | [inverseStep](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/inversestep--3d3497eef6880ef1c49eb580.md) | 64 | `declaration-track:3d3497eef6880ef1c49eb58076d7f55bc9d1d4799785cc2424b8502ad16b3533` |
| 12 | `theorem` | [pairing_symm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-symm--797c2081395ab85edcdca48c.md) | 67 | `result-track:797c2081395ab85edcdca48cf5d98197a2fe29295231085e5ce4f2bd0502e2c7` |
| 13 | `theorem` | [pairing_add_left](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-add-left--19f81c6b41717355b218098a.md) | 73 | `result-track:19f81c6b41717355b218098a34c4133c87b19a683286070d9b16fe2b49a4559e` |
| 14 | `theorem` | [pairing_sub_left](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-sub-left--ae2c91f6a0e5d8b5f7ffae8f.md) | 77 | `result-track:ae2c91f6a0e5d8b5f7ffae8ff4445cf96898357b45940ad418dc0a7ec4c80468` |
| 15 | `theorem` | [pairing_scale_left](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-scale-left--0c510b5ca4d41b2989ff33c4.md) | 81 | `result-track:0c510b5ca4d41b2989ff33c4472638a88f54a9c24a30b69af87059d141785606` |
| 16 | `theorem` | [pairing_add_right](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-add-right--f2b3716387b7d7886e71eab6.md) | 89 | `result-track:f2b3716387b7d7886e71eab60c7cef31d8072ec0da7307363f4da5f87b66af2a` |
| 17 | `theorem` | [pairing_scale_right](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-scale-right--1e8e0c9f95fd0018825b234c.md) | 96 | `result-track:1e8e0c9f95fd0018825b234c777d1e732100ad8f9159d896cb032a58277d35f8` |
| 18 | `theorem` | [pairing_self](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-self--f1fbb03521815af9317e23e6.md) | 104 | `result-track:f1fbb03521815af9317e23e662a6d44872043947573edddbbc2aec7751f04a49` |
| 19 | `theorem` | [energy_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/energy-nonneg--cd98866e1c2c9f3b06feeb2b.md) | 110 | `result-track:cd98866e1c2c9f3b06feeb2bd15b2a210b335bb8c17aabb6e2164dca2e7a1b7a` |
| 20 | `theorem` | [energy_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/energy-eq-zero-iff--4fc30cc54abb4b0315ac9b3f.md) | 114 | `result-track:4fc30cc54abb4b0315ac9b3fb5039fdf126c9e34ac6f26b8c88f9a1409f4bb78` |
| 21 | `theorem` | [pairing_pos_def](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/pairing-pos-def--838323d8e74048d709cb92a0.md) | 131 | `result-track:838323d8e74048d709cb92a0580c1693b0975e895bf9b227b34d4deffffbe080` |
| 22 | `theorem` | [weightedMean_add](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean-add--a8d4aab1d2783db6072d6944.md) | 137 | `result-track:a8d4aab1d2783db6072d694466fef0f6f301e1b30bd67bedbc0862739d1ee83f` |
| 23 | `theorem` | [weightedMean_sub](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean-sub--fd60a39e472be50a50b0c51c.md) | 141 | `result-track:fd60a39e472be50a50b0c51ceb1a8b0925368c827fb0a858e261cba2323cea87` |
| 24 | `theorem` | [weightedMean_scale](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean-scale--a9ed42201947f70d64c89265.md) | 145 | `result-track:a9ed42201947f70d64c89265b9e8fe0594df7356c90410ce70fb7cc0e051bb0d` |
| 25 | `theorem` | [weightedMean_const](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean-const--291edd72ffb7477266ae4c7c.md) | 153 | `result-track:291edd72ffb7477266ae4c7c010092abb869e9b7ad4e56c75d68165f2f69afb3` |
| 26 | `theorem` | [weightedMean_projector](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean-projector--21bbaaca778db0f8e4d0d496.md) | 158 | `result-track:21bbaaca778db0f8e4d0d4962b10953fea1506f374c27949216b61d91b3cc624` |
| 27 | `theorem` | [weightedMean_diffuse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/weightedmean-diffuse--bee8adf1ba27c4b67f12abef.md) | 162 | `result-track:bee8adf1ba27c4b67f12abefdaae783e79a7028c271c32c891d6c29004158781` |
| 28 | `theorem` | [projector_add](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/projector-add--bc22484afb182f7ae58b8e46.md) | 168 | `result-track:bc22484afb182f7ae58b8e46039790055832eb294c33f553d5c26c9436410dc4` |
| 29 | `theorem` | [projector_scale](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/projector-scale--adc76f32da6bbf29018d5933.md) | 173 | `result-track:adc76f32da6bbf29018d5933af158f7f6ccac01d36d40ebf83e30c7d28f5a11c` |
| 30 | `theorem` | [diffuse_add](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-add--2ad3738fe4ca9a79d738f03b.md) | 178 | `result-track:2ad3738fe4ca9a79d738f03b4339489e1bc7b1560ea6b84468b35ea5a912960d` |
| 31 | `theorem` | [diffuse_scale](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-scale--b946d7cb873eaceea3357e79.md) | 187 | `result-track:b946d7cb873eaceea3357e79910cd999f05d290f1a36792e9652826714b58680` |
| 32 | `theorem` | [projector_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/projector-idempotent--9ef06c90374765e1c8852d70.md) | 196 | `result-track:9ef06c90374765e1c8852d70001f146bdd3fbfbe2d0b99d30637c2068bf0819a` |
| 33 | `theorem` | [projector_pairing](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/projector-pairing--844afad840adab55a304401e.md) | 201 | `result-track:844afad840adab55a304401e58593fc22bc3a685e8c42822261e7dc574f9d812` |
| 34 | `theorem` | [projector_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/projector-selfadjoint--9a7dd20e500a3bee63ce39e2.md) | 212 | `result-track:9a7dd20e500a3bee63ce39e2b68487e717d4931c5c9253338de58154c19b91ba` |
| 35 | `theorem` | [diffuse_pairing](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-pairing--4bb76941b066a26440c3edb0.md) | 217 | `result-track:4bb76941b066a26440c3edb0a5bef838b83fd701f4ea824d6710a570091af896` |
| 36 | `theorem` | [diffuse_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-selfadjoint--94527fc64d2278b5d7712e22.md) | 225 | `result-track:94527fc64d2278b5d7712e2245f9d1cb781b1c5959305406d95b0448fef64fa5` |
| 37 | `theorem` | [diffuse_involutive](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-involutive--a6f322d2f19e2dc5bad49023.md) | 232 | `result-track:a6f322d2f19e2dc5bad49023d9d85db482450262a76e0ef05527255bb03cc366` |
| 38 | `theorem` | [diffuse_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-leftinverse--7c1e12a2f9ee0ca0dd446800.md) | 240 | `result-track:7c1e12a2f9ee0ca0dd446800b4f8a2afe9b24ff5d282a1eee4e29132a33abd3b` |
| 39 | `theorem` | [diffuse_rightInverse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-rightinverse--6209b989e1fb3e646b50b4d2.md) | 245 | `result-track:6209b989e1fb3e646b50b4d2419f45cc6c62f21e5c48280801dddbd6be723937` |
| 40 | `theorem` | [diffuse_bijective](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-bijective--36a9c6c9b3be8b881a58963a.md) | 250 | `result-track:36a9c6c9b3be8b881a58963af32d660015fd9d18b2b23df26377d404af8b89ac` |
| 41 | `def` | [diffuseEquiv](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuseequiv--58b2ec6bee7834d5d0f84b62.md) | 259 | `declaration-track:58b2ec6bee7834d5d0f84b62520fea82ff48ab5a2b1cb75219c2d4ad095759c9` |
| 42 | `theorem` | [diffuse_energy](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/diffuse-energy--ab22d3648399c8cda1921b49.md) | 266 | `result-track:ab22d3648399c8cda1921b49595b9350523a87de1d6d1e400463a27275806b5a` |
| 43 | `theorem` | [sign_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/sign-mul-self--64f8b94449bccfc49b3f815e.md) | 275 | `result-track:64f8b94449bccfc49b3f815effbdcedd4f7a7399907232cecc337c66ac42690f` |
| 44 | `theorem` | [phase_involutive](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/phase-involutive--9899a063a08a5382de48b7d9.md) | 279 | `result-track:9899a063a08a5382de48b7d99a6ffce49ead7f1ca11f1735da5cc0b71c823fbf` |
| 45 | `theorem` | [phase_add](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/phase-add--fd57fae2722bbe95f23e8308.md) | 286 | `result-track:fd57fae2722bbe95f23e8308a19ca4834925b3cd9c612bc056eb112e7288aaaf` |
| 46 | `theorem` | [phase_scale](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/phase-scale--2613a44fe9384b821587874c.md) | 292 | `result-track:2613a44fe9384b821587874c8c40ca87b22d476bbbebfc418946f80055116a11` |
| 47 | `theorem` | [phase_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/phase-selfadjoint--aa9129320f9fa61e4e972fc9.md) | 298 | `result-track:aa9129320f9fa61e4e972fc9ce482c8caaa54118c5f41a2638eebe6a479ad386` |
| 48 | `theorem` | [phase_energy](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/phase-energy--7299725c98d6f8366bc322c1.md) | 306 | `result-track:7299725c98d6f8366bc322c12617ab1b720ec7a5a7091becebb0b090d2d368ae` |
| 49 | `theorem` | [step_add](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-add--cb40b662d3f37b4f123eb3ce.md) | 315 | `result-track:cb40b662d3f37b4f123eb3cefc9ccc55de5e8f27ee8e81565213c9a8ff8663af` |
| 50 | `theorem` | [step_scale](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-scale--c3e4bd96447a36413760356f.md) | 319 | `result-track:c3e4bd96447a36413760356f301aff5fa00108958052281e0456f4dcdf35e099` |
| 51 | `theorem` | [step_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-leftinverse--12f15412d96eebe699871e82.md) | 324 | `result-track:12f15412d96eebe699871e827b1fcf9f23914af14873de5b85bdc7703a4df90e` |
| 52 | `theorem` | [step_rightInverse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-rightinverse--5dc5ae3c7cce37dc1399e73a.md) | 331 | `result-track:5dc5ae3c7cce37dc1399e73af824a0624efd13eeab96769e9a8758f5b3dca31c` |
| 53 | `def` | [stepEquiv](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/stepequiv--7236ffc0e5d2608b4b0a7225.md) | 337 | `declaration-track:7236ffc0e5d2608b4b0a722564772d29f2c1bf3beec10240f0a4c5debd812f33` |
| 54 | `theorem` | [step_adjoint_inverse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-adjoint-inverse--03828b41a958ce0f811f0ed0.md) | 344 | `result-track:03828b41a958ce0f811f0ed0948459487a954a16f1f58dc6069317d9793db180` |
| 55 | `theorem` | [inverseStep_adjoint](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/inversestep-adjoint--3b8c2f3efddb35de0b9087bc.md) | 350 | `result-track:3b8c2f3efddb35de0b9087bc103cf35082c23998f198c422e60816dda7f4228e` |
| 56 | `theorem` | [step_energy](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-energy--9e522878a43cd12e0d58ae45.md) | 359 | `result-track:9e522878a43cd12e0d58ae4510f9889488fce9345a801c2387a646cb86b4fe00` |
| 57 | `def` | [uniformFour](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/uniformfour--21045b209a6b1149424963c6.md) | 364 | `declaration-track:21045b209a6b1149424963c67fe1f5f4706b91c012444e3d8f4f045c54dfa696` |
| 58 | `def` | [firstBasis](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/firstbasis--8e2762a500e5a70b21322292.md) | 369 | `declaration-track:8e2762a500e5a70b21322292879689227ba77584944a1e3bbd3158f269370769` |
| 59 | `def` | [fourthBasis](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/fourthbasis--d8db7121f34fad4c325e26f1.md) | 370 | `declaration-track:d8db7121f34fad4c325e26f1b09510cb9280fbe507337c0cf030124785f0dc43` |
| 60 | `def` | [lastMarked](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/lastmarked--39f9e0e5e5df40a6adefe0ac.md) | 371 | `declaration-track:39f9e0e5e5df40a6adefe0ac27e463eaab126e1c432ba48b35908290d8a74189` |
| 61 | `theorem` | [step_not_selfAdjoint_control](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-not-selfadjoint-control--0595c95d0cc7160d5404ca32.md) | 374 | `result-track:0595c95d0cc7160d5404ca321e445147788c2e85639ea3ca1922e18693ac8043` |
| 62 | `theorem` | [step_not_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/declarations/step-not-selfadjoint--8ee82f602ba0ac153d921016.md) | 382 | `result-track:8ee82f602ba0ac153d921016f134505a922fb81f9807c7b3b433e1434cbc3065` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
