# restrictStalkNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2af5d0cf9d2d4b29ca30bd1676c0b3b81584684f154d5edde4a1691eb96b4bc2",
  "kind": "def",
  "lexical_name": "restrictStalkNatIso",
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
  "slug": "restrictstalknatiso--c130c3f540da70a510c430f9",
  "source": {
    "blob": "8745af7611e0d31a11b9e912b41a5ce13546a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 500,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c130c3f540da70a510c430f9750ca4e5390fbae2841eb45bc3b84438fa479d22",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2af5d0cf9d2d4b29ca30bd1676c0b3b81584684f154d5edde4a1691eb96b4bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictStalkNatIso (x : X) :
    restrictFunctor f ⋙ toPresheaf _ ⋙ TopCat.Presheaf.stalkFunctor _ x ≅
    toPresheaf _ ⋙ TopCat.Presheaf.stalkFunctor _ (f x) :=
  haveI := Functor.initial_of_adjunction (f.isOpenEmbedding.adjunctionNhds x)
  (toPresheaf _ ⋙ (Functor.whiskeringLeft (OpenNhds (f x))ᵒᵖ Y.Opensᵒᵖ Ab).obj
      (OpenNhds.inclusion (f x)).op).isoWhiskerLeft
      (Functor.Final.colimIso (f.isOpenEmbedding.functorNhds x).op)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8745af7611e0d31a11b9e912b41a5ce13546a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
