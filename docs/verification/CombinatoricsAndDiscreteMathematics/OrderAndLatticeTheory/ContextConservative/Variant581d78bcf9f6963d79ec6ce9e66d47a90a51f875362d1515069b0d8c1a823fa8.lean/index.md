# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextConservative.Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aea9c131f5f1628fd42b5d05a7ca4e8de1e16246",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aea9c131f5f1628fd42b5d05a7ca4e8de1e16246`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.ContextResolver` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Projection` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Conservative` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [context_solution_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/declarations/context-solution-sound--004eb4cba5caae36049bb61e.md) | 19 | `result-track:004eb4cba5caae36049bb61eeb172c846aaec6d9362cf3ecbb838e0bf831523b` |
| 2 | `theorem` | [context_authority_view_noninterference](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/declarations/context-authority-view-noninterference--a2b0162f66a52a13f058f47e.md) | 31 | `result-track:a2b0162f66a52a13f058f47e73c67dfc3006a8010ee51c5b1e9690e47bb2702b` |
| 3 | `theorem` | [context_certificate_extension_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/declarations/context-certificate-extension-monotone--9987783f6fd9f5e3c5f06f16.md) | 38 | `result-track:9987783f6fd9f5e3c5f06f163b5d83c3a57356da91a87c277b511e0ed296dfab` |
| 4 | `theorem` | [resolveCut_rejected_exactly_when_context_invalid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/declarations/resolvecut-rejected-exactly-when-context-invalid--0379d8880f83177cc76d38ff.md) | 50 | `result-track:0379d8880f83177cc76d38fff30be6652fb0c12cda6c3eb8d07388f302ba3c88` |
| 5 | `theorem` | [resolveCut_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variant581d78bcf9f6963d79ec6ce9e66d47a90a51f875362d1515069b0d8c1a823fa8.lean/declarations/resolvecut-total--4707374f80c93f4b61533c8f.md) | 70 | `result-track:4707374f80c93f4b61533c8f52bf54339a6b578e55c2a537dca83bd7322d76b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
