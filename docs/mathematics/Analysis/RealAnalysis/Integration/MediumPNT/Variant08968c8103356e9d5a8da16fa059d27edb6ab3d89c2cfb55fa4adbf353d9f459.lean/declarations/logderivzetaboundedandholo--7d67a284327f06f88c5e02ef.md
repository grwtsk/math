# LogDerivZetaBoundedAndHolo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f67eee-00c5-917c-250d-7720c6554573",
  "kind": "lemma",
  "lexical_name": "LogDerivZetaBoundedAndHolo",
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
  "slug": "logderivzetaboundedandholo--7d67a284327f06f88c5e02ef",
  "source": {
    "blob": "8229744c9aee6a18b980b51f465971925620d030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3084,
    "line": 3059,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d67a284327f06f88c5e02ef2c417653795042fa67e1a1c28545bab21a87d0ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f67eee-00c5-917c-250d-7720c6554573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3059–3084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LogDerivZetaBoundedAndHolo : ∃ A C : ℝ, 0 < C ∧ A ∈ Ioc 0 (1 / 2) ∧ LogDerivZetaHasBound A C
    ∧ ∀ (T : ℝ) (_ : 3 ≤ T),
    HolomorphicOn (fun (s : ℂ) ↦ ζ' s / (ζ s))
    (( (Icc ((1 : ℝ) - A / Real.log T ^ 9) 2)  ×ℂ (Icc (-T) T) ) \ {1}) := by
  obtain ⟨A₁, A₁_in, C, C_pos, zeta_bnd⟩ := LogDerivZetaBndUnif
  obtain ⟨A₂, A₂_in, holo⟩ := LogDerivZetaHolcLargeT
  refine ⟨min A₁ A₂, C, C_pos, ?_, ?_, ?_⟩
  · exact ⟨lt_min A₁_in.1 A₂_in.1, le_trans (min_le_left _ _) A₁_in.2⟩
  · intro σ T hT hσ
    apply zeta_bnd _ _ hT
    apply mem_Ici.mpr (le_trans _ hσ)
    gcongr
    · bound
    · apply min_le_left
  · intro T hT
    apply (holo _ hT).mono
    intro s hs
    simp only [Set.mem_sdiff, mem_singleton_iff, mem_reProdIm] at hs ⊢
    refine ⟨?_, hs.2⟩
    refine ⟨?_, hs.1.2⟩
    refine ⟨?_, hs.1.1.2⟩
    apply le_trans _ hs.1.1.1
    gcongr
    · bound
    · apply min_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean#L3059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8229744c9aee6a18b980b51f465971925620d030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
