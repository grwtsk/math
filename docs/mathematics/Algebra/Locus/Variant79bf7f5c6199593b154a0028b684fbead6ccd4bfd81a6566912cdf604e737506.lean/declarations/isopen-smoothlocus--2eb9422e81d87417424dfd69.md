# isOpen_smoothLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b7dcd48adbdffb95fd752cca2a22f70025781fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:806568c6-c20f-f12e-0377-d1218634aaf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54c0cba8-9891-d936-d226-ef6c71912688",
  "kind": "lemma",
  "lexical_name": "isOpen_smoothLocus",
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
  "slug": "isopen-smoothlocus--2eb9422e81d87417424dfd69",
  "source": {
    "blob": "7b7dcd48adbdffb95fd752cca2a22f70025781fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 116,
    "path": "GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb9422e81d87417424dfd69b741a6cb6540947b26e742d58fbc67b6da8a48ee",
  "verification": {
    "reference": "docs/verification/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c0cba8-9891-d936-d226-ef6c71912688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_smoothLocus [FinitePresentation R A] : IsOpen (smoothLocus R A) := by
  rw [isOpen_iff_forall_mem_open]
  intro x hx
  obtain ⟨_, ⟨_, ⟨f, rfl⟩, rfl⟩, hxf, hf⟩ :=
    isBasis_basic_opens.exists_subset_of_mem_open
    (smoothLocus_eq_compl_support_inter.le hx).2 Module.isOpen_freeLocus
  rw [Module.basicOpen_subset_freeLocus_iff] at hf
  let Af := Localization.Away f
  have : Algebra.FinitePresentation A (Localization.Away f) :=
    IsLocalization.Away.finitePresentation f
  have : Algebra.FinitePresentation R (Localization.Away f) :=
    .trans _ A _
  have : IsOpen (smoothLocus R Af) := by
    have := IsLocalizedModule.iso (.powers f)
      (KaehlerDifferential.map R R A (Localization.Away f))
    have := this.extendScalarsOfIsLocalization (.powers f) (Localization.Away f)
    have := Module.Projective.of_equiv this
    rw [smoothLocus_eq_compl_support_inter, Module.support_eq_zeroLocus]
    exact (isClosed_zeroLocus _).isOpen_compl.inter Module.isOpen_freeLocus
  rw [← smoothLocus_comap_of_isLocalization f] at this
  replace this := (PrimeSpectrum.localization_away_isOpenEmbedding Af f).isOpenMap _ this
  rw [Set.image_preimage_eq_inter_range, localization_away_comap_range Af f] at this
  exact ⟨_, Set.inter_subset_left, this, hx, hxf⟩

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7dcd48adbdffb95fd752cca2a22f70025781fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
