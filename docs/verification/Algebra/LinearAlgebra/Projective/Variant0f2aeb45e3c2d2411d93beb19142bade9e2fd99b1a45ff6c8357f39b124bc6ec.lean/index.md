# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b75bc748bfa7aae9043af58b7479c8c977d90ae4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b75bc748bfa7aae9043af58b7479c8c977d90ae4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Small.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsProjective.iff_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/declarations/isprojective-iff-projective--251087db5d00e473e176ef38.md) | 28 | `result-track:251087db5d00e473e176ef38c0832df7a9c20b2bb7f8507269f352facea6ac11` |
| 2 | `theorem` | [projective_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/declarations/projective-of-free--e6f6df57da75f3d42020bcb8.md) | 49 | `result-track:e6f6df57da75f3d42020bcb8203fecb6f982df249941af41e74d499082db6a9d` |
| 3 | `instance` | [enoughProjectives](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/declarations/enoughprojectives--5d00d967b47d5f02427ea02d.md) | 58 | `declaration-track:5d00d967b47d5f02427ea02d52e9872ea1c1b60275549916cfcc725bf04afb16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
