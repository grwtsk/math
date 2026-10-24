# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Moments.Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a92ed0f36cab22f4a2b267676994a4109b8c7336",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a92ed0f36cab22f4a2b267676994a4109b8c7336`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellcorrection--e39b7b50a58f3a76e9130464.md) | 15 | `declaration-track:e39b7b50a58f3a76e913046431ab84a0381e3a3f7f6a2c14efbd752b6a57cee8` |
| 2 | `def` | [cellMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellmajorant--756a2dc018184cbeeee16fe9.md) | 21 | `declaration-track:756a2dc018184cbeeee16fe9b28ab5e8e4e78b6b636b9d88d127c56582d6ea40` |
| 3 | `def` | [majorantPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/majorantprimitive--bc9ddda668e32574c2a2345c.md) | 24 | `declaration-track:bc9ddda668e32574c2a2345c53cb0a10bb8c16a06f41697da68db0c8f5eaaf4c` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/majorantprimitive-hasderivat--fab297943ad440f8f3b15f13.md) | 26 | `result-track:fab297943ad440f8f3b15f1336eead3dc1f1a3d961b0cb80e88c7b74f9d534db` |
| 5 | `theorem` | [cellMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellmajorant-continuouson--4ebaebc80b39f7fca516ca4b.md) | 36 | `result-track:4ebaebc80b39f7fca516ca4ba7d7eb15c2e51bccde5637ff57239c327100c75d` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellmajorant-intervalintegrable--63d29a3c0cb821021c2d5262.md) | 42 | `result-track:63d29a3c0cb821021c2d52621e4812ca759940f607f65b95e388734a282707eb` |
| 7 | `theorem` | [cellMajorant_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellmajorant-integral-eq--4d2b567f58984f53674a074d.md) | 47 | `result-track:4d2b567f58984f53674a074db0480821f1eb42f08613777764cceab18e4598e0` |
| 8 | `theorem` | [cellMajorant_integral_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellmajorant-integral-le-four--08395f9cb5556f13bc0a24d0.md) | 57 | `result-track:08395f9cb5556f13bc0a24d03fd873b51fdc5ee4a7cb5446646cd86db8ca042c` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/sourcecorrelation-log-increment-bound--386357cc8b37774cc1e1e4b3.md) | 64 | `result-track:386357cc8b37774cc1e1e4b3030033c7b25f5333dc83ae9824cbf16ad193cef2` |
| 10 | `theorem` | [log_cell_increment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/log-cell-increment-le--ddd7838c6b5ac89ea6bc9956.md) | 89 | `result-track:ddd7838c6b5ac89ea6bc995630285628f3a63f310b5b066c3f9bb68a70175cc3` |
| 11 | `theorem` | [cell_integrand_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cell-integrand-abs-le--f51e32ff531b328f0e30faf1.md) | 102 | `result-track:f51e32ff531b328f0e30faf16782dd92093f5aac49ccab19cf34c5a8c07f2661` |
| 12 | `theorem` | [div_sqrt_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/div-sqrt-continuouson--6a93c5c313aeb6e610aca50f.md) | 123 | `result-track:6a93c5c313aeb6e610aca50fa0dd771efecd944f54e2259adf4d8a3826a3b402` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellintegrand-intervalintegrable--985dc99ba149328cf296c720.md) | 130 | `result-track:985dc99ba149328cf296c7209409cb9d289023f134079ae749ec4aab8da5dd0d` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellcorrection-abs-le-majorant--4b129c45f9ba95aaf3041586.md) | 144 | `result-track:4b129c45f9ba95aaf30415860a3e13649c9b5740e9e803ef642a9bf19ef27802` |
| 15 | `theorem` | [sum_cellMajorant_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/sum-cellmajorant-integrals--58d3dbe1474d2cf4762e2a35.md) | 163 | `result-track:58d3dbe1474d2cf4762e2a3538459877425ad893d5863495f67a8424cde34eb0` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/sum-cellcorrection-abs-le--2bb981a6f9f180656b3e1346.md) | 176 | `result-track:2bb981a6f9f180656b3e1346c4c119f6e0710d6b0473d542bfd5cc904bef5118` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/sum-sourcecorrelation-cell-transport-le--3485133c0af4d3db49a3235f.md) | 195 | `result-track:3485133c0af4d3db49a3235f2d1b733f18626c84abb0bc396364b7898e3f4317` |
| 18 | `theorem` | [constant_cell_transport_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/constant-cell-transport-zero--abc8402e5851ad5161e0bedf.md) | 204 | `result-track:abc8402e5851ad5161e0bedf27f073c2303906b44c0ed6300fb2c64455000b85` |
| 19 | `def` | [cellFirstMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellfirstmoment--f64da6d0994b855141330bf1.md) | 208 | `declaration-track:f64da6d0994b855141330bf1816862fbe3ca530a41f994c86b82db5e6b0687da` |
| 20 | `def` | [cellSecondMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellsecondmoment--e23758410198d5ecaf037d9b.md) | 212 | `declaration-track:e23758410198d5ecaf037d9b176a5339403dc10cf070946ce535b6cbb2ce5939` |
| 21 | `def` | [cellTaylorRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/celltaylorremainder--a489428927e258eb5aa2d923.md) | 216 | `declaration-track:a489428927e258eb5aa2d9235ce67ba03d5b084d9f76ae1805928d53e63f746b` |
| 22 | `theorem` | [cellFirstMoment_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellfirstmoment-integrand-intervalintegrable--4dffec7c66469f8939faa2c9.md) | 223 | `result-track:4dffec7c66469f8939faa2c99f1f557f226b0138c9d6e5de6941fde9fa8c3449` |
| 23 | `theorem` | [cellSecondMoment_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellsecondmoment-integrand-intervalintegrable--7d5f65a957fe064bbf2f4d44.md) | 232 | `result-track:7d5f65a957fe064bbf2f4d44eab5c3cad647aa2f1be5d7e629a442cf07c71ddf` |
| 24 | `theorem` | [cellFirstMoment_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellfirstmoment-nonneg--fb89eabbc55584b471da79d9.md) | 241 | `result-track:fb89eabbc55584b471da79d9a56e35195c964b539a72767fb73f8a6c5398a840` |
| 25 | `theorem` | [remainder_integrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/remainder-integrand-eq--12a38aa4ab074ac04c0a19b9.md) | 247 | `result-track:12a38aa4ab074ac04c0a19b9d3fd77a6863b992c2f97004bc11e72de74710613` |
| 26 | `theorem` | [cellTaylorRemainder_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/celltaylorremainder-eq--eb6d6dc151fd6e74e7f20e4d.md) | 259 | `result-track:eb6d6dc151fd6e74e7f20e4de1fa74529ca9ee6ac79a5b798c9a96b4019e0d70` |
| 27 | `theorem` | [cellCorrection_eq_firstMoment_add_remainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/cellcorrection-eq-firstmoment-add-remainder--de1f6193ff4a63a313220ccd.md) | 271 | `result-track:de1f6193ff4a63a313220ccdc525120ddbce48f49400e395e346903d76a50f6a` |
| 28 | `theorem` | [remainder_integrand_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/remainder-integrand-abs-le--026e889319b4949b9e287f5e.md) | 279 | `result-track:026e889319b4949b9e287f5e339c69c9d921252d137e69a2359f73d7cf35d63e` |
| 29 | `theorem` | [cellTaylorRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/declarations/celltaylorremainder-abs-le--55508d432ec12c80d0137ce9.md) | 306 | `result-track:55508d432ec12c80d0137ce9a2fc2a9ced5453caaf2ce1ab34710a6e2ea1ae5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
