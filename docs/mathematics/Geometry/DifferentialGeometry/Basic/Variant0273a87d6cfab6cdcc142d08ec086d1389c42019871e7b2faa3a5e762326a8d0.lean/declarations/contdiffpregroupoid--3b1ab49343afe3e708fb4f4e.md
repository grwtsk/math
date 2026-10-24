# contDiffPregroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:104a263e3bfad26e5238d027840449d620da0eaf1e710d79b6f95bf61da85cbb",
  "kind": "def",
  "lexical_name": "contDiffPregroupoid",
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
  "slug": "contdiffpregroupoid--3b1ab49343afe3e708fb4f4e",
  "source": {
    "blob": "5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 526,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b1ab49343afe3e708fb4f4e1cbd68de593204041dab38cfdd0a59030ce656f8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:104a263e3bfad26e5238d027840449d620da0eaf1e710d79b6f95bf61da85cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contDiffPregroupoid : Pregroupoid H where
  property f s := ContDiffOn 𝕜 n (I ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I)
  comp {f g u v} hf hg _ _ _ := by
    have : I ∘ (g ∘ f) ∘ I.symm = (I ∘ g ∘ I.symm) ∘ I ∘ f ∘ I.symm := by ext x; simp
    simp only [this]
    refine hg.comp (hf.mono fun x ⟨hx1, hx2⟩ ↦ ⟨hx1.1, hx2⟩) ?_
    rintro x ⟨hx1, _⟩
    simp only [mfld_simps] at hx1 ⊢
    exact hx1.2
  id_mem := by
    apply ContDiffOn.congr contDiff_id.contDiffOn
    rintro x ⟨_, hx2⟩
    rcases mem_range.1 hx2 with ⟨y, hy⟩
    rw [← hy]
    simp only [mfld_simps]
  locality {f u} _ H := by
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
  congr {f g u} _ fg hf := by
    apply hf.congr
    rintro y ⟨hy1, hy2⟩
    rcases mem_range.1 hy2 with ⟨x, hx⟩
    rw [← hx] at hy1 ⊢
    simp only [mfld_simps] at hy1 ⊢
    rw [fg _ hy1]

variable (n I) in
/-- Given a model with corners `(E, H)`, we define the groupoid of invertible `C^n` transformations
of `H` as the invertible maps that are `C^n` when read in `E` through `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
