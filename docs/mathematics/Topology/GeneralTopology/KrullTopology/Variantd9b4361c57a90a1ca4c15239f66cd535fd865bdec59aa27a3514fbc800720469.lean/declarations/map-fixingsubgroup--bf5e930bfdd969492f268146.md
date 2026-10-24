# map_fixingSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7a7d7eb-ffcc-09de-da80-01bd6ff3880d",
  "kind": "theorem",
  "lexical_name": "map_fixingSubgroup",
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
  "slug": "map-fixingsubgroup--bf5e930bfdd969492f268146",
  "source": {
    "blob": "3084adef4cbd971d3a3aed40abd228db8109bb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5e930bfdd969492f268146379c1757a03014ed24a0c292af7aaac7b9d491ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a7d7eb-ffcc-09de-da80-01bd6ff3880d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fixingSubgroup [Normal k E] :
    (L.map (IsScalarTower.toAlgHom k E K)).fixingSubgroup =
      L.fixingSubgroup.comap (AlgEquiv.restrictNormalHom (F := k) (K₁ := K) E) := by
  ext f
  simp only [Subgroup.mem_comap, mem_fixingSubgroup_iff]
  constructor
  · rintro h x hx
    change f.restrictNormal E x = x
    apply_fun _ using (algebraMap E K).injective
    rw [AlgEquiv.restrictNormal_commutes]
    exact h _ ⟨x, hx, rfl⟩
  · rintro h _ ⟨x, hx, rfl⟩
    replace h := congr(algebraMap E K $(show f.restrictNormal E x = x from h x hx))
    rwa [AlgEquiv.restrictNormal_commutes] at h

/-- If `K / E / k` is a field extension tower with `E / k` and `K / k` normal,
`L` is an intermediate field of `E / k`, then the index of the fixing subgroup of `L` viewed as an
intermediate field of `K / k` is equal to the index of the fixing subgroup of `L` viewed as an
intermediate field of `E / k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3084adef4cbd971d3a3aed40abd228db8109bb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
