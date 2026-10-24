# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da6e310b791b0371e05c7e868533d07fa5054a1a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da6e310b791b0371e05c7e868533d07fa5054a1a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.UnivLE` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [solutionFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/declarations/solutionfinsupp--9e75e69dbd4d6bd404db8c15.md) | 34 | `declaration-track:9e75e69dbd4d6bd404db8c15a5f46ab4913745153465895b8385c7c00e0fc8f5` |
| 2 | `def` | [solutionFinsupp.isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/declarations/solutionfinsupp-ispresentationcore--3243c3bdfae7943d01eefc08.md) | 41 | `declaration-track:3243c3bdfae7943d01eefc08327bc443cb85b9a6a6e6f454194a9dfe168cc7b7` |
| 3 | `lemma` | [solutionFinsupp_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/declarations/solutionfinsupp-ispresentation--e9b6d111c8a56354a635186f.md) | 47 | `result-track:e9b6d111c8a56354a635186f13b554ed4c642b89539cd0089efbf3d68719b987` |
| 4 | `lemma` | [Solution.IsPresentation.free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/declarations/solution-ispresentation-free--aac4865bf0b424962ac1c950.md) | 53 | `result-track:aac4865bf0b424962ac1c9502dec9afb5c584cad751bad9d0c41ae484733e183` |
| 5 | `def` | [presentationFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/declarations/presentationfinsupp--eb722ade80a07cca99098f8c.md) | 66 | `declaration-track:eb722ade80a07cca99098f8ca9b06827904e513c100a26b787ab567fba8f521b` |
| 6 | `lemma` | [free_iff_exists_presentation](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantafc8fd63444063cc728c27c37bc01f247079ed07870dc98e51c0a26004c018d1.lean/declarations/free-iff-exists-presentation--2bccf340556f97e6467c5273.md) | 74 | `result-track:2bccf340556f97e6467c52733e4202e8c49f11473edc0f2fc07c0d751116773a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
