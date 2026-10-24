# epi_iff_isIso_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fae3cb0-9737-3773-e610-c0bdf3542d4e",
  "kind": "lemma",
  "lexical_name": "epi_iff_isIso_inl",
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
  "slug": "epi-iff-isiso-inl--c3452d086fd5370b5b3cfb9c",
  "source": {
    "blob": "53cfc92075cd8da8896521af794af48df5f987bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3452d086fd5370b5b3cfb9c11d72040a14ddd8036776a712c4114f0bb22374e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fae3cb0-9737-3773-e610-c0bdf3542d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_iff_isIso_inl (hc : IsColimit c) : Epi f ↔ IsIso c.inl := by
  rw [epi_iff_inl_eq_inr hc]
  constructor
  · intro h
    obtain ⟨φ, hφ₁, hφ₂⟩ := PushoutCocone.IsColimit.desc' hc (𝟙 Y) (𝟙 Y) (by simp)
    refine ⟨φ, hφ₁, PushoutCocone.IsColimit.hom_ext hc ?_ ?_⟩
    · dsimp
      simp only [comp_id, reassoc_of% hφ₁]
    · dsimp
      simp only [comp_id, h, reassoc_of% hφ₂]
  · intro
    obtain ⟨φ, hφ₁, hφ₂⟩ := PushoutCocone.IsColimit.desc' hc (𝟙 Y) (𝟙 Y) (by simp)
    have : IsSplitMono φ := IsSplitMono.mk ⟨SplitMono.mk c.inl (by
      rw [← cancel_epi c.inl, reassoc_of% hφ₁, comp_id])⟩
    rw [← cancel_mono φ, hφ₁, hφ₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53cfc92075cd8da8896521af794af48df5f987bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
