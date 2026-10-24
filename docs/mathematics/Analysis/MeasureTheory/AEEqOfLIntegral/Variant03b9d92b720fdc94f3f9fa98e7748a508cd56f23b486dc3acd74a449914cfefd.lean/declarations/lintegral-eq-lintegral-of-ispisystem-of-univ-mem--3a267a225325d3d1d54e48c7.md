# lintegral_eq_lintegral_of_isPiSystem_of_univ_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c1c8c3c-4e61-09d9-4e08-026f6d24aa13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f98ee51-1a6b-90cb-f195-13cd020a78d4",
  "kind": "lemma",
  "lexical_name": "lintegral_eq_lintegral_of_isPiSystem_of_univ_mem",
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
  "slug": "lintegral-eq-lintegral-of-ispisystem-of-univ-mem--3a267a225325d3d1d54e48c7",
  "source": {
    "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 199,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a267a225325d3d1d54e48c73f4c79f0a5a99391fca3180bf7346b451855fc03",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f98ee51-1a6b-90cb-f195-13cd020a78d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_eq_lintegral_of_isPiSystem_of_univ_mem
    (h_eq : m0 = MeasurableSpace.generateFrom s) (h_inter : IsPiSystem s) (h_univ : Set.univ ∈ s)
    (basic : ∀ t ∈ s, ∫⁻ x in t, f x ∂μ = ∫⁻ x in t, g x ∂μ)
    (hf_int : ∫⁻ x, f x ∂μ ≠ ∞) {t : Set α} (ht : MeasurableSet t) :
    ∫⁻ x in t, f x ∂μ = ∫⁻ x in t, g x ∂μ := by
  refine lintegral_eq_lintegral_of_isPiSystem h_eq h_inter basic ?_ hf_int t ht
  rw [← setLIntegral_univ, ← setLIntegral_univ g]
  exact basic _ h_univ

/-- If two a.e.-measurable functions `α × β → ℝ≥0∞` with finite integrals have the same integral
on every rectangle, then they are almost everywhere equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20fb39e19f7d730f526643e81992c3ffeca9682` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
