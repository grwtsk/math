# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Piecewise.Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f9e94721e0ddbf319ef443298ff4e62d153b09a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f9e94721e0ddbf319ef443298ff4e62d153b09a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_univ_piecewise_Iic_of_antitoneOn_Iic_monotoneOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/declarations/convexon-univ-piecewise-iic-of-antitoneon-iic-monotoneon-ici--6c605f3e8d6f6c2326b972e3.md) | 38 | `result-track:6c605f3e8d6f6c2326b972e3810547ce446005a0a979f88996325886e1461ce0` |
| 2 | `theorem` | [convexOn_univ_piecewise_Ici_of_monotoneOn_Ici_antitoneOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/declarations/convexon-univ-piecewise-ici-of-monotoneon-ici-antitoneon-iic--2d00fe5aa84c2c307981c0d1.md) | 92 | `result-track:2d00fe5aa84c2c307981c0d1eca63ac45f1baf48908290549803dd083fa3e7ea` |
| 3 | `theorem` | [concaveOn_univ_piecewise_Iic_of_monotoneOn_Iic_antitoneOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/declarations/concaveon-univ-piecewise-iic-of-monotoneon-iic-antitoneon-ici--15ca315b67bb7bf1cba19f73.md) | 106 | `result-track:15ca315b67bb7bf1cba19f7390f8571b4588ce3799128f4299a2e180567ae089` |
| 4 | `theorem` | [concaveOn_univ_piecewise_Ici_of_antitoneOn_Ici_monotoneOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/declarations/concaveon-univ-piecewise-ici-of-antitoneon-ici-monotoneon-iic--a15270f48db4b7cca2c4ec27.md) | 117 | `result-track:a15270f48db4b7cca2c4ec27c21b4a47d7422fca45294f395353e2389e9cfdde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
