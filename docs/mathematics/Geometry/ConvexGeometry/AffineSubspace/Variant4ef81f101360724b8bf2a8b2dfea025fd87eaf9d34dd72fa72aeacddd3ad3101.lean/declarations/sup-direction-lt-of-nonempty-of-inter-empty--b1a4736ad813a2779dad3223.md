# sup_direction_lt_of_nonempty_of_inter_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 969,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30898b63-3198-1480-a7cb-394a07c33d38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0aa24f52-1668-4673-2e4d-86adc1794d41",
  "kind": "theorem",
  "lexical_name": "sup_direction_lt_of_nonempty_of_inter_empty",
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
  "slug": "sup-direction-lt-of-nonempty-of-inter-empty--b1a4736ad813a2779dad3223",
  "source": {
    "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 990,
    "line": 969,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1a4736ad813a2779dad322361ed8fd184904bc5e77503bdae50b7aec4a7dbd7",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa24f52-1668-4673-2e4d-86adc1794d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–990.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_direction_lt_of_nonempty_of_inter_empty {s1 s2 : AffineSubspace k P}
    (h1 : (s1 : Set P).Nonempty) (h2 : (s2 : Set P).Nonempty) (he : (s1 ∩ s2 : Set P) = ∅) :
    s1.direction ⊔ s2.direction < (s1 ⊔ s2).direction := by
  cases' h1 with p1 hp1
  cases' h2 with p2 hp2
  rw [SetLike.lt_iff_le_and_exists]
  use sup_direction_le s1 s2, p2 -ᵥ p1,
    vsub_mem_direction ((le_sup_right : s2 ≤ s1 ⊔ s2) hp2) ((le_sup_left : s1 ≤ s1 ⊔ s2) hp1)
  intro h
  rw [Submodule.mem_sup] at h
  rcases h with ⟨v1, hv1, v2, hv2, hv1v2⟩
  rw [← sub_eq_zero, sub_eq_add_neg, neg_vsub_eq_vsub_rev, add_comm v1, add_assoc, ←
    vadd_vsub_assoc, ← neg_neg v2, add_comm, ← sub_eq_add_neg, ← vsub_vadd_eq_vsub_sub,
    vsub_eq_zero_iff_eq] at hv1v2
  refine' Set.Nonempty.ne_empty _ he
  use v1 +ᵥ p1, vadd_mem_of_mem_direction hv1 hp1
  rw [hv1v2]
  exact vadd_mem_of_mem_direction (Submodule.neg_mem _ hv2) hp2
#align affine_subspace.sup_direction_lt_of_nonempty_of_inter_empty AffineSubspace.sup_direction_lt_of_nonempty_of_inter_empty

/-- If the directions of two nonempty affine subspaces span the whole module, they have nonempty
intersection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa37fec91ccf232a951e4526b4d13d6283bc3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
