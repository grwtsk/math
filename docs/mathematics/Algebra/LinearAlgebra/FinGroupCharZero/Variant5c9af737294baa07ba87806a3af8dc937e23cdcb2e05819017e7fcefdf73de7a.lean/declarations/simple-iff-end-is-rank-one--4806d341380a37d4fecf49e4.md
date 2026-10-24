# simple_iff_end_is_rank_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:065f54db-7390-a511-ac90-8a7b98b3bdac",
  "kind": "lemma",
  "lexical_name": "simple_iff_end_is_rank_one",
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
  "slug": "simple-iff-end-is-rank-one--4806d341380a37d4fecf49e4",
  "source": {
    "blob": "4b17656a078404f7ef76f6a50c79e5cf1c880a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinGroupCharZero/Variant5c9af737294baa07ba87806a3af8dc937e23cdcb2e05819017e7fcefdf73de7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4806d341380a37d4fecf49e4e65fac05476ca0839f8a4d767b9d14cb7bf269bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinGroupCharZero/Variant5c9af737294baa07ba87806a3af8dc937e23cdcb2e05819017e7fcefdf73de7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:065f54db-7390-a511-ac90-8a7b98b3bdac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma simple_iff_end_is_rank_one [NeZero (Nat.card G : k)] (V : FDRep k G) :
    Simple V ↔ Module.finrank k (V ⟶ V) = 1 where
  mp h := finrank_endomorphism_simple_eq_one k V
  mpr h := by
    refine { mono_isIso_iff_nonzero {W} f _ := ⟨fun hf habs ↦ ?_, fun hf ↦ ?_⟩ }
    · rw [habs, isIsoZero_iff_source_target_isZero] at hf
      obtain ⟨g, hg⟩ : ∃ g : V ⟶ V, g ≠ 0 :=
        (Module.finrank_pos_iff_exists_ne_zero (R := k)).mp (by grind)
      exact hg (hf.2.eq_zero_of_src g)
    · suffices Epi f by exact isIso_of_mono_of_epi f
      suffices Epi (Abelian.image.ι f) by
        rw [← Abelian.image.fac f]
        exact epi_comp _ _
      rw [← Abelian.image.fac f] at hf
      set ι := Abelian.image.ι f
      set φ := Injective.factorThru (𝟙 _) ι
      have hφι : φ ≫ ι ≠ 0 := by
        intro habs
        have hιφ : 𝟙 _ = ι ≫ φ := (Injective.comp_factorThru (𝟙 _) ι).symm
        apply_fun (· ≫ ι) at hιφ
        simp_all
      obtain ⟨c, hc⟩ : ∃ c : k, c • _ = 𝟙 V := (finrank_eq_one_iff_of_nonzero' _ hφι).mp h (𝟙 V)
      refine Preadditive.epi_of_cancel_zero _ (fun g hg ↦ ?_)
      apply_fun (· ≫ g) at hc
      simpa [hg] using hc.symm

omit [Finite G] in
/--
If `G` is finite and `k` an algebraically closed field of characteristic `0`,
then an object of `FDRep k G` is simple if and only if its character has norm `1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinGroupCharZero/Variant5c9af737294baa07ba87806a3af8dc937e23cdcb2e05819017e7fcefdf73de7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinGroupCharZero/Variant5c9af737294baa07ba87806a3af8dc937e23cdcb2e05819017e7fcefdf73de7a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b17656a078404f7ef76f6a50c79e5cf1c880a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
