# simple_iff_end_is_rank_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e64518fcf1a9b7390aa94ea1f3ca9fd2c2963f92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62ce6b1c-8e57-8e9d-7756-7585de197631",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f11218dc-302e-0335-ec7d-ea9e57131284",
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
  "slug": "simple-iff-end-is-rank-one--1925d18f360d24c75b71730f",
  "source": {
    "blob": "e64518fcf1a9b7390aa94ea1f3ca9fd2c2963f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1925d18f360d24c75b71730faf7f23e09d05ffeae3ea78c56459b1f60f176170",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11218dc-302e-0335-ec7d-ea9e57131284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–119.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinGroupCharZero/Variant2e43d1215e6be28872de61503695eb63c01751caf85ec05b78a1af4f1622902d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64518fcf1a9b7390aa94ea1f3ca9fd2c2963f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
