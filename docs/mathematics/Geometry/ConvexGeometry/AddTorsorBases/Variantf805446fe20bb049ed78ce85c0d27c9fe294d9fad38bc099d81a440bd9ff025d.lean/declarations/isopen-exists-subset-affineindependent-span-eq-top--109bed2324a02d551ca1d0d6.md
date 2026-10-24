# IsOpen.exists_subset_affineIndependent_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38c5bc96-4107-ddbb-4dc2-36070a2045f0",
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
  "slug": "isopen-exists-subset-affineindependent-span-eq-top--109bed2324a02d551ca1d0d6",
  "source": {
    "blob": "8d36115b5f0eb58a062e6483ab0c7e794b469b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109bed2324a02d551ca1d0d6133085acf529070e6ef3be4dc501a38d72afbe4a",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c5bc96-4107-ddbb-4dc2-36070a2045f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.exists_subset_affineIndependent_span_eq_top {u : Set P} (hu : IsOpen u)
    (hne : u.Nonempty) : ∃ s ⊆ u, AffineIndependent ℝ ((↑) : s → P) ∧ affineSpan ℝ s = ⊤ := by
  rcases hne with ⟨x, hx⟩
  rcases hu.exists_between_affineIndependent_span_eq_top (singleton_subset_iff.mpr hx)
    (singleton_nonempty _) (affineIndependent_of_subsingleton _ _) with ⟨s, -, hsu, hs⟩
  exact ⟨s, hsu, hs⟩

/-- The affine span of a nonempty open set is `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d36115b5f0eb58a062e6483ab0c7e794b469b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
