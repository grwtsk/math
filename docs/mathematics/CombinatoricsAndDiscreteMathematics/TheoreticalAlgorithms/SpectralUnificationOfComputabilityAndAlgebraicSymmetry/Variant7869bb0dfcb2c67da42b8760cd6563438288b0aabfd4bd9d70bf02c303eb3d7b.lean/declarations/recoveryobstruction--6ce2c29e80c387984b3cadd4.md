# RecoveryObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1265b4b84e61755c75894714ee1991744fb2128431030be33498c9bd1b59e75d",
  "kind": "structure",
  "lexical_name": "RecoveryObstruction",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "recoveryobstruction--6ce2c29e80c387984b3cadd4",
  "source": {
    "blob": "9d694502bcce9fa50a06b2c20f28f73be48750d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7869bb0dfcb2c67da42b8760cd6563438288b0aabfd4bd9d70bf02c303eb3d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ce2c29e80c387984b3cadd45f1eb97e48e21f29284d2c40966ebbcf5cedd30f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7869bb0dfcb2c67da42b8760cd6563438288b0aabfd4bd9d70bf02c303eb3d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1265b4b84e61755c75894714ee1991744fb2128431030be33498c9bd1b59e75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RecoveryObstruction (q : α → Q) (F : α → β) : Type u where
  /-- First input witnessing information loss. -/
  left : α
  /-- Second input witnessing information loss. -/
  right : α
  /-- The observation cannot distinguish the two inputs. -/
  sameObservation : q left = q right
  /-- The requested target distinguishes the same inputs. -/
  differentTarget : F left ≠ F right

/-- A recovered target is equal on every observation fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7869bb0dfcb2c67da42b8760cd6563438288b0aabfd4bd9d70bf02c303eb3d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7869bb0dfcb2c67da42b8760cd6563438288b0aabfd4bd9d70bf02c303eb3d7b.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d694502bcce9fa50a06b2c20f28f73be48750d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
