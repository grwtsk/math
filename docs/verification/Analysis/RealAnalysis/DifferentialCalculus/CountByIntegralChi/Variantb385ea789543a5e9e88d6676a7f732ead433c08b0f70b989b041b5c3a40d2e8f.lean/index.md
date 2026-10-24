# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CountByIntegralChi.Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `924cc5c863b9429d18c53faf2ddb99bf66010592`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Analytic.RectangleLogDeriv` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.SeamL` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completedLSym](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlsym--55af4599e5822acc70a7d10c.md) | 33 | `declaration-track:55af4599e5822acc70a7d10c777d624964c6915313897220ff001a2e38babcf6` |
| 2 | `lemma` | [natCast_q_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/natcast-q-ne-zero--5cb0d4f7bedc3d7552211dfa.md) | 36 | `result-track:5cb0d4f7bedc3d7552211dfa3d04f34ec63e68d6b9e15b6dba75e404693a60bb` |
| 3 | `lemma` | [qpow_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/qpow-ne-zero--26ca35f7269b4ec8c852e8c1.md) | 38 | `result-track:26ca35f7269b4ec8c852e8c109301903414bb5e4d4e8c83761c9b4d28fe5ff1e` |
| 4 | `lemma` | [differentiable_qpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/differentiable-qpow--2b304614c70e98416d29f460.md) | 42 | `result-track:2b304614c70e98416d29f46005106803a38cf2bc196c75d91f0e17fb7087373b` |
| 5 | `lemma` | [hasDerivAt_qpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/hasderivat-qpow--a00c7a17d48b18d661a8b0f0.md) | 45 | `result-track:a00c7a17d48b18d661a8b0f0d7007249172d3aab107fc9f8b4e7dd9b40368d68` |
| 6 | `lemma` | [logDeriv_qpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/logderiv-qpow--f106a5294a4e64aa71bd99ed.md) | 50 | `result-track:f106a5294a4e64aa71bd99ed98cc9a9adb1811062a714155995942c7ae3525d5` |
| 7 | `lemma` | [differentiable_completedLSym](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/differentiable-completedlsym--7dc19625c08b785cca0b187f.md) | 54 | `result-track:7dc19625c08b785cca0b187fa5623d5e208dff5243c1abd97a5050b78690d2c6` |
| 8 | `lemma` | [completedLSym_eq_zero_iff'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlsym-eq-zero-iff--0b8c5e37aece86827b284fd3.md) | 57 | `result-track:0b8c5e37aece86827b284fd34692383147d2203d93eff8bad7ae76d380eaef67` |
| 9 | `lemma` | [logDeriv_completedLSym](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/logderiv-completedlsym--6a34f6d31bb7e32aa9f24897.md) | 62 | `result-track:6a34f6d31bb7e32aa9f24897f388d9480629faeaf0960162f68eb4cd42da715f` |
| 10 | `lemma` | [completedLSym_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlsym-one-sub--6f79e53dfbb32966a8b53002.md) | 69 | `result-track:6f79e53dfbb32966a8b530029af15d5afa4d25070b45df9a2d552d9330486770` |
| 11 | `lemma` | [completedLFunction_eq_zero_iff_of_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlfunction-eq-zero-iff-of-re-pos--154d7a012a712311edfb26bb.md) | 84 | `result-track:154d7a012a712311edfb26bb41bb02ba724605c15eb749249b48a7d44252266f` |
| 12 | `lemma` | [completedLFunction_ne_zero_of_one_le_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlfunction-ne-zero-of-one-le-re--4b559b677de8b0f0597c3df9.md) | 91 | `result-track:4b559b677de8b0f0597c3df9e38679592cdfb5d935548b7caf20e4a06800a9bd` |
| 13 | `lemma` | [completedLFunction_ne_zero_of_re_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlfunction-ne-zero-of-re-nonpos--6b99afbe68b23207ccb0e721.md) | 96 | `result-track:6b99afbe68b23207ccb0e7216489b5256d7e5e0d19e01a499cf2068fd3fec1bf` |
| 14 | `lemma` | [completedLFunction_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlfunction-eq-zero-iff--2ce4924386d882c264379bc2.md) | 108 | `result-track:2ce4924386d882c264379bc2e2f3547341f2fdd9851449b40ce141a758232fa2` |
| 15 | `lemma` | [completedLSym_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/completedlsym-eq-zero-iff--6610645395a74ffb7096eb55.md) | 123 | `result-track:6610645395a74ffb7096eb55713c8e3acff3f8c6614717bc1b7ab5dc94157421` |
| 16 | `lemma` | [analyticOrderNatAt_completedLFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/analyticordernatat-completedlfunction--84f50f88c7b79bb49a046e21.md) | 128 | `result-track:84f50f88c7b79bb49a046e219934506443f00bac1c3ee74dae9438bf5c4a8423` |
| 17 | `lemma` | [analyticOrderNatAt_completedLSym](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/analyticordernatat-completedlsym--f0c7a00cae8119676a2d7e8a.md) | 138 | `result-track:f0c7a00cae8119676a2d7e8a786b26cab9f46837372dd513d0715045ca52ddfb` |
| 18 | `lemma` | [logDeriv_completedLSym_split](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/logderiv-completedlsym-split--4560f52a53c37bb626abc290.md) | 152 | `result-track:4560f52a53c37bb626abc290134cc84fbe5af1b5e84c8911e3b07bc9eef599fa` |
| 19 | `theorem` | [rectangleIntegral'_logDeriv_completedLSym_eq_NcountL](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/declarations/rectangleintegral-logderiv-completedlsym-eq-ncountl--c28486980a8b1ac53f640bb8.md) | 175 | `result-track:c28486980a8b1ac53f640bb84f8d5afde1065eb93376be489d54602c70165ba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
