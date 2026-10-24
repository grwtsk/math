# adjoin_adjoin_of_tower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b508b492-91d2-4b26-1f46-23160dcbd3f0",
  "kind": "theorem",
  "lexical_name": "adjoin_adjoin_of_tower",
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
  "slug": "adjoin-adjoin-of-tower--05960efdb86d53000b233100",
  "source": {
    "blob": "071f276b375ab0cc246e8ea18ee2b7adc982b13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 322,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05960efdb86d53000b233100d4c2223db4a7c677c85c8e09b846fb9f89559776",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b508b492-91d2-4b26-1f46-23160dcbd3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_adjoin_of_tower (s : Set A) : adjoin S (adjoin R s : Set A) = adjoin S s := by
  apply le_antisymm (adjoin_le _)
  · exact adjoin_mono subset_adjoin
  · change adjoin R s ≤ (adjoin S s).restrictScalars R
    refine' adjoin_le _
    -- porting note: unclear why this was broken
    have : (Subalgebra.restrictScalars R (adjoin S s) : Set A) = adjoin S s := rfl
    rw [this]
    exact subset_adjoin
#align algebra.adjoin_adjoin_of_tower Algebra.adjoin_adjoin_of_tower

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071f276b375ab0cc246e8ea18ee2b7adc982b13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
