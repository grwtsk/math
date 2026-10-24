# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GlobalAlignment.Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "410093ae4a2080e212572db812b6ed8cf323784e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `410093ae4a2080e212572db812b6ed8cf323784e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.GlobalIndexNonzero` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.TransportInvariance` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.IndexSpectralBridge` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalPathProgram](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/declarations/canonicalpathprogram--4dbcdb8192435b7931fda3e4.md) | 36 | `declaration-track:4dbcdb8192435b7931fda3e4d132f6ee109a671c5f17ca72c4956e1ab475e8d2` |
| 2 | `theorem` | [canonical_path_transport_invariant](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/declarations/canonical-path-transport-invariant--19c9ff9f576cb8da6e994962.md) | 49 | `result-track:19c9ff9f576cb8da6e994962f92af942f8697ffea1695e47354549aa07323697` |
| 3 | `theorem` | [canonical_path_global_index_nonzero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/declarations/canonical-path-global-index-nonzero--2221915f5a5d10a3e4a46961.md) | 55 | `result-track:2221915f5a5d10a3e4a46961f120707df3c6407eed34d0dd824b510e72833525` |
| 4 | `theorem` | [canonical_path_spectral_alignment](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/declarations/canonical-path-spectral-alignment--787dea36c8a993ebf8383268.md) | 63 | `result-track:787dea36c8a993ebf8383268c54a455a7475f8c1555eb31383f1dce5235ff481` |
| 5 | `theorem` | [conditional_global_spectral_alignment_from_supplied_bridge](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab.lean/declarations/conditional-global-spectral-alignment-from-supplied-bridge--3730ae2ef0fd7f833dd69846.md) | 72 | `result-track:3730ae2ef0fd7f833dd6984695e6117345ff2da202d21088163de45114023dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
