# invRotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4f960a721abfc0152ec75e3c3189d01a6b832535f3fb31ef5e83547f98fa8e3",
  "kind": "def",
  "lexical_name": "invRotate",
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
  "slug": "invrotate--12dafca8fafc6d77a8cac4c0",
  "source": {
    "blob": "c210d1a6e0c3a1c798f08823460610986a7fcb88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12dafca8fafc6d77a8cac4c0ec18031329a190ef9da20138c5dec610a3a686b5",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4f960a721abfc0152ec75e3c3189d01a6b832535f3fb31ef5e83547f98fa8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invRotate : Triangle C ⥤ Triangle C where
  obj := Triangle.invRotate
  map f :=
  { hom₁ := f.hom₃⟦-1⟧'
    hom₂ := f.hom₁
    hom₃ := f.hom₂
    comm₁ := by
      dsimp
      simp only [comp_neg, ← Functor.map_comp_assoc, ← f.comm₃]
      rw [Functor.map_comp]
      simp }

variable {C}
variable [∀ n : ℤ, Functor.Additive (shiftFunctor C n)]

/-- The unit isomorphism of the auto-equivalence of categories `triangleRotation C` of
`Triangle C` given by the rotation of triangles. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variantab5da259b8b03dc2f515b814c2af86da70a13dfd48a4268bee8d0220b35f090e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c210d1a6e0c3a1c798f08823460610986a7fcb88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
