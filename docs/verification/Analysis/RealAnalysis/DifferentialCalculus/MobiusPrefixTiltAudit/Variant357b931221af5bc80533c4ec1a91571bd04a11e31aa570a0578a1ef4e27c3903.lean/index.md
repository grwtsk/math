# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPrefixTiltAudit.Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "670ab0773c338a57347e5a10607467bf40ecf0f8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `670ab0773c338a57347e5a10607467bf40ecf0f8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.AbelSummation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/dirichletnumerator--5e8c743a26d14f14f28c4dd0.md) | 23 | `declaration-track:5e8c743a26d14f14f28c4dd0741200827458f919b6b37fb437167c31e90f7b14` |
| 2 | `def` | [correctedNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/correctednumerator--6dc59b3f7f776ca526549f67.md) | 28 | `declaration-track:6dc59b3f7f776ca526549f671b7688e971c607735edc2623baec4d2ebb6d831d` |
| 3 | `def` | [logNormalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/lognormalization--77d681150179924a8f8baca1.md) | 33 | `declaration-track:77d681150179924a8f8baca1e823776ff1797c720f7a99dad7fbd41cb6c04e9a` |
| 4 | `theorem` | [exponential_at_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/exponential-at-half--db92669712df01d9b283e3cb.md) | 38 | `result-track:db92669712df01d9b283e3cb33c1edbbeaa7b95b9981e4a3132ef29f750465cb` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/dirichletnumerator-half--d4012b05d04766b6157a2de4.md) | 48 | `result-track:d4012b05d04766b6157a2de4f6900ae913b4a4531051609af7917fd012e69841` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/correctednumerator-half--1f327df2d7cd3e615e55165b.md) | 59 | `result-track:1f327df2d7cd3e615e55165bf39364df222184e48e378bc83ceb1d748036e36d` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/correctednumerator-differentiable--4d801fc58dec1ecdffe147a5.md) | 64 | `result-track:4d801fc58dec1ecdffe147a51b4c71ec4f173450287fd42942ff2102ce8ca898` |
| 8 | `def` | [reciprocalCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/reciprocalcoefficient--e5383352d9982ed4a1f71d27.md) | 78 | `declaration-track:e5383352d9982ed4a1f71d2774d829728d406d1a8a3948990b1b4b974e8645ca` |
| 9 | `theorem` | [reciprocalCoefficient_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/reciprocalcoefficient-zero--01cda2e60e9268b5a6682b95.md) | 81 | `result-track:01cda2e60e9268b5a6682b95e18518f0ef9a0b51bd4e8e7944156ecf2569082d` |
| 10 | `theorem` | [reciprocal_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/reciprocal-prefix-eq--af7e3d33d2354b7d5c51759a.md) | 84 | `result-track:af7e3d33d2354b7d5c51759aa2ccd9a298ce0aee5d4869105e4dba4dc869240d` |
| 11 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/powerweight--6617123c33a099b6db6a1cb4.md) | 101 | `declaration-track:6617123c33a099b6db6a1cb41e2cb4d505fed763886ef1d17eb330ff521cc6e7` |
| 12 | `theorem` | [powerWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/powerweight-hasderivat--a13cfa35549dad1ef2d2b49e.md) | 104 | `result-track:a13cfa35549dad1ef2d2b49e175f7d120e364b9dc6dbaeab0e1eab2f10761f86` |
| 13 | `theorem` | [powerWeight_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/powerweight-deriv--8f76f51302731aa85773104f.md) | 113 | `result-track:8f76f51302731aa85773104fcdb25feb830f0574b083e858748bf47644c9c0ce` |
| 14 | `theorem` | [weight_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/weight-deriv-integrable--73a047549430a9a582ade9d1.md) | 117 | `result-track:73a047549430a9a582ade9d1cc4826cf34d843f576c85828084b1bd069a107d0` |
| 15 | `theorem` | [reciprocal_prefix_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/reciprocal-prefix-power-integrable--1b537f3acdc99123e84b6864.md) | 135 | `result-track:1b537f3acdc99123e84b6864a71eea0779f421055b9b1477b38fbd8b9aa935e1` |
| 16 | `theorem` | [weighted_coefficient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/weighted-coefficient-eq--02cef321fb6a997ec2de8495.md) | 156 | `result-track:02cef321fb6a997ec2de8495dcaefe14bf0d4d34711ddfe6b9922aabff21fa81` |
| 17 | `theorem` | [correctedNumerator_eq_prefix_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/declarations/correctednumerator-eq-prefix-integral--7e52105e83bfd1489c687506.md) | 178 | `result-track:7e52105e83bfd1489c687506079c46a2712bee2af811d89fe2d02e6463f6886a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
