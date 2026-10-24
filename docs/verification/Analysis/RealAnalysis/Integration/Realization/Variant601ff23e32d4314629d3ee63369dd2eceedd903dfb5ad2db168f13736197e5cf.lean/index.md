# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Realization.Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f698a8b967edc415191fa637d8842bb19398563",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f698a8b967edc415191fa637d8842bb19398563`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/bumpinterior--8a1f0b6773aeb439d117feb7.md) | 30 | `declaration-track:8a1f0b6773aeb439d117feb7aff493f97b4565ba672f8b6dbb8437196158097e` |
| 2 | `def` | [firstInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/firstinterior--973d7680a9770bf5fa498b11.md) | 33 | `declaration-track:973d7680a9770bf5fa498b11af5e737e6b0482145f67ecacecfb251576993b4f` |
| 3 | `def` | [secondInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/secondinterior--898bb81494d16b09e9d0d34a.md) | 38 | `declaration-track:898bb81494d16b09e9d0d34ad17d79c464130a80a87c77bdf66596100c3b502e` |
| 4 | `def` | [explicitSecondDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/explicitsecondderivative--4e0a4b38f4fc8b31c103b000.md) | 43 | `declaration-track:4e0a4b38f4fc8b31c103b0000bf096cabf88571c591a402d55ae804d3ac2e300` |
| 5 | `theorem` | [scaledBump_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/scaledbump-eq-indicator--6a64567595c10f61b2e0d144.md) | 47 | `result-track:6a64567595c10f61b2e0d144cbca429922876c2403e33963d7317949ac1d8a98` |
| 6 | `theorem` | [bumpInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/bumpinterior-continuous--c9b2de5378b1626ec15e103a.md) | 57 | `result-track:c9b2de5378b1626ec15e103ae77f79743f44de32d31d3a7c62b8c4cf3abe6c84` |
| 7 | `theorem` | [firstInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/firstinterior-continuous--6ab6c35b6d1b45553f826556.md) | 62 | `result-track:6ab6c35b6d1b45553f826556069804c79299f2eadff1ba14102dc5244bb62329` |
| 8 | `theorem` | [secondInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/secondinterior-continuous--83aed491dd48f0c509c38090.md) | 67 | `result-track:83aed491dd48f0c509c38090250f0aaef84ba8f6a0c76057d2438c52acc0bc11` |
| 9 | `theorem` | [bumpInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/bumpinterior-hasderivat--36450632ca5ecd19bff9ec79.md) | 72 | `result-track:36450632ca5ecd19bff9ec79e1a29155185a96f7f318fba7df65a48334b39d74` |
| 10 | `theorem` | [firstInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/firstinterior-hasderivat--c3f298be3005af7bfa19ce8e.md) | 82 | `result-track:c3f298be3005af7bfa19ce8ef750ad688289e88b0c322f3b40aab877d9d361d7` |
| 11 | `theorem` | [bumpInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/bumpinterior-endpoints--bcf1685719cb50fce1dc1c89.md) | 94 | `result-track:bcf1685719cb50fce1dc1c89c6d087a60f92f1d962a0667a2173201a6787ff9c` |
| 12 | `theorem` | [firstInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/firstinterior-endpoints--a7faad1115b16ab22bb23842.md) | 99 | `result-track:a7faad1115b16ab22bb23842bad4f891d694acb0c5e877d4e5d3ad261a5f51ff` |
| 13 | `theorem` | [secondInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/secondinterior-endpoints--c0999ef23cf64d197d93c2ad.md) | 104 | `result-track:c0999ef23cf64d197d93c2adbc27e87ae743a04818f42c70d95f7afe4dd70201` |
| 14 | `theorem` | [integrable_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/integrable-zeroextension--e8c296765e23a619a23b4355.md) | 109 | `result-track:e8c296765e23a619a23b4355defc347e1ab0a6d520b146a5fab5046b992a755c` |
| 15 | `theorem` | [zeroExtension_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/zeroextension-integral--97fd7783e878a28f3e1375ef.md) | 114 | `result-track:97fd7783e878a28f3e1375efc266aaf4d2ef75870713164a4e2b4aa69658f5ca` |
| 16 | `theorem` | [scaledBump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/scaledbump-integrable--9b84142655595bb4a814d098.md) | 120 | `result-track:9b84142655595bb4a814d0980b362bdf59e9fb378d37f65e920a6fc994738623` |
| 17 | `theorem` | [explicitSecondDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/explicitsecondderivative-integrable--11255cb1504263859e71826a.md) | 126 | `result-track:11255cb1504263859e71826a3003c5470392a956ff03204e98b05d3837f78024` |
| 18 | `theorem` | [scaledBump_weak_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/scaledbump-weak-second-derivative--bb1297cb0e4342458c796f89.md) | 132 | `result-track:bb1297cb0e4342458c796f899630fdf9ff28ec408566ccaeea449808c6c565c4` |
| 19 | `theorem` | [explicit_dilationTest_zero_extension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/explicit-dilationtest-zero-extension--37404fc3829c860030f642e4.md) | 175 | `result-track:37404fc3829c860030f642e42e6c4ce0fc1e61a4ffe697ca77d1d8e87a4c0375` |
| 20 | `theorem` | [explicit_dilationTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/explicit-dilationtest-integrable--5c7cbd3c37d906dcdf0a9f94.md) | 183 | `result-track:5c7cbd3c37d906dcdf0a9f94472ddff81dd0ae4a281fc0532a40c14975ae57f1` |
| 21 | `theorem` | [explicit_dilationTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/explicit-dilationtest-eq-indicator--efb99cd74b6dc15daf26620b.md) | 190 | `result-track:efb99cd74b6dc15daf26620b671264c938b80e690a7f2c4990a2ab447c0ce7a2` |
| 22 | `theorem` | [explicit_dilationTest_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf.lean/declarations/explicit-dilationtest-square-integrable--c9a2ca9d0f34e3141a99db9d.md) | 199 | `result-track:c9a2ca9d0f34e3141a99db9d8fdbe832aa19e1864980d693b0fcb8c54a454c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
