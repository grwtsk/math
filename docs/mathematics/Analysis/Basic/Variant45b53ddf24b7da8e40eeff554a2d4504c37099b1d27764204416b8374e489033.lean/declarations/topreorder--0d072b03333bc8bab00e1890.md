# toPreorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae1306abff55b9170a89850b60119a34e5be8e787a88b3f0b5cf81707dec3cb0",
  "kind": "def",
  "lexical_name": "toPreorder",
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
  "slug": "topreorder--0d072b03333bc8bab00e1890",
  "source": {
    "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 410,
    "path": "GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d072b03333bc8bab00e1890d89c9da4f53d36c128af0e414223f55c10995edc",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae1306abff55b9170a89850b60119a34e5be8e787a88b3f0b5cf81707dec3cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPreorder (h₁ : S.Pointed) : Preorder E where
  le x y := y - x ∈ S
  le_refl x := by change x - x ∈ S; rw [sub_self x]; exact h₁
  le_trans x y z xy zy := by simpa using add_mem S zy xy
#align convex_cone.to_preorder ConvexCone.toPreorder

/-- A pointed and salient cone defines a partial order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
