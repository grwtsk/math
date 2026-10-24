# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicRemainderAudit.Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a912423e032d75aa6f63893733276776a329b5ed",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a912423e032d75aa6f63893733276776a329b5ed`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetaconstant--d4344dc8693b1f4ef0cb90aa.md) | 19 | `declaration-track:d4344dc8693b1f4ef0cb90aaa73f59c1af6c1036e869f48e06e0636cb2309c40` |
| 2 | `def` | [thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetatail--0c5cfd0a487d284e7913b5b0.md) | 21 | `declaration-track:0c5cfd0a487d284e7913b5b0630210bed1fce0fe66824cb8b140802db124ecb8` |
| 3 | `def` | [thetaRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetaremainder--517b2c70fbb8f766ec092914.md) | 23 | `declaration-track:517b2c70fbb8f766ec0929148b7f1a84879e128361c5ffc40955795be04e5f0f` |
| 4 | `theorem` | [thetaLogError_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetalogerror-signed-integrable--4f4bfddabdc00c919aa2da33.md) | 25 | `result-track:4f4bfddabdc00c919aa2da331c85755b12b62c13b2827085103134064288aa25` |
| 5 | `theorem` | [thetaTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetatail-integrable--9a03b6892db13e82fe97b437.md) | 29 | `result-track:9a03b6892db13e82fe97b437d3ebdfdc6686529b94d7998dc2a984ddc5c9e8ee` |
| 6 | `theorem` | [prefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/prefix-add-tail--26ec776eeb19efa35b984428.md) | 33 | `result-track:26ec776eeb19efa35b984428a0e9afaebdb3e026bd76171d8e1a2f150ae76ee8` |
| 7 | `theorem` | [centered_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/centered-prefix-eq--11893c9ea070a0e6faa9a024.md) | 38 | `result-track:11893c9ea070a0e6faa9a024cf487505150eb64d05263205c381854f3c552ef4` |
| 8 | `theorem` | [thetaTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetatail-measurable--e67c51cfca223ce5067875e0.md) | 45 | `result-track:e67c51cfca223ce5067875e030ea6b493d23a616ccee73ee14ccfe0b879cb294` |
| 9 | `theorem` | [thetaRemainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetaremainder-measurable--0dccd8ff4881a35ecb110501.md) | 57 | `result-track:0dccd8ff4881a35ecb110501903357fcc8aa3274533fe9c5ff3ee48110b215e2` |
| 10 | `def` | [tailKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel--765fcaa69a697cd75bb04cd1.md) | 60 | `declaration-track:765fcaa69a697cd75bb04cd1a9a674723f609f260af2d388d6efb38d6d214f8a` |
| 11 | `theorem` | [tailKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel-measurable--005c6112b7da72bb4586c1eb.md) | 63 | `result-track:005c6112b7da72bb4586c1eb57bf1056177f284c2425b1e4af186d88163bd99d` |
| 12 | `theorem` | [tailKernel_fiber_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel-fiber-integrable--bcadf065c77fcc820577da43.md) | 67 | `result-track:bcadf065c77fcc820577da434d94730fe4b8fdd574ab6f44cf84fb5ab131e6a6` |
| 13 | `theorem` | [tailKernel_fiber_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel-fiber-integral--eeac6e7516b0f73daffb29f4.md) | 76 | `result-track:eeac6e7516b0f73daffb29f472e4e7def049e9443c445e973c1914f3b1678e50` |
| 14 | `theorem` | [tailKernel_fiber_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel-fiber-norm--80f98696fa6bb59c70367e2f.md) | 85 | `result-track:80f98696fa6bb59c70367e2f83b8576d2253a6d64936a38760504167d3dd9922` |
| 15 | `theorem` | [tailKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel-integrable--1074b480f09f8edac4e490db.md) | 95 | `result-track:1074b480f09f8edac4e490dba35d5ba49a34e03e7aae7e219b08b6d894497179` |
| 16 | `theorem` | [tailKernel_outer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/tailkernel-outer--dfcde4751349823a540977e9.md) | 104 | `result-track:dfcde4751349823a540977e91dccd27558b19073802a7442251d6c83511e7439` |
| 17 | `theorem` | [absolute_tail_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/absolute-tail-first-moment-integrable--d824a3539ea2daa22ef0229b.md) | 110 | `result-track:d824a3539ea2daa22ef0229bf97f86cf1e5a230f27775b42f937cf819da1b1ba` |
| 18 | `theorem` | [absolute_tail_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/absolute-tail-first-moment--583166b722113d641cbc63d8.md) | 116 | `result-track:583166b722113d641cbc63d8f505c12d5a91de230805a03a29a4cfba0fec6072` |
| 19 | `theorem` | [thetaRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetaremainder-abs-le--bdebb0971673bc6b98804ec8.md) | 132 | `result-track:bdebb0971673bc6b98804ec826cc987da98f7c69dedfacc74b5ad3fa37680c84` |
| 20 | `theorem` | [thetaRemainder_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetaremainder-first-moment-integrable--6706b0e964ef2a4b85cc8e3c.md) | 139 | `result-track:6706b0e964ef2a4b85cc8e3ca72871759993a4d36fcba91a5d3a4eeb91ccdee1` |
| 21 | `theorem` | [thetaRemainder_first_moment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/declarations/thetaremainder-first-moment-bound--2d4065d6eec3666f2c1f14d3.md) | 153 | `result-track:2d4065d6eec3666f2c1f14d3220a5d0d37267c5822d86c90c8056b8b5f147b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
