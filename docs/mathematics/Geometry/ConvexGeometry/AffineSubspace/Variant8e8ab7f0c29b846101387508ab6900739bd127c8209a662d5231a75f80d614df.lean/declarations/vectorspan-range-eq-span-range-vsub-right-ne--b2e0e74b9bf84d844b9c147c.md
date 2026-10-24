# vectorSpan_range_eq_span_range_vsub_right_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a09ff90c-cdcb-961d-daf9-7882344a66c1",
  "kind": "theorem",
  "lexical_name": "vectorSpan_range_eq_span_range_vsub_right_ne",
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
  "slug": "vectorspan-range-eq-span-range-vsub-right-ne--b2e0e74b9bf84d844b9c147c",
  "source": {
    "blob": "6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1154,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2e0e74b9bf84d844b9c147c82e1e988ea7669e67391ac0f919cad3ceee90102",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a09ff90c-cdcb-961d-daf9-7882344a66c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1154–1171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vectorSpan_range_eq_span_range_vsub_right_ne (p : ι → P) (i₀ : ι) :
    vectorSpan k (Set.range p) =
      Submodule.span k (Set.range fun i : { x // x ≠ i₀ } => p i -ᵥ p i₀) := by
  rw [← Set.image_univ, vectorSpan_image_eq_span_vsub_set_right_ne k _ (Set.mem_univ i₀)]
  congr with v
  simp only [Set.mem_range, Set.mem_image, Set.mem_diff, Set.mem_singleton_iff, Subtype.exists,
    Subtype.coe_mk]
  constructor
  · rintro ⟨x, ⟨i₁, ⟨⟨_, hi₁⟩, rfl⟩⟩, hv⟩
    exact ⟨i₁, hi₁, hv⟩
  · exact fun ⟨i₁, hi₁, hv⟩ => ⟨p i₁, ⟨i₁, ⟨Set.mem_univ _, hi₁⟩, rfl⟩, hv⟩
#align vector_span_range_eq_span_range_vsub_right_ne vectorSpan_range_eq_span_range_vsub_right_ne

section

variable {s : Set P}

/-- The affine span of a set is nonempty if and only if that set is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean#L1154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
