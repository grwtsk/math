# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Effective.Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401f1318bdac29d95211200b7315ce03b0c8f64d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.ZetaGrowth` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Landau` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaValues` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaFactsChiProof` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_growth_quarter_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/zeta-growth-quarter-explicit--887158598525141b45611c89.md) | 39 | `result-track:887158598525141b45611c898771782e8f3b58cce597e587cf0955e5c6473dc4` |
| 2 | `theorem` | [zeta_logDeriv_partial_fraction_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/zeta-logderiv-partial-fraction-explicit--4d5c8063db18d1848cb9831b.md) | 57 | `result-track:4d5c8063db18d1848cb9831bf08f10d473b6e7b6244c5b36612e2c3565f0df4b` |
| 3 | `theorem` | [mu_eq_muq01](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/mu-eq-muq01--3d1e73f5d441d22eec2d2b0f.md) | 307 | `result-track:3d1e73f5d441d22eec2d2b0f175b0741690797a23b17452fb4e4f0b83afe4b18` |
| 4 | `theorem` | [mu_deriv_bound_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/mu-deriv-bound-explicit--572a6a30617ae7e76fb5a4b0.md) | 322 | `result-track:572a6a30617ae7e76fb5a4b06b1dd1e9617dad469e1bd8b2bcc8271b705bcf3b` |
| 5 | `theorem` | [mu_increment_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/mu-increment-explicit--3221956d7ea4d302b89636b5.md) | 333 | `result-track:3221956d7ea4d302b89636b57d33ebe70557fd5d4d54f1bd9d9d1a0b56fec37d` |
| 6 | `theorem` | [zeta_local_count_explicit_large](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/zeta-local-count-explicit-large--dc5bfed7dc6ecc673f729585.md) | 437 | `result-track:dc5bfed7dc6ecc673f729585264e67c37dc11974bec9818bbffad394aa5b125f` |
| 7 | `theorem` | [norm_Gamma_le_Gamma_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/norm-gamma-le-gamma-re--4be0fc7bf68bce2b8d258e5a.md) | 506 | `result-track:4be0fc7bf68bce2b8d258e5afb24853a2f35cc43ccd05073c5d5fdf82f11ad29` |
| 8 | `def` | [xi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi--066ed560667ea3eee12f9603.md) | 521 | `declaration-track:066ed560667ea3eee12f9603536efe9b39af6ced4710fad3f84f87d5ab0a2db5` |
| 9 | `theorem` | [xi_differentiable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi-differentiable--149a8960c1005331a05fff1f.md) | 523 | `result-track:149a8960c1005331a05fff1fb61a3f5e10884e1272a15f25e46e6ed8442a949e` |
| 10 | `theorem` | [xi_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi-eq--ced5a97103ae901d581afe28.md) | 528 | `result-track:ced5a97103ae901d581afe28a5210b124586b1eb10d5f87b7c2a1509aaee8d2a` |
| 11 | `theorem` | [xi_one_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi-one-sub--9ba3359e0a133648e1243c29.md) | 537 | `result-track:9ba3359e0a133648e1243c29cca7757b1e73b8aed30f462876b492ff13fe0a0f` |
| 12 | `theorem` | [xi_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi-two--c34d52979fbc8c3b6e125dad.md) | 542 | `result-track:c34d52979fbc8c3b6e125dada9c837910a1c95ea6815afbba4f73247a17fe02d` |
| 13 | `theorem` | [Real_Gamma_le_24](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/real-gamma-le-24--61edb30e00c47e0030411fd3.md) | 568 | `result-track:61edb30e00c47e0030411fd37e03e4ad28dd47ec220e02bdf66aa93b3977bbc8` |
| 14 | `theorem` | [xi_norm_le_right](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi-norm-le-right--eaabf97667fe91f0a659df88.md) | 604 | `result-track:eaabf97667fe91f0a659df88baeb1a26d621f79225cc2a3a970410e260522433` |
| 15 | `theorem` | [xi_norm_le_ball](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/xi-norm-le-ball--b02e70be0f12a33e5ae8ca70.md) | 676 | `result-track:b02e70be0f12a33e5ae8ca7093701b4b415d0641e317c2a0c3841a6adaf290e0` |
| 16 | `theorem` | [zeta_local_count_box](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/zeta-local-count-box--98fb0765252bc21c0ac779a2.md) | 765 | `result-track:98fb0765252bc21c0ac779a2f0731191d7fc6caeba64a74d858c20463c48f58c` |
| 17 | `theorem` | [zeta_local_zero_count_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/declarations/zeta-local-zero-count-explicit--4f0acabc0f5bcf60d93afc4b.md) | 926 | `result-track:4f0acabc0f5bcf60d93afc4be909643525fdf46e2cba4a41f9c8e29e53113b7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
