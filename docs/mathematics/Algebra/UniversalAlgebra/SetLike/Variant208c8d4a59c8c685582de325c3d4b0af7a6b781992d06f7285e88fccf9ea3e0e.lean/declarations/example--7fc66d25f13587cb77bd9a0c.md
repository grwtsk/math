# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b51dd9a1db056bf3e6a9813d1852e234e1f8ec919848136c159110308782c0de",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--7fc66d25f13587cb77bd9a0c",
  "source": {
    "blob": "991935f4da54f61da422ef52cbbff2df6ae3aa03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 44,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SetLike/Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc66d25f13587cb77bd9a0c932cdcb634fe2a784cc5fcb35c1fa9022598f9bf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SetLike/Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b51dd9a1db056bf3e6a9813d1852e234e1f8ec919848136c159110308782c0de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [Monoid M] (x y z : M) (S₁ S₂ : Submonoid M) (h : S₁ ≤ S₂) (hx : x ∈ S₁)
    (hy : y ∈ S₁) (hz : z ∈ S₂) :
    x * y * z ∈ S₂ := by
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SetLike/Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SetLike/Variant208c8d4a59c8c685582de325c3d4b0af7a6b781992d06f7285e88fccf9ea3e0e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991935f4da54f61da422ef52cbbff2df6ae3aa03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
