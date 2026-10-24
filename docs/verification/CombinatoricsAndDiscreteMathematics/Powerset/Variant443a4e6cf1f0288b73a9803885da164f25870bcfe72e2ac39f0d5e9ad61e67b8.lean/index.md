# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "701d4816c01a0338b09495da4b97540e7e46e944",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `701d4816c01a0338b09495da4b97540e7e46e944`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finite.finite_subsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean/declarations/finite-finite-subsets--a87743c24fa88e184efcd017.md) | 52 | `result-track:a87743c24fa88e184efcd017c6ea91b17d63def544de372f4f52c1477ce25e6a` |
| 2 | `theorem` | [Finite.powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8.lean/declarations/finite-powerset--1da83f398324e78c765283ad.md) | 58 | `result-track:1da83f398324e78c765283ade4eb634c92f7175b57c7605dcb847f7eb317c2c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
