# Verification target: GRWTSK.Analysis.ComplexAnalysis.StrongPNT.Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c48c109844c36b325a02f1a5e0d04058a3d9ca2",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c48c109844c36b325a02f1a5e0d04058a3d9ca2`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere--907a32f402d7dc76f1accf0a.md) | 39 | `result-track:907a32f402d7dc76f1accf0a82e9c6ccac8a9b9cd66e49c893ae76cb245dd073` |
| 2 | `theorem` | [borelCaratheodory'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/borelcaratheodory--126a16e5cc4f66dfa4b65fc1.md) | 71 | `result-track:126a16e5cc4f66dfa4b65fc1d3bd0e896a75e25a1c2097e2bb46b7f8818ef318` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/cauchy-formula-deriv--463c588879c5030363fbde04.md) | 113 | `result-track:463c588879c5030363fbde04560123223b6f9b0d0a58e692ddd73535c89ca96d` |
| 4 | `lemma` | [DerivativeBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/derivativebound--4d39f45f7dd8e80925c2957e.md) | 152 | `result-track:4d39f45f7dd8e80925c2957e5a46863769d6c0d8098e6ddd334a1725b538ab54` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/borelcaratheodoryderiv--0d61f12f88402008ecb35a20.md) | 195 | `result-track:0d61f12f88402008ecb35a20bb8a663b7e0ce29d668a7861b32904b1b2f6ebb8` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logofanalyticfunction--64a406f2d57f7c5383d330cc.md) | 251 | `result-track:64a406f2d57f7c5383d330cc5670a0215a157ee3d3b1469aa2ae0b1563bd99e9` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logofanalyticfunction--d01b3a408a91f676c977df73.md) | 321 | `result-track:d01b3a408a91f676c977df732be365e03d100e30ad852eefaeaa07191c660540` |
| 8 | `def` | [SetOfZeros](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/setofzeros--a69dbb9ad1a3608b2c08c542.md) | 340 | `declaration-track:a69dbb9ad1a3608b2c08c542f0bc9e6826de592694017d9ad4a832472c7ca34c` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/finitesetofzeros-mono--7cd19977ec55dd4306e50c4d.md) | 344 | `result-track:7cd19977ec55dd4306e50c4db7c71aa1a266c4566b11d63800efd5b4dd2b8f15` |
| 10 | `def` | [ZeroFactor](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/zerofactor--db160b77ae1f37f1c36b9828.md) | 375 | `declaration-track:db160b77ae1f37f1c36b98285e348083ef1c0b7143cb96708d28ed4147b139ce` |
| 11 | `lemma` | [ZeroFactorization](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/zerofactorization--b5d19585b8cb971b801978ae.md) | 404 | `result-track:b5d19585b8cb971b801978ae8bfe2c58847c52eb25e84786ad554fbec5c1934f` |
| 12 | `def` | [Cf](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/cf--50f96d40282fdbf2601153c6.md) | 448 | `declaration-track:50f96d40282fdbf2601153c60e333aaad4753c6813dc60cbfbc4cfec20d420d9` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/analyticat-finset-prod-sub-pow--afe969b4327e7d5c56f2c238.md) | 458 | `result-track:afe969b4327e7d5c56f2c238d1a04a9287eb710baa3250b51c1563f4578873d4` |
| 14 | `lemma` | [CfAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/cfanalytic--08087fec0c086e79571c2722.md) | 481 | `result-track:08087fec0c086e79571c272206801b3fd38e8278d44e3ab49c403cb25b41abd9` |
| 15 | `def` | [BlaschkeB](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/blaschkeb--c475ab46d8462db30031f754.md) | 542 | `declaration-track:c475ab46d8462db30031f75465ed0e5a09f92b37fe76b11a8f6c235ff9c4c273` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/blaschkeanalytic--f232c69bf03bbbaa45bd108f.md) | 558 | `result-track:f232c69bf03bbbaa45bd108fa1d34c0385b02b93cb283d597ad37b4346f8e178` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/blaschkeofzero--3badf9061d94d55a0e717dca.md) | 595 | `result-track:3badf9061d94d55a0e717dca29e113bad7d0b57eb3ab178caa33ad96be1d9455` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/norm-fofzero-le-norm-blaschkeofzero--99e98e87b2ed2dd8c543a031.md) | 631 | `result-track:99e98e87b2ed2dd8c543a03112c14b7677ee5b356ae6f61e0eafc61578d155a6` |
| 19 | `lemma` | [DiskBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/diskbound--692e60f652ea54f8bfc9ed6c.md) | 677 | `result-track:692e60f652ea54f8bfc9ed6cb388ed14759a68abc40066d70933bd0d63432c4d` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/blaschkenonzero--6ce944f60570552bb13497a9.md) | 769 | `result-track:6ce944f60570552bb13497a98023acb01d7742c1fa0c9a7da4b5d06a6ad28383` |
| 21 | `theorem` | [ZerosBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/zerosbound--f7040ade36c6c1c37ebc56d8.md) | 832 | `result-track:f7040ade36c6c1c37ebc56d869eea961a75e98dd8794e830064463de9d4f74d3` |
| 22 | `def` | [JBlaschke](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/jblaschke--22887325a8c5dd8d88522ff0.md) | 872 | `declaration-track:22887325a8c5dd8d88522ff0179afbf5d16e4fe988d54fdb2a8372cc94351f60` |
| 23 | `theorem` | [JBlaschkeDerivBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/jblaschkederivbound--4ff9c226097b4c423cc11484.md) | 904 | `result-track:4ff9c226097b4c423cc114849b1fac1a399c2c7d53c8a22f53d547e2f02fbc9f` |
| 24 | `theorem` | [FinalBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/finalbound--d1dbc41f4ca32b4992e4c44a.md) | 974 | `result-track:d1dbc41f4ca32b4992e4c44ad76d569797050b689c4ce7c29b604a7c1e71dd1b` |
| 25 | `theorem` | [ZeroInequality](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/zeroinequality--e2a3aa915e1d5d26ab2560c0.md) | 1477 | `result-track:e2a3aa915e1d5d26ab2560c089d7de4977c06acaea809d50898ef1cb809e5e9b` |
| 26 | `def` | [E](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/e--ba007b46548f8f7d94326135.md) | 1488 | `declaration-track:ba007b46548f8f7d943261351e1a935f4493516a47526c4e1129361563ff818d` |
| 27 | `lemma` | [EinIoo](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/einioo--3f746eced5f30c8747d84eb4.md) | 1489 | `result-track:3f746eced5f30c8747d84eb41f308b351177fed1ff15492a5ca2359a514c71b1` |
| 28 | `theorem` | [ZeroInequalitySpecialized](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/zeroinequalityspecialized--f27717dccabafb332042db01.md) | 1490 | `result-track:f27717dccabafb332042db0126b25065f8c1c3b81919dd4d7c5133fe81df3b4d` |
| 29 | `def` | [DeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/deltat--3a71c6eb842990efdc001de9.md) | 1501 | `declaration-track:3a71c6eb842990efdc001de92824d6200152f8f3298963dd7f643fb418bf256b` |
| 30 | `lemma` | [DeltaRange](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/deltarange--0077880f4be8139f536bb2f9.md) | 1526 | `result-track:0077880f4be8139f536bb2f97f16c971bd8232924c35a68494b8d10f476f040f` |
| 31 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStrip](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logderivzetauniformlogsquaredboundstrip--a833fb16bc2b514925bb20ff.md) | 1643 | `result-track:a833fb16bc2b514925bb20ffeb8f992ae1a2847d35d2af323f63f237e05db986` |
| 32 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/f--1ef71c1cd37251ad9acdbf15.md) | 1652 | `declaration-track:1ef71c1cd37251ad9acdbf15c95e38a991e366d4013e500e5f2ecf411c85acc5` |
| 33 | `lemma` | [Fequ](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/fequ--6be1df456ac891ebd6951f45.md) | 1653 | `result-track:6be1df456ac891ebd6951f45bf126c71961c4a7a218ae3fffec224c1fd9b4505` |
| 34 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStripSpec](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logderivzetauniformlogsquaredboundstripspec--973a9f0c2e57020437558efc.md) | 1654 | `result-track:973a9f0c2e57020437558efc4f5025c4bb336306b745802fb24d37f23dc98b9b` |
| 35 | `lemma` | [FLogTtoDeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/flogttodeltat--fd7b65904de7ff68cb84f1a0.md) | 1660 | `result-track:fd7b65904de7ff68cb84f1a0eba5972a5ba22da26cbaea8e35b2da557741ae7c` |
| 36 | `lemma` | [LogDerivZetaBdd_of_Re_ge_three_halves](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logderivzetabdd-of-re-ge-three-halves--18d17adf96f025aa931d7888.md) | 1665 | `result-track:18d17adf96f025aa931d7888611c6f5c2800d9a04245052b3db4ee075907bf1b` |
| 37 | `theorem` | [LogDerivZetaUniformLogSquaredBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logderivzetauniformlogsquaredbound--a9571d89321f73dbf04da16f.md) | 1748 | `result-track:a9571d89321f73dbf04da16fdf0f5426bda21055d1c77149ad42d8053de65451` |
| 38 | `theorem` | [LogDerivZetaLogSquaredBoundSmallt](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logderivzetalogsquaredboundsmallt--0f901c84317243114f50aa13.md) | 1788 | `result-track:0f901c84317243114f50aa1326bad94280149b6371b2b5e730fa380543f7dfc1` |
| 39 | `def` | [I1New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i1new--09da3fb13ce854c2ce354ad1.md) | 1828 | `declaration-track:09da3fb13ce854c2ce354ad149f0589843c6284d0ba2f7e47171a77c97ac90a6` |
| 40 | `def` | [I5New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i5new--539c549d52d9eded983b2a83.md) | 1842 | `declaration-track:539c549d52d9eded983b2a83e85cfa0b2561e3fc0b504d421c8910c86c667227` |
| 41 | `lemma` | [IntegralLogSqOverTSqBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/integrallogsqovertsqbound--8eed7680898ba560bae7114b.md) | 1846 | `result-track:8eed7680898ba560bae7114b2151242426209647d987d323c363ec0c45102094` |
| 42 | `lemma` | [NormXPowS](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/normxpows--299203265e5fed79d9714abe.md) | 1899 | `result-track:299203265e5fed79d9714abe106d3feeeae24af05d098cd3d9abb9069eeb22f5` |
| 43 | `lemma` | [LogDerivZetaBoundForI1](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/logderivzetaboundfori1--92479e3d3e4ea76fba99422d.md) | 1904 | `result-track:92479e3d3e4ea76fba99422d2744785be617b7287d8ae32869ede90dd36fdf9f` |
| 44 | `lemma` | [I1NewIntegrandBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i1newintegrandbound--980cc0b2cb42e4c39aa31655.md) | 1922 | `result-track:980cc0b2cb42e4c39aa3165548e0b4e29c0981c3b3eb3ce92d28b488c09bfeb3` |
| 45 | `lemma` | [I1NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i1newbound--7f897b1e2c70fabf299d4efe.md) | 1988 | `result-track:7f897b1e2c70fabf299d4efeb04de21909aa52b65ec9f032d7820fa657d25d36` |
| 46 | `lemma` | [I5NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i5newbound--f960cdedbe791e0f4fac0fe9.md) | 2102 | `result-track:f960cdedbe791e0f4fac0fe928269603a32fe65e9a1d535548cadec0eb458e05` |
| 47 | `def` | [I2New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i2new--b069eac51ab2860d313af0fb.md) | 2136 | `declaration-track:b069eac51ab2860d313af0fb086d29ed04c8547d33a2a2e6109b1cec5077c2e1` |
| 48 | `def` | [I4New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i4new--60bca19e86e0ea3f0465fe7c.md) | 2150 | `declaration-track:60bca19e86e0ea3f0465fe7c2f7515226472f989daf15a7a3a3f5125f5d2eedc` |
| 49 | `lemma` | [I2NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i2newbound--79b1daa822fc73edb1d670d4.md) | 2183 | `result-track:79b1daa822fc73edb1d670d4b2290c11a6dfe902b281a7897ebab884e0f1bd67` |
| 50 | `lemma` | [I4NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i4newbound--704a57a9a5a25d64c366a1e6.md) | 2205 | `result-track:704a57a9a5a25d64c366a1e6da18a84c60846bd294672c7dcd1aaa26be248bf3` |
| 51 | `def` | [I3New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i3new--546d69a12ea2120a63c73659.md) | 2237 | `declaration-track:546d69a12ea2120a63c736596b32238f2754496640fb3ba82ae5ee42174c6512` |
| 52 | `lemma` | [I3NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/i3newbound--f2857688e48ce36400ddd437.md) | 2273 | `result-track:f2857688e48ce36400ddd4370712acc0557f57f4d19d4009e90369e21f09cf64` |
| 53 | `theorem` | [SmoothedChebyshevPull3](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/declarations/smoothedchebyshevpull3--a66f7f5cab65dab1b16c9464.md) | 2292 | `result-track:a66f7f5cab65dab1b16c94644e0402b71116ce01ba6c94ef226f065ddeef2e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
