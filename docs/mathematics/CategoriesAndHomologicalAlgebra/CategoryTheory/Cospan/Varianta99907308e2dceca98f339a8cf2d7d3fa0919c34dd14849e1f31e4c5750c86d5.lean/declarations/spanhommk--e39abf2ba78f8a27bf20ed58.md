# spanHomMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f3db433c78e48a6a2766a3e7d648d23152873025d92f9d31d8859a085d59b87",
  "kind": "def",
  "lexical_name": "spanHomMk",
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
  "slug": "spanhommk--e39abf2ba78f8a27bf20ed58",
  "source": {
    "blob": "3327ff99300cdb7c5cf54019bb1058665c9b6500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 412,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Varianta99907308e2dceca98f339a8cf2d7d3fa0919c34dd14849e1f31e4c5750c86d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e39abf2ba78f8a27bf20ed58b16b92e1879a1bccd2f0ed376523773ac37f13e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Varianta99907308e2dceca98f339a8cf2d7d3fa0919c34dd14849e1f31e4c5750c86d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f3db433c78e48a6a2766a3e7d648d23152873025d92f9d31d8859a085d59b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanHomMk {F G : WalkingSpan ⥤ C}
    (z : F.obj .zero ⟶ G.obj .zero) (l : F.obj .left ⟶ G.obj .left)
    (r : F.obj .right ⟶ G.obj .right)
    (hl : F.map fst ≫ l = z ≫ G.map fst := by cat_disch)
    (hr : F.map snd ≫ r = z ≫ G.map snd := by cat_disch) : F ⟶ G where
  app := by rintro (_ | _ | _); exacts [z, l, r]
  naturality := by rintro (_ | _ | _) (_ | _ | _) (_ | _); all_goals cat_disch

/-- Constructor for natural isomorphisms between spans. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Varianta99907308e2dceca98f339a8cf2d7d3fa0919c34dd14849e1f31e4c5750c86d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Varianta99907308e2dceca98f339a8cf2d7d3fa0919c34dd14849e1f31e4c5750c86d5.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3327ff99300cdb7c5cf54019bb1058665c9b6500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
