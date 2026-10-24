# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt02.Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3e1fb38cb7481cb26a6e4462b0dd0ee101bf1f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3e1fb38cb7481cb26a6e4462b0dd0ee101bf1f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean.json)

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
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/declarations/exphalfmoment-integrable--eb48e53967d1ac0ff6947b55.md) | 16 | `result-track:eb48e53967d1ac0ff6947b55f5212bac9f145800262e7da742b5e30b19f074ef` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/declarations/exphalfmoment-integral--f4a4c00e5ea420d01be2d23b.md) | 37 | `result-track:f4a4c00e5ea420d01be2d23bf142cfb287b4f5d67a3e15015529acbf8b396fce` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/declarations/reflectedenvelope-integrable--51ee079fbaf293739743e5cc.md) | 50 | `result-track:51ee079fbaf293739743e5cc565c5969277934105bfdf92bc0772604d83cfe58` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/declarations/reflectedenvelope-integral--c1eba0425c5de08122af3e7a.md) | 61 | `result-track:c1eba0425c5de08122af3e7a702b85f4ada7a4d7dee888482154d06cb358a123` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/declarations/reflectedprimitive-intervalintegrable--e43da64f7f0774f705213810.md) | 77 | `result-track:e43da64f7f0774f705213810289d83f09ece47d782abe1cec453e81079a5c52d` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/declarations/reflectedprimitive-mass-bounds--cc15e194230c423da8926430.md) | 85 | `result-track:cc15e194230c423da8926430fca3fc0e0bbb8d4636954778996e2f6d995676bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
