# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simprocs.Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc96b32f06611e9c60d5065c27635311437a2e32",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc96b32f06611e9c60d5065c27635311437a2e32`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Parser.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Even` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalNatExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/declarations/evalnatexpr--e77351af8bc5fb9c72386a5b.md) | 19 | `declaration-track:e77351af8bc5fb9c72386a5b9fe2885ab87f6feaf6198a533a301dc3e4a42bb6` |
| 2 | `lemma` | [count_201_true_eq_201](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/declarations/count-201-true-eq-201--13ed1c31425585074e4c1e1e.md) | 32 | `result-track:13ed1c31425585074e4c1e1e74bc0b89dd9e0971838891818cd7353134e1ef40` |
| 3 | `lemma` | [count_even_201_eq_101](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/declarations/count-even-201-eq-101--2615c0970b9ae470cc591e40.md) | 35 | `result-track:2615c0970b9ae470cc591e4080d20c65b29ac903885bb255f725e063c1db409a` |
| 4 | `lemma` | [count_even_2010_eq_1010](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variantc037a0b71cbf4d566a16d974516a9d2bb8b15a8b493ae92a906a7a4d38c12c0d.lean/declarations/count-even-2010-eq-1010--f64088f3afcc728942c7aa0f.md) | 38 | `result-track:f64088f3afcc728942c7aa0f60e0d28c7e0e46f8480d42604463066dc5ea314d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
