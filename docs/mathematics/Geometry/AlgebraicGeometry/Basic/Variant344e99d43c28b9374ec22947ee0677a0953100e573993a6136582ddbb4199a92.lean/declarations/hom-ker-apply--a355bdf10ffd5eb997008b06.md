# Hom.ker_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 582,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e9c8d71-e61c-0206-cc69-76974b388ea7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c769103-0519-320b-da3a-afdb07d53f97",
  "kind": "lemma",
  "lexical_name": "Hom.ker_apply",
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
  "slug": "hom-ker-apply--a355bdf10ffd5eb997008b06",
  "source": {
    "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 582,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a355bdf10ffd5eb997008b06266ec606f8c0844a3d72fef771490d82a8c29855",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c769103-0519-320b-da3a-afdb07d53f97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.ker_apply (f : X.Hom Y) [QuasiCompact f] (U : Y.affineOpens) :
    f.ker.ideal U = RingHom.ker (f.app U).hom := by
  let I : IdealSheafData Y := ⟨fun U ↦ RingHom.ker (f.app U).hom, ?_, _, rfl⟩
  · exact congr($(ofIdeals_ideal I).ideal U)
  intro U s
  apply le_antisymm
  · refine Ideal.map_le_iff_le_comap.mpr fun x hx ↦ ?_
    simp_rw [RingHom.comap_ker, ← CommRingCat.hom_comp, Scheme.affineBasicOpen_coe, f.naturality,
      CommRingCat.hom_comp, ← RingHom.comap_ker]
    exact Ideal.ker_le_comap _ hx
  · intro x hx
    have := U.2.isLocalization_basicOpen s
    obtain ⟨x, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.mk'_surjective (.powers s) x
    refine (IsLocalization.mk'_mem_map_algebraMap_iff _ _ _ _ _).mpr ?_
    suffices ∃ (V : X.Opens) (hV : V = X.basicOpen ((f.app U).hom s)),
        letI := hV.trans_le (X.basicOpen_le _); ((f.app U).hom x |_ V) = 0 by
      obtain ⟨_, rfl, H⟩ := this
      obtain ⟨n, hn⟩ := exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact
        X (U := f ⁻¹ᵁ U) (QuasiCompact.isCompact_preimage (f := f) _ U.1.2 U.2.isCompact)
        (f.app U x) (f.app U s) H
      exact ⟨_, ⟨n, rfl⟩, by simpa using hn⟩
    refine ⟨f ⁻¹ᵁ Y.basicOpen s, by simp, ?_⟩
    replace hx : (Y.presheaf.map (homOfLE (Y.basicOpen_le s)).op ≫ f.app _).hom x = 0 := by
      trans (f.app (Y.basicOpen s)).hom (algebraMap Γ(Y, U) _ x)
      · simp [-NatTrans.naturality, RingHom.algebraMap_toAlgebra]
      · simp only [Scheme.affineBasicOpen_coe, RingHom.mem_ker] at hx
        rw [← IsLocalization.mk'_spec' (M := .powers s), map_mul, hx, mul_zero]
    rwa [f.naturality] at hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce5dd422aa2b418b7a04d1ca6a8d56487a994d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
