# rotateHomotopyEquivComm₂Homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3829da21af85ad87656e59b6d936d739704cc275d3d1a6d2268ce34145e5c216",
  "kind": "def",
  "lexical_name": "rotateHomotopyEquivComm₂Homotopy",
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
  "slug": "rotatehomotopyequivcomm-homotopy--3e4333fd548c9d9dbcc5f11b",
  "source": {
    "blob": "a06c9cca3b97c36cf8cefde35d3c03e20debe312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 245,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e4333fd548c9d9dbcc5f11ba9ff1c8120ff20eae91f2bc8aec4f7496fb5182f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3829da21af85ad87656e59b6d936d739704cc275d3d1a6d2268ce34145e5c216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rotateHomotopyEquivComm₂Homotopy :
    Homotopy ((triangle φ).mor₃ ≫ (rotateHomotopyEquiv φ).hom)
      (inr (CochainComplex.mappingCone.inr φ)) := (Cochain.equivHomotopy _ _).symm
      ⟨-(snd φ).comp (inl (inr φ)) (zero_add (-1)), by
        ext p
        simp [rotateHomotopyEquiv, ext_from_iff _ _ _ rfl, ext_to_iff _ _ _ rfl,
         (inl φ).leftShift_v 1 0 (neg_add_cancel 1) p p (add_zero p) (p + 1) (by lia),
         δ_zero_cochain_comp _ _ _ (neg_add_cancel 1),
         Cochain.comp_v _ _ (add_neg_cancel 1) p (p + 1) p rfl (by lia),
         (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) p (p + 1) rfl (p + 1) (by lia)]⟩

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a06c9cca3b97c36cf8cefde35d3c03e20debe312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
