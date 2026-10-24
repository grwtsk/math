# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMomentsStatements.Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53a19799ef695dbb7144f8cb7b71e34ab8218575",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53a19799ef695dbb7144f8cb7b71e34ab8218575`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePrimePrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/sourceprimeprefix--b9a221c43fdd657b9022beff.md) | 23 | `declaration-track:b9a221c43fdd657b9022beffa65774cc863a54ba78af1877551119933e5ea75c` |
| 2 | `theorem` | [sourcePrimePrefix_eq_theta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/sourceprimeprefix-eq-theta--8e7964838e3ab578a9805ffa.md) | 26 | `result-track:8e7964838e3ab578a9805ffaccfc429bf665375ac0c6efaeedf68e3c3d4fc284` |
| 3 | `def` | [thetaLogError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror--d6cf18b4993708120f15c1c3.md) | 46 | `declaration-track:d6cf18b4993708120f15c1c31dcb503f42460605298e5ec7d4b97e3fe6b14e0d` |
| 4 | `theorem` | [thetaLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-eq--b6b5ec5ca877d53c8cf7d376.md) | 49 | `result-track:b6b5ec5ca877d53c8cf7d37678ab976d387b99dad7058e488b4d801d0849b6f3` |
| 5 | `theorem` | [thetaLogError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-measurable--562ab97ca1126b7f726b91ec.md) | 53 | `result-track:562ab97ca1126b7f726b91ecccdfca641ef21b4be9c1129258f62d338d15909c` |
| 6 | `theorem` | [thetaLogError_abs_le_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-abs-le-global--c358a3dff6e6ec9bb8546e12.md) | 62 | `result-track:c358a3dff6e6ec9bb8546e12dd3484255fcc7ce06bca13cc191c0a5ede402a99` |
| 7 | `theorem` | [thetaLogError_abs_le_psi_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-abs-le-psi-error--2f1d96cd0c6691b84b79789c.md) | 78 | `result-track:2f1d96cd0c6691b84b79789c49125f79543c89ccdddc191ead5543074032e3eb` |
| 8 | `theorem` | [thetaLogError_eventual_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-eventual-bound--333e8ab6377db0a7cde347f5.md) | 105 | `result-track:333e8ab6377db0a7cde347f54edfd6249587cd0dbd8bf3c242f973f5f830e480` |
| 9 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/polynomial-stretched-integrable--122cd8a3407aaa7538dcf099.md) | 121 | `result-track:122cd8a3407aaa7538dcf099e6ffed485fe2983614acededd7f43ca9aacf45c1` |
| 10 | `theorem` | [thetaLogError_moment_prefix_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-moment-prefix-integrable--ae6492a53279e2756e66e73d.md) | 130 | `result-track:ae6492a53279e2756e66e73d4da84ce38a27b28674a4db9e666b2e3bdb388fdb` |
| 11 | `theorem` | [thetaLogError_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-moment-integrable--819685e9e5978f0ad9a0e604.md) | 143 | `result-track:819685e9e5978f0ad9a0e60494e6f51407bd7441c40dabcb071e0105e9df2c54` |
| 12 | `theorem` | [thetaLogError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-integrable--59b14902eb7668bb788decb3.md) | 187 | `result-track:59b14902eb7668bb788decb3718ed42d0eca1523d840aa496c1f73c0842dadfc` |
| 13 | `theorem` | [thetaLogError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-first-moment-integrable--17cb4898cd0d2ed43020f453.md) | 190 | `result-track:17cb4898cd0d2ed43020f453d34a57a84dda5beaab43e58f8feaa19ab8cdf21e` |
| 14 | `theorem` | [thetaLogError_second_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/thetalogerror-second-moment-integrable--669812bad62c91e0e6c0fc3d.md) | 194 | `result-track:669812bad62c91e0e6c0fc3d8ff19565e0b0d0e57a9099a705be39e6a92821c1` |
| 15 | `theorem` | [theta_error_logarithmic_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/theta-error-logarithmic-moment-integrable--dc30f543a2ed6080daa5428f.md) | 199 | `result-track:dc30f543a2ed6080daa5428fa6b7e7f479bdf347662131246f72927acfdffa7f` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--0afcb90d75ef6a25c127aa7e.md) | 211 | `declaration-track:0afcb90d75ef6a25c127aa7eb18c1a4961bec6ab79b874a32164321d99074a61` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--a4ebab482121e6d000071adf.md) | 215 | `declaration-track:a4ebab482121e6d000071adf96de610d4bc7db55d3845bb0bfd76b422cd3ebb0` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--6926adcf3f850b5b89315a50.md) | 219 | `declaration-track:6926adcf3f850b5b89315a509e5c4cdde1bbc3ef299d90e4f959b7f54f897755` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--389bd8fe000bf631572e71b4.md) | 222 | `declaration-track:389bd8fe000bf631572e71b4b3c69903aa9c2d3bb6c1987b102c66e229e64042` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--cf945163226496959d038dcb.md) | 226 | `declaration-track:cf945163226496959d038dcbf71824e9d99bb89bdf610285adec93b89c1d3d4f` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--55f8e7d3fe8c904abe8af3ea.md) | 231 | `declaration-track:55f8e7d3fe8c904abe8af3ea8df9ef7f314b5ba2e416ab2e6a90a09db12b6761` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--ffb8aab3ce257b27d7868080.md) | 236 | `declaration-track:ffb8aab3ce257b27d7868080cef5fb80500b8c6615c089ec43081b3adcdf4b1d` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--d75a8202e06c88f812da6b7e.md) | 240 | `declaration-track:d75a8202e06c88f812da6b7ee2cd56cd352293757ef6a2fe07a68a5c16b5686a` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--f8c3641447855316bcf182aa.md) | 244 | `declaration-track:f8c3641447855316bcf182aa2fde099127284deec6f7150ef2286fee62978168` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--ab68d97ccf8b7d930837ee84.md) | 248 | `declaration-track:ab68d97ccf8b7d930837ee84c13b98354f116cc13f52f8cd7278eada977f3052` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--32c30267809f6ad1c4e049ed.md) | 251 | `declaration-track:32c30267809f6ad1c4e049ed74d9a19b61f53097e60ca97c4f451cbf4d44d0c7` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--f8f823ec24b5794cd78dc2fd.md) | 255 | `declaration-track:f8f823ec24b5794cd78dc2fdea041cf355b188c8af7c8dee891f143416067216` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--a0b8e98945d862a0bb3372f8.md) | 259 | `declaration-track:a0b8e98945d862a0bb3372f8e262e67e5e55dd64676e9140c06c57889f5480ee` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--d0b863c63ada56397ae75895.md) | 264 | `declaration-track:d0b863c63ada56397ae7589550da4f9ba6869c2cb40c8ee81adffc1968ec3c7b` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variantfdcec462b9bc3c346d2f21e18a0abc4db8ce6efb2bce9e96519dd94dd467b65c.lean/declarations/example--5a8c0df4aa783b1ad0b64ac2.md) | 267 | `declaration-track:5a8c0df4aa783b1ad0b64ac21fc656c945c99eb152753543d55db5a14ca84cce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
