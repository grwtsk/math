# space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb1a570ed430460ca77792276f0b6c23b2475fa033b5e42e1279b0ab78aae895",
  "kind": "def",
  "lexical_name": "space",
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
  "slug": "space--b1d055f49fd0e42a73a95dae",
  "source": {
    "blob": "7176ec68d7014b7782eb5d97dcacdfac8a6a0cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 89,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d055f49fd0e42a73a95dae9aceda4ce85bd56e4c5de061d1a27976456d0fb5",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb1a570ed430460ca77792276f0b6c23b2475fa033b5e42e1279b0ab78aae895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def space (K : SimplicialComplex 𝕜 E) : Set E :=
  ⋃ s ∈ K.faces, convexHull 𝕜 (s : Set E)

-- Porting note: Expanded `∃ s ∈ K.faces` to get the type to match more closely with Lean 3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant0f47d549bc36a622fe47de7c08f934bbc67ff0c25c6ad3b2293d7ec3b6c989fd.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7176ec68d7014b7782eb5d97dcacdfac8a6a0cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
