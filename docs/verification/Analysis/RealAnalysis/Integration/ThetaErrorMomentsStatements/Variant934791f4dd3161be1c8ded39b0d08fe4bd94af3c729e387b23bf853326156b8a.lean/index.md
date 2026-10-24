# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMomentsStatements.Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f312207aa53981d81d92b4a8842fe804439c20cb",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f312207aa53981d81d92b4a8842fe804439c20cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePrimePrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/sourceprimeprefix--7d6f56fd7126126816400aa4.md) | 15 | `declaration-track:7d6f56fd7126126816400aa431856fa9d557e4f506b77d3e74b49dde679dfcf6` |
| 2 | `theorem` | [sourcePrimePrefix_eq_theta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/sourceprimeprefix-eq-theta--7e71c411d3254e6e989f531d.md) | 18 | `result-track:7e71c411d3254e6e989f531d99d9b8b7381db468df94e9b5a6293475bdd233f7` |
| 3 | `def` | [thetaLogError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror--cc049d7e4ac872a4502e4146.md) | 38 | `declaration-track:cc049d7e4ac872a4502e41461f5c90cbac0a48859a24462ceb2d643be410bb70` |
| 4 | `theorem` | [thetaLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-eq--5eb87a882afe1066874e82f6.md) | 41 | `result-track:5eb87a882afe1066874e82f6a68558af094c7054f626aecfa20ecc73db56a742` |
| 5 | `theorem` | [thetaLogError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-measurable--04808a2d17b27d6ab288fad7.md) | 45 | `result-track:04808a2d17b27d6ab288fad7c448858c3dd1ec2f2ad16d1697a7d0d1a0bd4ed3` |
| 6 | `theorem` | [thetaLogError_abs_le_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-abs-le-global--a084a5ebab7f0d45d15e0eac.md) | 54 | `result-track:a084a5ebab7f0d45d15e0eac14599654f09605bae1093f27dd398c0a91c3782a` |
| 7 | `theorem` | [thetaLogError_abs_le_psi_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-abs-le-psi-error--193b7a01bb318752843d2dbd.md) | 70 | `result-track:193b7a01bb318752843d2dbd42b2f704a001211cb85b4b54543ef39b1966b771` |
| 8 | `theorem` | [thetaLogError_eventual_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-eventual-bound--34d5343903eae00672f6cc93.md) | 97 | `result-track:34d5343903eae00672f6cc931d3ce4e55188e27681189a53d1e5ab200e4d6427` |
| 9 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/polynomial-stretched-integrable--a66135a57a2ee4bfffaf0d0a.md) | 113 | `result-track:a66135a57a2ee4bfffaf0d0a73bdc1a79eb06188348cc42c3a012449245b6887` |
| 10 | `theorem` | [thetaLogError_moment_prefix_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-moment-prefix-integrable--55fd17c217eae2d3d0635f61.md) | 122 | `result-track:55fd17c217eae2d3d0635f613572d366c7d085fbc821d4f7733fa16add1df8fa` |
| 11 | `theorem` | [thetaLogError_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-moment-integrable--b8eeb6d0609ef461c5d95944.md) | 135 | `result-track:b8eeb6d0609ef461c5d95944c50862b557b1ec0382bcc2601e9de2de6da0b5fe` |
| 12 | `theorem` | [thetaLogError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-integrable--a1f17c17170aee36c2c57ae1.md) | 179 | `result-track:a1f17c17170aee36c2c57ae134a186d5a69fb6ae96aa6600b189e780a70292ca` |
| 13 | `theorem` | [thetaLogError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-first-moment-integrable--899e09a2c4092ef4739c2a4e.md) | 182 | `result-track:899e09a2c4092ef4739c2a4e415f37f0ee34071353ffa93fa2bf3b43582f6358` |
| 14 | `theorem` | [thetaLogError_second_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/thetalogerror-second-moment-integrable--8947281e83ecd078f9801905.md) | 186 | `result-track:8947281e83ecd078f9801905d805906a0376243fdd3b11824790f12afca2a4fb` |
| 15 | `theorem` | [theta_error_logarithmic_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/theta-error-logarithmic-moment-integrable--178e713e8afe1be70f4ef1d4.md) | 191 | `result-track:178e713e8afe1be70f4ef1d4a6183ca17c5a66afffb97ccf9fdb76fc90d8141d` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--76bce67c9046ca4a16d96c8c.md) | 203 | `declaration-track:76bce67c9046ca4a16d96c8c7d6a92cff880e26df89c5ba2d35ca1f2641bee6f` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--ce13c02936b1766efc3f96f8.md) | 207 | `declaration-track:ce13c02936b1766efc3f96f8f741becc3215807edbf2cb34fb2410e133ff9803` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--af8fb09acad28e941bb3f4e1.md) | 211 | `declaration-track:af8fb09acad28e941bb3f4e11cd5f22af42af74e88375881b0f56614eb92c3c2` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--9424f7455b44008b5413d591.md) | 214 | `declaration-track:9424f7455b44008b5413d5917c96f80b3f067cb9f001cc7f3e1e1d0c0809bbf2` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--a48b960ca069b648ce721cb6.md) | 218 | `declaration-track:a48b960ca069b648ce721cb685b8b3296454300ec91c47f69e1b42f76bc7b02d` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--22b65d565de58fffe19f825b.md) | 223 | `declaration-track:22b65d565de58fffe19f825b58ae40b1161c8ca95e46bb70ef260a430092abb3` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--0f3e8490675013ce318df00a.md) | 228 | `declaration-track:0f3e8490675013ce318df00ad710c8ce6fb2fbd5f5cd6dc817d16b3d3ec6d86a` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--799330c0d100d994e87dec3d.md) | 232 | `declaration-track:799330c0d100d994e87dec3dc0826999eef294ec36a0e08439d66aaf5edbfcbd` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--34af54e8029e55f3fed59b8a.md) | 236 | `declaration-track:34af54e8029e55f3fed59b8a5fbdb30a110856b14c6deb063bed3a1bdfb9ce6d` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--646de475c73bfa5d6de5ba0f.md) | 240 | `declaration-track:646de475c73bfa5d6de5ba0faf0f1d7d8a1971b673b416129bb33593c971c923` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--969f2d5f0bec097878e00b03.md) | 243 | `declaration-track:969f2d5f0bec097878e00b037d27420d618a1395aa21fce68a86b9e7454bb869` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--c4123e904fe2f928cd7416cc.md) | 247 | `declaration-track:c4123e904fe2f928cd7416ccf691788fd92ea698b75185db68aabd0eb7b5e937` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--c18cdf62720f65ac01f7220d.md) | 251 | `declaration-track:c18cdf62720f65ac01f7220d724c2a019db9c74a45a477dadf72ef23d6b53fc6` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--c00e13bcd7709ae38dfdd637.md) | 256 | `declaration-track:c00e13bcd7709ae38dfdd637a3d923a82899d0cf1a3d8bf7c318286db656dd2f` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsStatements/Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a.lean/declarations/example--fa0c1c9b73271a3320748287.md) | 259 | `declaration-track:fa0c1c9b73271a3320748287ed1b2f5133d6c7a4b71d0e8b1dd21b3ba27bed22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
