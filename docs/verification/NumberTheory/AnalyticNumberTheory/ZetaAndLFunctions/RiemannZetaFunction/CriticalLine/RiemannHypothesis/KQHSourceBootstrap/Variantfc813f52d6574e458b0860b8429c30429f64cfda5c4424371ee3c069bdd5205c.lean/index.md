# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHSourceBootstrap.Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65cb55bf3e99b33a13632404ca2adabd5bb1c038",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65cb55bf3e99b33a13632404ca2adabd5bb1c038`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.KQHBootstrap` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshevPrimePower_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/chebyshevprimepower-nonneg--74775901f8d3a3c4002f17b6.md) | 26 | `result-track:74775901f8d3a3c4002f17b63afa8e3faf9ea9d3ed8212ab109f392d8c8d8cae` |
| 2 | `theorem` | [chebyshevPrimePower_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/chebyshevprimepower-mono--89331ca022627ed62cf5c76f.md) | 29 | `result-track:89331ca022627ed62cf5c76f7922694369ff225f5375939b107a04eb42e0c48f` |
| 3 | `theorem` | [normalizedPsiError_abs_le_on_interval](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/normalizedpsierror-abs-le-on-interval--88fb6bbac5f595fa58aa46e3.md) | 36 | `result-track:88fb6bbac5f595fa58aa46e3a5c406a8d931c751b80041e93bc7ad40c34280f1` |
| 4 | `theorem` | [residual_abs_le_chebyshev](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/residual-abs-le-chebyshev--5e198e07263a5b1246991074.md) | 53 | `result-track:5e198e07263a5b1246991074f3599d3dcf43188b391bcbe910a8091035c83dcb` |
| 5 | `def` | [finiteSourceBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/finitesourcebudget--bdd46a83563a0ee32f4c55fd.md) | 78 | `declaration-track:bdd46a83563a0ee32f4c55fde93d9e88ce4a6009b51d86831707df3f8b741aae` |
| 6 | `theorem` | [nonaffineWork_le_finiteSourceBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/nonaffinework-le-finitesourcebudget--266730b750ed1c04b3104d72.md) | 82 | `result-track:266730b750ed1c04b3104d72c0becaddf4c60c9527b9a841bd7cd91eadc3d792` |
| 7 | `theorem` | [nonaffine_image_bddAbove](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/nonaffine-image-bddabove--eebf961c4ea07e032f0db409.md) | 122 | `result-track:eebf961c4ea07e032f0db409c74d2f91769218e9eccc62d0a490c1db371b5a55` |
| 8 | `theorem` | [original_lower_of_native_bootstrap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/original-lower-of-native-bootstrap--29f3764ebbadadcf7783d37f.md) | 129 | `result-track:29f3764ebbadadcf7783d37ffe958abb1d4cd386186fa96c4c0c7818d23048fb` |
| 9 | `theorem` | [estimate_of_native_bootstrap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/estimate-of-native-bootstrap--ef1864317537191f62acca82.md) | 145 | `result-track:ef1864317537191f62acca82b35612b36e5ced947ec582bd228a58ac73b73d3c` |
| 10 | `theorem` | [original_lower_of_compensated_residual_cap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/original-lower-of-compensated-residual-cap--cac12f2eb013c55cb4d95b87.md) | 156 | `result-track:cac12f2eb013c55cb4d95b87edca7b135b6da1676e9dd5b26693b83f57aad226` |
| 11 | `theorem` | [estimate_of_compensated_residual_cap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/estimate-of-compensated-residual-cap--8e30a3c8a207e9301ef7faba.md) | 178 | `result-track:8e30a3c8a207e9301ef7faba80e0f9e5391793769ffb35a8cd10067314d37ff2` |
| 12 | `theorem` | [nonaffine_le_of_compensated_residual_cap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/declarations/nonaffine-le-of-compensated-residual-cap--4e27c66bf37453edee44367b.md) | 185 | `result-track:4e27c66bf37453edee44367b86d484a3222b01b9443bbb5f7eb714fd268c4732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
