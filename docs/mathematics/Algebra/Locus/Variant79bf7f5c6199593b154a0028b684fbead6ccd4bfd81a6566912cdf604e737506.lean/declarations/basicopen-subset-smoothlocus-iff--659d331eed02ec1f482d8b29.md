# basicOpen_subset_smoothLocus_iff

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
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:408acfb0-4a54-a1a4-7438-1a790c00f4a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71b242e1-2dbf-0996-4a6c-e587f1f94445",
  "kind": "lemma",
  "lexical_name": "basicOpen_subset_smoothLocus_iff",
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
  "slug": "basicopen-subset-smoothlocus-iff--659d331eed02ec1f482d8b29",
  "source": {
    "blob": "7b7dcd48adbdffb95fd752cca2a22f70025781fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:659d331eed02ec1f482d8b29ca0edf15c67e031555e9eb3998fb12edfce83e68",
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

Occurrence: `result:71b242e1-2dbf-0996-4a6c-e587f1f94445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma basicOpen_subset_smoothLocus_iff [FinitePresentation R A] {f : A} :
    ↑(PrimeSpectrum.basicOpen f) ⊆ smoothLocus R A ↔
      Algebra.FormallySmooth R (Localization.Away f) := by
  rw [smoothLocus_eq_compl_support_inter, Set.subset_inter_iff, Set.subset_compl_comm,
    PrimeSpectrum.basicOpen_eq_zeroLocus_compl, compl_compl,
    ← LocalizedModule.subsingleton_iff_support_subset,
    Algebra.FormallySmooth.iff_subsingleton_and_projective]
  congr! 1
  · have := IsLocalizedModule.iso (.powers f) (H1Cotangent.map R R A (Localization.Away f))
    rw [this.subsingleton_congr]
  · rw [← PrimeSpectrum.basicOpen_eq_zeroLocus_compl, Module.basicOpen_subset_freeLocus_iff]
    have := IsLocalizedModule.iso (.powers f)
        (KaehlerDifferential.map R R A (Localization.Away f))
    have := this.extendScalarsOfIsLocalization (.powers f) (Localization.Away f)
    exact ⟨fun _ ↦ .of_equiv this, fun _ ↦ .of_equiv this.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7dcd48adbdffb95fd752cca2a22f70025781fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
