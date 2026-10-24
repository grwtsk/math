# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt02.Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91444fd2d16468f416cfc63cd9e276ff9bf27745",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91444fd2d16468f416cfc63cd9e276ff9bf27745`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/declarations/exphalfmoment-integrable--3d5206d850ae2f6beb853971.md) | 24 | `result-track:3d5206d850ae2f6beb85397135dce8c31c52188984cc41cf7d8011cf90cae961` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/declarations/exphalfmoment-integral--3da9ae9d7293c0d31de7d3cc.md) | 45 | `result-track:3da9ae9d7293c0d31de7d3cc18c02f3fc986d1a4da3288d7645be8f4d762ca77` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/declarations/reflectedenvelope-integrable--9619358ed9ab650f63b362aa.md) | 58 | `result-track:9619358ed9ab650f63b362aad8e7664ef5dea30ef25f8d6b2308e45fdc260fb4` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/declarations/reflectedenvelope-integral--c07317fa73071db080a6c4d5.md) | 69 | `result-track:c07317fa73071db080a6c4d58e45639d84984fb8b77fc3065d4128621c285929` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/declarations/reflectedprimitive-intervalintegrable--58f9dfb84562e38e3963f640.md) | 85 | `result-track:58f9dfb84562e38e3963f640398c03d8c20ad7d282e30aa3be42bdb027437580` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantf74ee02a187c504eecdcabb055640ffea0e6b6dd2acda60b207620e492fcce8a.lean/declarations/reflectedprimitive-mass-bounds--5ac6a3a95516c84fd399d7b7.md) | 93 | `result-track:5ac6a3a95516c84fd399d7b7ad758cee41ae33945ec12092ddf9ac45bd169725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
