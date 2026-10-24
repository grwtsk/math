# rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a663f92b3248fda05992dd8871c34df096e6207c450cd653bebb05ce1b0c83f7",
  "kind": "def",
  "lexical_name": "rank",
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
  "slug": "rank--44fce8c5cfa81b4814f55da3",
  "source": {
    "blob": "31faae9f47694f8f386f96f3529dfb84a0d6fb2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44fce8c5cfa81b4814f55da36ae03ed38434cb7c8aac1b8db37c5e0d85c3a72b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a663f92b3248fda05992dd8871c34df096e6207c450cd653bebb05ce1b0c83f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rank [CommSemiring R] (A : Matrix m n R) : ℕ :=
  finrank R <| LinearMap.range A.mulVecLin

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31faae9f47694f8f386f96f3529dfb84a0d6fb2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
