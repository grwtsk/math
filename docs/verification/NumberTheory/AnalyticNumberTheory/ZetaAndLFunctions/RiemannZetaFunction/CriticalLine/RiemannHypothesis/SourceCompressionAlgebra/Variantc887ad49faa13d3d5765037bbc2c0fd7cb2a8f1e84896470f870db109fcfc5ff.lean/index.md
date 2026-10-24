# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompressionAlgebra.Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d5938faad767fe70db938f0ac1154d312b6162",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d5938faad767fe70db938f0ac1154d312b6162`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signed_square_completion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/declarations/signed-square-completion--6b2dcfe7710878480c48f231.md) | 24 | `result-track:6b2dcfe7710878480c48f231db3632b5f68f9c3924db0be4945eb8499adf13c8` |
| 2 | `theorem` | [negative_cross_le_half_energy](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/declarations/negative-cross-le-half-energy--c2889def05cd495b06922ab0.md) | 30 | `result-track:c2889def05cd495b06922ab041adfaffc0650a2c98c308e94af21c47c8495ee7` |
| 3 | `theorem` | [mismatch_lower_is_signed_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/declarations/mismatch-lower-is-signed-lower--fe45e197499a906d0d5c9323.md) | 37 | `result-track:fe45e197499a906d0d5c93231f5a2dfa6973a37933d712ad2bbc86a1189af40b` |
| 4 | `theorem` | [opposite_row_readout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/declarations/opposite-row-readout--4cf3aab783951155c50fb6cb.md) | 42 | `result-track:4cf3aab783951155c50fb6cb79118b94595ade70da3349876ffe1c0cd7f38fa0` |
| 5 | `theorem` | [opposite_row_scale_readout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebra/Variantc887ad49faa13d3d5765037bbc2c0fd7cb2a8f1e84896470f870db109fcfc5ff.lean/declarations/opposite-row-scale-readout--3f587a816c80ff5df0e8f87e.md) | 48 | `result-track:3f587a816c80ff5df0e8f87eb99e9126783c61b5f09e8b8bd6f02bfeb9294958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
