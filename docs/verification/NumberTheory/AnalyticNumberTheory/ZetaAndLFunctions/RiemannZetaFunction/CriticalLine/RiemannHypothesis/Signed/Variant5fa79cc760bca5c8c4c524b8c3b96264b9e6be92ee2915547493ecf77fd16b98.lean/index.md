# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Signed.Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ccc342ba3ca646fa37062c25a163634ff1a56ea",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ccc342ba3ca646fa37062c25a163634ff1a56ea`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.CeilingLaw256` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ceiling_signed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/declarations/ceiling-signed--c19b49aad4a09791ef7f5364.md) | 27 | `result-track:c19b49aad4a09791ef7f5364002d33e4d05d2c937c4ae9a7f2d23cc9f04b481e` |
| 2 | `theorem` | [ceiling_nearCUE_signed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/declarations/ceiling-nearcue-signed--f2e3d6c85573fd586ee9240e.md) | 54 | `result-track:f2e3d6c85573fd586ee9240ec0bb16e72ba1c1e4d663d65cecfed7cfc7d3d921` |
| 3 | `def` | [edgeNonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/declarations/edgenonneg--6a7bbc5cc0bcc4eb7206ff38.md) | 72 | `declaration-track:6a7bbc5cc0bcc4eb7206ff3838caaedd13bed92855bbe0133daf589886866f3a` |
| 4 | `theorem` | [D1_nonneg_of_edgeNonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/declarations/d1-nonneg-of-edgenonneg--af295f29db0422691d21af7c.md) | 75 | `result-track:af295f29db0422691d21af7cf6178b2b73ec77ff28161f23045a56ffb7aba95d` |
| 5 | `theorem` | [LawN256_edge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/declarations/lawn256-edge--993f50f1df40e221ca8fe4fc.md) | 90 | `result-track:993f50f1df40e221ca8fe4fc834f1ef97cf2f034d1b232e56d50b6ca51951428` |
| 6 | `theorem` | [ceiling_law256_signed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Signed/Variant5fa79cc760bca5c8c4c524b8c3b96264b9e6be92ee2915547493ecf77fd16b98.lean/declarations/ceiling-law256-signed--93a2d29ee1e5936bac2f4a6b.md) | 94 | `result-track:93a2d29ee1e5936bac2f4a6b69b09f5d8bfe0c5529a33c4c9b19364d7b7fb820` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
