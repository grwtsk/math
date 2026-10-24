# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt04.Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b243705aa0c63891cdfb76cedaaf33f0f759595a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b243705aa0c63891cdfb76cedaaf33f0f759595a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean.json)

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
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/declarations/exphalfmoment-integrable--9bcf5bd5c4592fe81847aaf9.md) | 24 | `result-track:9bcf5bd5c4592fe81847aaf9129ac17fc7136e8d58b387f4431ea07e7029ab26` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/declarations/exphalfmoment-integral--749b3fc1d6677c34c8ef87f5.md) | 45 | `result-track:749b3fc1d6677c34c8ef87f5d56c30d45b1cc91d57446b098ddb6fda1f61502f` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/declarations/reflectedenvelope-integrable--7b8bbcd72228c8c02f1ba43f.md) | 58 | `result-track:7b8bbcd72228c8c02f1ba43fe08bc28b987c872df5793c092aeefd919b96f974` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/declarations/reflectedenvelope-integral--d4dad1c09a9f9876562db8c5.md) | 70 | `result-track:d4dad1c09a9f9876562db8c572cad2b9435aad0a5c4504eaec3a118a850a7e96` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/declarations/reflectedprimitive-intervalintegrable--68aa4acc91578217ad661ad9.md) | 87 | `result-track:68aa4acc91578217ad661ad948c57d3d43667f703aeea5b62cbbc637eaa7f6c1` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variantf49fafd61fb1a36f6f46cc286ae3302e26b6f6603f9bc73f0b0fce78eccecf9e.lean/declarations/reflectedprimitive-mass-bounds--5d4b1db667a669b27020b2f9.md) | 95 | `result-track:5d4b1db667a669b27020b2f90429f6f3ba420eb31d56dfb70f8ec479c78cf54e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
