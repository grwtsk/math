# Verification target: GRWTSK.Algebra.LinearAlgebra.DeterminantLinePropagation.Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b39d225a3d314095a5621d7bf95d6c96e18f34e4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b39d225a3d314095a5621d7bf95d6c96e18f34e4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.PerfectFamilyTheoremTarget` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeterminantLineFamily](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/declarations/determinantlinefamily--245db7c0656213b5359e8fc0.md) | 26 | `declaration-track:245db7c0656213b5359e8fc065449c913149c634c7d1d52bf2a465e4596c96e3` |
| 2 | `theorem` | [determinant_line_propagates_if_supplied](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/declarations/determinant-line-propagates-if-supplied--d165e804d5525c87b1e76072.md) | 37 | `result-track:d165e804d5525c87b1e7607219ff1d7f8f9f7a9bb7bd4a1d8a111f994389ae03` |
| 3 | `theorem` | [determinant_line_has_nonzero_anchor](../../../../../mathematics/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/declarations/determinant-line-has-nonzero-anchor--261486954c954efdb3f93ce8.md) | 43 | `result-track:261486954c954efdb3f93ce8395d3c0e85a7e838014afa453c496756564f5c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
