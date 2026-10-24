# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9baf127875b87efd84759b086d9b679c9706914",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9baf127875b87efd84759b086d9b679c9706914`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.UnivLE` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [solutionFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/declarations/solutionfinsupp--d0d5f462b216d3e23692bb8a.md) | 42 | `declaration-track:d0d5f462b216d3e23692bb8a47c260af711bac63a727f92606b6b1ab10309231` |
| 2 | `def` | [solutionFinsupp.isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/declarations/solutionfinsupp-ispresentationcore--2a6cfc8dc06da4ddc08a0a70.md) | 49 | `declaration-track:2a6cfc8dc06da4ddc08a0a70da9d043c661c8bfc713a547900424521dd3bfb8f` |
| 3 | `lemma` | [solutionFinsupp_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/declarations/solutionfinsupp-ispresentation--d9bab898a918e033b5d0d529.md) | 55 | `result-track:d9bab898a918e033b5d0d52903d9db688d2327bc832be394d651fcbacd8a1474` |
| 4 | `lemma` | [Solution.IsPresentation.free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/declarations/solution-ispresentation-free--a914cfab90f9c37fa7ab64f8.md) | 61 | `result-track:a914cfab90f9c37fa7ab64f8a2f39489eebe666cadd2f5cbde63c26398ec9092` |
| 5 | `def` | [presentationFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/declarations/presentationfinsupp--34cc37bdd056e6856c10cc5c.md) | 74 | `declaration-track:34cc37bdd056e6856c10cc5cc42a7a178ee0d9c2ad7ec53e7a6738a771c073e6` |
| 6 | `lemma` | [free_iff_exists_presentation](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant1d8694c1437665c3d1429f06edfec8315cfdb69a315d08f648fe6178e1423725.lean/declarations/free-iff-exists-presentation--01fb224d5dc4a71b8c5e6b10.md) | 82 | `result-track:01fb224d5dc4a71b8c5e6b1024c4e985ec735565043aa8f22a249b343e9724a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
