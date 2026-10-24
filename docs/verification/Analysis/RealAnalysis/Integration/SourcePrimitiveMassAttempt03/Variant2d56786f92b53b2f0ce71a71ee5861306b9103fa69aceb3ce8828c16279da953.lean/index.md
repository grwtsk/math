# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt03.Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1842dda221b81c9764ad1317e342708746eb3ae",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1842dda221b81c9764ad1317e342708746eb3ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/declarations/exphalfmoment-integrable--19128a5ebe0503686a4ba979.md) | 16 | `result-track:19128a5ebe0503686a4ba9790b5f96fac69468696b96aed5d75ce1b5c9978642` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/declarations/exphalfmoment-integral--ee2c7f4537dc92a3e090c204.md) | 37 | `result-track:ee2c7f4537dc92a3e090c20428c06cab3020cd45254cdf7942e72f6f123539f0` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/declarations/reflectedenvelope-integrable--ac991662be8b3e0ff93ee402.md) | 50 | `result-track:ac991662be8b3e0ff93ee4024e035a048d8d03d0711f363024c4a2153d958bb9` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/declarations/reflectedenvelope-integral--49383fe684b057408963ee3f.md) | 62 | `result-track:49383fe684b057408963ee3f4a8be0c48e65b2f75b3fa925f49e7fd4087aa2c1` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/declarations/reflectedprimitive-intervalintegrable--b32fc49c5d76031f43f10e8c.md) | 81 | `result-track:b32fc49c5d76031f43f10e8cb0f728c8712c0352c9d310a686576a0660ac8f36` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant2d56786f92b53b2f0ce71a71ee5861306b9103fa69aceb3ce8828c16279da953.lean/declarations/reflectedprimitive-mass-bounds--77d1e4f98454bf8cb972f8e1.md) | 89 | `result-track:77d1e4f98454bf8cb972f8e1a4107ddff7dd7a8bd7aa428557be247c97380471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
