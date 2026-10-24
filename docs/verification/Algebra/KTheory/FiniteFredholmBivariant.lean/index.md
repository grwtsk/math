# Verification target: GRWTSK.Algebra.KTheory.FiniteFredholmBivariant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "203fd487e520af61d9595cb8ca457bb7f67038e6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/FiniteFredholmBivariant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/index.md) · [Full source](../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `203fd487e520af61d9595cb8ca457bb7f67038e6`.

Source path: `GRWTSK/Algebra/KTheory/FiniteFredholmBivariant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/FiniteFredholmBivariant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.KTheory.FormalKKEquivalences`](../../../../mathematics/Algebra/KTheory/FormalKKEquivalences.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.KTheory.FiniteFredholmCycle`](../../../../mathematics/Algebra/KTheory/FiniteFredholmCycle.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/declarations/ext--7cd8e347ec84beac51f968b7.md) | 19 | `result-track:7cd8e347ec84beac51f968b7b0bdd08210bd184f41c1cfa5b5f89893ab0a82d6` |
| 2 | `def` | [unitaryTheory](../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/declarations/unitarytheory--384481368b29a8e0eb9875ca.md) | 28 | `declaration-track:384481368b29a8e0eb9875ca3a3fa2efcbf2010ec5372e93adcd8ee738650ff1` |
| 3 | `def` | [toKKEquivalence](../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/declarations/tokkequivalence--a9904ba724c2149f036100e7.md) | 53 | `declaration-track:a9904ba724c2149f036100e77e1bbe4b1d47d62c8be0097ea682afc0d7aedca2` |
| 4 | `theorem` | [toKKEquivalence_trans](../../../../mathematics/Algebra/KTheory/FiniteFredholmBivariant.lean/declarations/tokkequivalence-trans--c867f2cb31cdaeccba86012b.md) | 66 | `result-track:c867f2cb31cdaeccba86012ba0a8916e6ac814eaf03c7b5eb2857e61a292b0bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
