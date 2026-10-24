# Verification target: GRWTSK.Analysis.ComplexAnalysis.StrongPNT.Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "febb261e8c76e0d4aec8c8de1ca02559ac821fcd",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `febb261e8c76e0d4aec8c8de1ca02559ac821fcd`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere--513657c0ade44236a1e83fd1.md) | 47 | `result-track:513657c0ade44236a1e83fd1a4fc98eb7583d493b0f7aae0e11d3b8058eb5c40` |
| 2 | `theorem` | [borelCaratheodory'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/borelcaratheodory--58889238b75f6bec651c3816.md) | 79 | `result-track:58889238b75f6bec651c381629e810d65c2d5fc040a2f5d469046c74ea8ebae5` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/cauchy-formula-deriv--c234d622e68f7c49c9bfd08b.md) | 121 | `result-track:c234d622e68f7c49c9bfd08b2d81d4f79a57fe12e31eb6f3212c196096c97b00` |
| 4 | `lemma` | [DerivativeBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/derivativebound--23dd13ee80c2c5588df3818c.md) | 160 | `result-track:23dd13ee80c2c5588df3818c55df7d8071247fd8ebabc10460948bb56a8fc060` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/borelcaratheodoryderiv--48c51e0e80ac5445b6e69003.md) | 203 | `result-track:48c51e0e80ac5445b6e69003ed078fc404e2bcbbcf2e6c4a9dd88ea3a07a2954` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logofanalyticfunction--6c25da860701c9f7024f2088.md) | 259 | `result-track:6c25da860701c9f7024f2088ac02fa3cf9793eb1c89484017b0b6c56cedc5dde` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logofanalyticfunction--dac8727f36dba729d842bc9c.md) | 329 | `result-track:dac8727f36dba729d842bc9cddaaf0dd6699c48f7c9787a1e1868002c7db1ec4` |
| 8 | `def` | [SetOfZeros](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/setofzeros--45449cf5b3d42c4e8c15972a.md) | 348 | `declaration-track:45449cf5b3d42c4e8c15972a00b8596d2b674b925a9265be7a4622db07108d46` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/finitesetofzeros-mono--359aae10fb8f01e23e7033eb.md) | 352 | `result-track:359aae10fb8f01e23e7033eb2a8fec4808094d5f3858b84aeabe023cb683a085` |
| 10 | `def` | [ZeroFactor](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/zerofactor--ad7b76b4d3a59d256cece2b5.md) | 383 | `declaration-track:ad7b76b4d3a59d256cece2b517e5ae5825772b38f631f735b3d45317bfebc881` |
| 11 | `lemma` | [ZeroFactorization](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/zerofactorization--513119585617df7ba0164b94.md) | 412 | `result-track:513119585617df7ba0164b94cb897bc5715894d193b242ac5b31307fd87679d9` |
| 12 | `def` | [Cf](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/cf--7307f4118d4032f386cdc079.md) | 456 | `declaration-track:7307f4118d4032f386cdc07943ed7696ca5006da9e123ca8b9250deb5c4f5b26` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/analyticat-finset-prod-sub-pow--24f32900b31ae4bec1f89c6e.md) | 466 | `result-track:24f32900b31ae4bec1f89c6e9ac57a623eb847489e1a57926a5b83879feeb7f2` |
| 14 | `lemma` | [CfAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/cfanalytic--a9ea9ad7ba12713f5c89b2e8.md) | 489 | `result-track:a9ea9ad7ba12713f5c89b2e8b1466b9611739af39d1b2ebc857c91ddc7481eec` |
| 15 | `def` | [BlaschkeB](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/blaschkeb--a8a6d7393dab88c89c3cd865.md) | 550 | `declaration-track:a8a6d7393dab88c89c3cd865b4c42af5b42bb5d8ad0f1ce820fc6eb81555ff02` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/blaschkeanalytic--aa74db7a9cee0453d9269505.md) | 566 | `result-track:aa74db7a9cee0453d9269505e5507f44427af8deab4b3f042b37e96a6b762912` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/blaschkeofzero--bcf4605548b32f5d2d135a7a.md) | 603 | `result-track:bcf4605548b32f5d2d135a7a5d6cd87de758da8193bcfd27f477602519630343` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/norm-fofzero-le-norm-blaschkeofzero--d63766c60d56f51e646d72aa.md) | 639 | `result-track:d63766c60d56f51e646d72aacf3fe6b898b25b2f0d7c66ab261d26e64f04238b` |
| 19 | `lemma` | [DiskBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/diskbound--5540c65d5fa9af5ba1a5887a.md) | 685 | `result-track:5540c65d5fa9af5ba1a5887accbd555f8363dd4b4a5eb483e14868f524bda85a` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/blaschkenonzero--d71566110fc6590688428189.md) | 777 | `result-track:d71566110fc6590688428189f17ac0788c8a0457d87d93866f39afb652897333` |
| 21 | `theorem` | [ZerosBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/zerosbound--2a27facad9330360455adafb.md) | 840 | `result-track:2a27facad9330360455adafb840f4462fb4728b8a070ed36075d71dfa289fa1f` |
| 22 | `def` | [JBlaschke](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/jblaschke--2c3e23dac6a8fd3913571e45.md) | 880 | `declaration-track:2c3e23dac6a8fd3913571e4555557ffd94f55b304f0b86ae10cea4eea315c63e` |
| 23 | `theorem` | [JBlaschkeDerivBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/jblaschkederivbound--90f8b498e12183d382535a71.md) | 912 | `result-track:90f8b498e12183d382535a7178fa2f0510adf036d8ec7d04c25ffbb7d6488f38` |
| 24 | `theorem` | [FinalBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/finalbound--a3de99962732bd11f9d1d9b1.md) | 982 | `result-track:a3de99962732bd11f9d1d9b1d498acd77d721f2f4cc0795e272ba63e4b5fc32a` |
| 25 | `theorem` | [ZeroInequality](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/zeroinequality--43a52e2aba2ec66fbc7f157b.md) | 1485 | `result-track:43a52e2aba2ec66fbc7f157b2842070b0ef030ef924e0f6acc034ee1518fa539` |
| 26 | `def` | [E](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/e--aeb46bf4775d656522aa75e1.md) | 1496 | `declaration-track:aeb46bf4775d656522aa75e19ec42bd552728d462b05cff89844139a9deb46c4` |
| 27 | `lemma` | [EinIoo](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/einioo--9ef12dfb01e3217b831c1d00.md) | 1497 | `result-track:9ef12dfb01e3217b831c1d00b2750d29301250fac8b229a507e923a321bab77d` |
| 28 | `theorem` | [ZeroInequalitySpecialized](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/zeroinequalityspecialized--703f1e11248abaeb50957ebe.md) | 1498 | `result-track:703f1e11248abaeb50957ebe79751913a3fbd8093c1ff5ec620bf8002d54e596` |
| 29 | `def` | [DeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/deltat--8e2da891a7feca0c0bea72fb.md) | 1509 | `declaration-track:8e2da891a7feca0c0bea72fb38c8cf6a856e41e59bd6d67d74a09bfabfa5ff2b` |
| 30 | `lemma` | [DeltaRange](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/deltarange--fb24742fb233112e7c6b7914.md) | 1534 | `result-track:fb24742fb233112e7c6b791468a6de8076a2fa7be146172612e3c6bc1f245997` |
| 31 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStrip](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logderivzetauniformlogsquaredboundstrip--8c34112ddf471dc097b270b1.md) | 1651 | `result-track:8c34112ddf471dc097b270b149324d0bd23546ac5f7482153be120d279055aec` |
| 32 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/f--47a22bec9c1f37f82db07687.md) | 1660 | `declaration-track:47a22bec9c1f37f82db07687e4faf89487b7e81549fc15a2cf48c070574778a0` |
| 33 | `lemma` | [Fequ](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/fequ--b5900b306cc0b61450cc47de.md) | 1661 | `result-track:b5900b306cc0b61450cc47de68820ac2d2c1fb3824395ede219dd5bd56d255f8` |
| 34 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStripSpec](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logderivzetauniformlogsquaredboundstripspec--539d403219f7edcab45918c5.md) | 1662 | `result-track:539d403219f7edcab45918c51d3e87d39e26993c81b45e08459cf54427835850` |
| 35 | `lemma` | [FLogTtoDeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/flogttodeltat--2b5778712f77efd28f723804.md) | 1668 | `result-track:2b5778712f77efd28f723804ec38659a8e1361e621e67b9c5e1fafe82fe17119` |
| 36 | `lemma` | [LogDerivZetaBdd_of_Re_ge_three_halves](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logderivzetabdd-of-re-ge-three-halves--6ffa1eba60a67444728e1108.md) | 1673 | `result-track:6ffa1eba60a67444728e11089409451a3bc3f196424fc63100cc63067190bca3` |
| 37 | `theorem` | [LogDerivZetaUniformLogSquaredBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logderivzetauniformlogsquaredbound--6890781f013529d8f5e925bf.md) | 1756 | `result-track:6890781f013529d8f5e925bf42eb2febaa29e29a78d6ae3942911aa5ec6c35a0` |
| 38 | `theorem` | [LogDerivZetaLogSquaredBoundSmallt](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logderivzetalogsquaredboundsmallt--0ea45169c6ce18afbc5c3fbb.md) | 1796 | `result-track:0ea45169c6ce18afbc5c3fbbc696bd3453f1a748bf53fee3f376ec1fce8427d0` |
| 39 | `def` | [I1New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i1new--1d92468b6646045e0fb116cc.md) | 1836 | `declaration-track:1d92468b6646045e0fb116cc50825d97f4a3bcb8c6e05a2cbab0152957444953` |
| 40 | `def` | [I5New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i5new--744fca691f0baf70059ffcc8.md) | 1850 | `declaration-track:744fca691f0baf70059ffcc8b5700dd933592ffc9a9c01b1983a11ae2d654b6b` |
| 41 | `lemma` | [IntegralLogSqOverTSqBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/integrallogsqovertsqbound--9ae74955fdccc4ac50b25421.md) | 1854 | `result-track:9ae74955fdccc4ac50b254218dd322d969676a254d6757e19941c32a4e74186f` |
| 42 | `lemma` | [NormXPowS](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/normxpows--676a318aafad34ea5def2442.md) | 1907 | `result-track:676a318aafad34ea5def2442d454f5a0b4411db0ddcb23c1a365d408294bfcc4` |
| 43 | `lemma` | [LogDerivZetaBoundForI1](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/logderivzetaboundfori1--88950f77c63bf40e727a133b.md) | 1912 | `result-track:88950f77c63bf40e727a133bf46f558758d9449bbcf9210446948f10db644c7a` |
| 44 | `lemma` | [I1NewIntegrandBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i1newintegrandbound--a4f1aaa604752f1f777f007d.md) | 1930 | `result-track:a4f1aaa604752f1f777f007d934ad2b7aa047b823e4045505085e9d19d1a8328` |
| 45 | `lemma` | [I1NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i1newbound--5ec3682b0c7bb6a6dcf73b18.md) | 1996 | `result-track:5ec3682b0c7bb6a6dcf73b18aaf03530f3bfb19619bf18a4c4d5459e7da44853` |
| 46 | `lemma` | [I5NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i5newbound--2958bca51d462875902e23bc.md) | 2110 | `result-track:2958bca51d462875902e23bc41dc1c6dc81f9a1bd95e55f8281d16b314c2609c` |
| 47 | `def` | [I2New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i2new--23da7e92e7bd315c82af0351.md) | 2144 | `declaration-track:23da7e92e7bd315c82af03513cd92a8119331bf208b715795c2226312c60b18e` |
| 48 | `def` | [I4New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i4new--873038d38426f875dcf6ff61.md) | 2158 | `declaration-track:873038d38426f875dcf6ff61d464a417c545d4abba69360cd538ffd7bc27da09` |
| 49 | `lemma` | [I2NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i2newbound--910a7581b51a0333b9d903cb.md) | 2191 | `result-track:910a7581b51a0333b9d903cb14a7e65b0311efa37b447a1c87e4911f9efe9b24` |
| 50 | `lemma` | [I4NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i4newbound--5aa5bbba9b64054d39b9faaa.md) | 2213 | `result-track:5aa5bbba9b64054d39b9faaa411f6e98a2a99d0fadc6387aac1fedb5ab3c09ba` |
| 51 | `def` | [I3New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i3new--801c6ae33f7a4e19578878ff.md) | 2245 | `declaration-track:801c6ae33f7a4e19578878ffe7dc5a923eac8387316a17e605ed9eb6e1d05cc6` |
| 52 | `lemma` | [I3NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/i3newbound--1abad444c5880591563e5099.md) | 2281 | `result-track:1abad444c5880591563e50993d91595b734d07f8a623210804355f7130e9bcd9` |
| 53 | `theorem` | [SmoothedChebyshevPull3](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/declarations/smoothedchebyshevpull3--09595472653d88abf2acc3ba.md) | 2300 | `result-track:09595472653d88abf2acc3baa17889274d4f03c6f940102f1d6d362a475f8942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
