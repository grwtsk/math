# IsOpen.exists_subset_affineIndependent_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39fd0423-50b2-83e4-319a-d4f47946c09f",
  "kind": "theorem",
  "lexical_name": "IsOpen.exists_subset_affineIndependent_span_eq_top",
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
  "slug": "isopen-exists-subset-affineindependent-span-eq-top--b488eca70effffd1f47bb861",
  "source": {
    "blob": "11c70fcf6128379193c4d0afcc3f82fef111d21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b488eca70effffd1f47bb861910af9544dfec0acba5508a17f2f3bfa291ff5f8",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39fd0423-50b2-83e4-319a-d4f47946c09f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.exists_subset_affineIndependent_span_eq_top {u : Set P} (hu : IsOpen u)
    (hne : u.Nonempty) :
    ∃ (s : _) (_ : s ⊆ u), AffineIndependent ℝ ((↑) : s → P) ∧ affineSpan ℝ s = ⊤ := by
  rcases hne with ⟨x, hx⟩
  rcases hu.exists_between_affineIndependent_span_eq_top (singleton_subset_iff.mpr hx)
    (singleton_nonempty _) (affineIndependent_of_subsingleton _ _) with ⟨s, -, hsu, hs⟩
  exact ⟨s, hsu, hs⟩
#align is_open.exists_subset_affine_independent_span_eq_top IsOpen.exists_subset_affineIndependent_span_eq_top

/-- The affine span of a nonempty open set is `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant1963208bcbe21a79572bcb7a80a3da320c5017fe4340138a2bb246399289a082.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11c70fcf6128379193c4d0afcc3f82fef111d21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
