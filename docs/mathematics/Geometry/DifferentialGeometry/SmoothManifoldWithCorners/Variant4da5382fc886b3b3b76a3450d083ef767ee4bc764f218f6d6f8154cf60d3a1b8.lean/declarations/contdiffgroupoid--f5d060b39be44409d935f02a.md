# contDiffGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80e28e96afc53df05d8acd1c15fd7ed4a0ad7f045e12835f2d57af235271b70a",
  "kind": "def",
  "lexical_name": "contDiffGroupoid",
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
  "slug": "contdiffgroupoid--f5d060b39be44409d935f02a",
  "source": {
    "blob": "2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 535,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5d060b39be44409d935f02a6795a7aa409f99470497797560e513b9c0452868",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80e28e96afc53df05d8acd1c15fd7ed4a0ad7f045e12835f2d57af235271b70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contDiffGroupoid : StructureGroupoid H :=
  Pregroupoid.groupoid
    { property := fun f s => ContDiffOn 𝕜 n (I ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I)
      comp := fun {f g u v} hf hg _ _ _ => by
        have : I ∘ (g ∘ f) ∘ I.symm = (I ∘ g ∘ I.symm) ∘ I ∘ f ∘ I.symm := by ext x; simp
        simp only [this]
        refine hg.comp (hf.mono ?_) ?_
        · rintro x ⟨hx1, hx2⟩
          exact ⟨hx1.1, hx2⟩
        · rintro x ⟨hx1, _⟩
          simp only [mfld_simps] at hx1 ⊢
          exact hx1.2
      id_mem := by
        apply ContDiffOn.congr contDiff_id.contDiffOn
        rintro x ⟨_, hx2⟩
        rcases mem_range.1 hx2 with ⟨y, hy⟩
        rw [← hy]
        simp only [mfld_simps]
      locality := fun {f u} _ H => by
        apply contDiffOn_of_locally_contDiffOn
        rintro y ⟨hy1, hy2⟩
        rcases mem_range.1 hy2 with ⟨x, hx⟩
        rw [← hx] at hy1 ⊢
        simp only [mfld_simps] at hy1 ⊢
        rcases H x hy1 with ⟨v, v_open, xv, hv⟩
        have : I.symm ⁻¹' (u ∩ v) ∩ range I = I.symm ⁻¹' u ∩ range I ∩ I.symm ⁻¹' v := by
          rw [preimage_inter, inter_assoc, inter_assoc]
          congr 1
          rw [inter_comm]
        rw [this] at hv
        exact ⟨I.symm ⁻¹' v, v_open.preimage I.continuous_symm, by simpa, hv⟩
      congr := fun {f g u} _ fg hf => by
        apply hf.congr
        rintro y ⟨hy1, hy2⟩
        rcases mem_range.1 hy2 with ⟨x, hx⟩
        rw [← hx] at hy1 ⊢
        simp only [mfld_simps] at hy1 ⊢
        rw [fg _ hy1] }
#align cont_diff_groupoid contDiffGroupoid

variable {n}

/-- Inclusion of the groupoid of `C^n` local diffeos in the groupoid of `C^m` local diffeos when
`m ≤ n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
