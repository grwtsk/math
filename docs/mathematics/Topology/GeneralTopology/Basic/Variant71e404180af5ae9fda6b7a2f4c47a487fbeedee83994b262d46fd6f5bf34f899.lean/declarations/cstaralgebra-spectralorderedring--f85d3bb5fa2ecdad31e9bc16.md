# CStarAlgebra.spectralOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1001146af344d68d222246d018a5927cdfc2326",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d38822e4-95fb-a1be-fd76-73201aef543a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1dab70d-8cd6-69c6-5496-77ca20b65f08",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.spectralOrderedRing",
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
  "slug": "cstaralgebra-spectralorderedring--f85d3bb5fa2ecdad31e9bc16",
  "source": {
    "blob": "f1001146af344d68d222246d018a5927cdfc2326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 374,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f85d3bb5fa2ecdad31e9bc16e266363970d2ae2166c3da8e946b0e6e13520326",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1dab70d-8cd6-69c6-5496-77ca20b65f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.spectralOrderedRing : @StarOrderedRing A _ (CStarAlgebra.spectralOrder A) _ :=
  let _ := CStarAlgebra.spectralOrder A
  { le_iff := by
      intro x y
      constructor
      · intro h
        obtain ⟨s, hs₁, _, hs₂⟩ :=
          CFC.exists_sqrt_of_isSelfAdjoint_of_quasispectrumRestricts h.1 h.2
        refine ⟨s * s, ?_, by rwa [eq_sub_iff_add_eq', eq_comm] at hs₂⟩
        exact AddSubmonoid.subset_closure ⟨s, by simp [hs₁.star_eq, sq]⟩
      · rintro ⟨p, hp, rfl⟩
        simp only [spectralOrder, add_sub_cancel_left]
        induction hp using AddSubmonoid.closure_induction with
        | mem x hx =>
          obtain ⟨s, rfl⟩ := hx
          refine ⟨IsSelfAdjoint.star_mul_self s, ?_⟩
          rw [quasispectrumRestricts_iff_spectrumRestricts_inr' ℂ,
            SpectrumRestricts.nnreal_iff, Unitization.inr_mul, Unitization.inr_star]
          exact spectrum_star_mul_self_nonneg
        | one =>
          rw [quasispectrumRestricts_iff_spectrumRestricts_inr' ℂ, SpectrumRestricts.nnreal_iff]
          nontriviality A
          simp
        | mul x y _ _ hx hy =>
          simp +singlePass only [← Unitization.isSelfAdjoint_inr (R := ℂ),
            quasispectrumRestricts_iff_spectrumRestricts_inr' ℂ] at hx hy ⊢
          rw [Unitization.inr_add]
          exact ⟨hx.1.add hy.1, hx.2.nnreal_add hx.1 hy.1 hy.2⟩ }

end SpectralOrder

section NonnegSpectrumClass

variable {A : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

open scoped CStarAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1001146af344d68d222246d018a5927cdfc2326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
