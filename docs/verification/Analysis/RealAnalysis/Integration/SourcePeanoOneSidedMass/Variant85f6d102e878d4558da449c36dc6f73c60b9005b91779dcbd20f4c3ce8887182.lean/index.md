# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePeanoOneSidedMass.Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "571ab834fcbae009b0f3de740a133c087c2caeac",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `571ab834fcbae009b0f3de740a133c087c2caeac`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePeanoPositiveWindow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalOneSidedMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/criticalonesidedmass--d94ab1564fae70703da51081.md) | 16 | `declaration-track:d94ab1564fae70703da5108143a4a1fd254676ae9999bc4e50dc6cb25d2ada6b` |
| 2 | `def` | [actualOneSidedPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/actualonesidedpairing--2437fd8fb5d7e1879d743ab2.md) | 19 | `declaration-track:2437fd8fb5d7e1879d743ab284222239253d0232f4156f7740791a192725b8e6` |
| 3 | `theorem` | [actualOneSidedPairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/actualonesidedpairing-integrable--c65cf39031efb9ca88473e78.md) | 23 | `result-track:c65cf39031efb9ca88473e78ddc9e169471f741035f07d5d407152014e450f7d` |
| 4 | `theorem` | [oneSided_window_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/onesided-window-pointwise--54ab9305914b07588904870b.md) | 29 | `result-track:54ab9305914b07588904870be129ffafa9e213b85f58e636b85859fbde200329` |
| 5 | `theorem` | [criticalOneSidedMass_window_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/criticalonesidedmass-window-integrable--144d7d78005d9c3ce8f38bbd.md) | 42 | `result-track:144d7d78005d9c3ce8f38bbdae70ccc647bda10435decb830c4688cfae587620` |
| 6 | `theorem` | [actualOneSidedPairing_dominates_window](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/actualonesidedpairing-dominates-window--c036664f69414c335ea40d4a.md) | 62 | `result-track:c036664f69414c335ea40d4a4648bca9f3a16bad117ecdc61bbe0d9e0a03369c` |
| 7 | `theorem` | [oneSided_spikes_transfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant85f6d102e878d4558da449c36dc6f73c60b9005b91779dcbd20f4c3ce8887182.lean/declarations/onesided-spikes-transfer--09c1f4fb5f6530dbde83dfe1.md) | 83 | `result-track:09c1f4fb5f6530dbde83dfe1221662824123418aa2fc6552d3c5da86855d239d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
