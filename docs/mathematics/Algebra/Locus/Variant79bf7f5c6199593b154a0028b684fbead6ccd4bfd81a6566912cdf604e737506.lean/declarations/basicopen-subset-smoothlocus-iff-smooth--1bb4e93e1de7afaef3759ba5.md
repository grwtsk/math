# basicOpen_subset_smoothLocus_iff_smooth

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
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46b09367-799a-a632-05b0-756d2c463216",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6f2ea2d-a526-5fae-9b65-3f4f89557229",
  "kind": "lemma",
  "lexical_name": "basicOpen_subset_smoothLocus_iff_smooth",
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
  "slug": "basicopen-subset-smoothlocus-iff-smooth--1bb4e93e1de7afaef3759ba5",
  "source": {
    "blob": "7b7dcd48adbdffb95fd752cca2a22f70025781fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb4e93e1de7afaef3759ba5acfa2188d460f3a4c5d6e1492f83795cd94d63a0",
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

Occurrence: `result:e6f2ea2d-a526-5fae-9b65-3f4f89557229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma basicOpen_subset_smoothLocus_iff_smooth [FinitePresentation R A] {f : A} :
    ↑(PrimeSpectrum.basicOpen f) ⊆ smoothLocus R A ↔
      Algebra.Smooth R (Localization.Away f) := by
  have : FinitePresentation A (Localization.Away f) := IsLocalization.Away.finitePresentation f
  rw [basicOpen_subset_smoothLocus_iff]
  exact ⟨fun H ↦ ⟨H, .trans _ A _⟩, fun H ↦ H.1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7dcd48adbdffb95fd752cca2a22f70025781fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
