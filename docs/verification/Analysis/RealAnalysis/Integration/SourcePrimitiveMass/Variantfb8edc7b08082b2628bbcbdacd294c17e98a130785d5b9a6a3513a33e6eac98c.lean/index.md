# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMass.Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f1cc9144747c3562e45a94a76026eb8c1782c31",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f1cc9144747c3562e45a94a76026eb8c1782c31`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean.json)

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
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/declarations/exphalfmoment-integrable--fbebf98a46e01f8971a4dd1c.md) | 24 | `result-track:fbebf98a46e01f8971a4dd1c95aea56e7d618aa4353590137abda53bd43b1fd9` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/declarations/exphalfmoment-integral--95f98c83801c7d02bf141db6.md) | 45 | `result-track:95f98c83801c7d02bf141db63f3fb0cedd2ea49a52ec78ad98647a022a74c80b` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/declarations/reflectedenvelope-integrable--d8f07285a010b9a08ac1c3c7.md) | 58 | `result-track:d8f07285a010b9a08ac1c3c7c9b41b71b3364c74f2e7f29eee6c0a8e4c8dcf98` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/declarations/reflectedenvelope-integral--38f403bd7b042599d3e5c684.md) | 70 | `result-track:38f403bd7b042599d3e5c6840f07e6cfdceb157e5691c58932fda8f64a54cb3f` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/declarations/reflectedprimitive-intervalintegrable--bbc8fc56d9d4fc465dee121d.md) | 87 | `result-track:bbc8fc56d9d4fc465dee121df1343deaff63c9babfb76d3defd92d0c624eff50` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variantfb8edc7b08082b2628bbcbdacd294c17e98a130785d5b9a6a3513a33e6eac98c.lean/declarations/reflectedprimitive-mass-bounds--6998eb991f223a93c390e53d.md) | 95 | `result-track:6998eb991f223a93c390e53dc6bdee840e050c83c0e81d7d7895cca48caec1f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
