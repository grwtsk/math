# tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:930d4226-8ac0-8dd1-199e-1883712c0570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e7b30d2-aed3-7b0f-f063-c4c98e45e4fe",
  "kind": "theorem",
  "lexical_name": "tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn",
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
  "slug": "tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-continuo--81572dacfacd45e4432e9071",
  "source": {
    "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 316,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81572dacfacd45e4432e9071b2928a5ec2e56939daf78546a7f2ab8a6f62b1fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7b30d2-aed3-7b0f-f063-c4c98e45e4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn
    [MetrizableSpace α] [IsLocallyFiniteMeasure μ] [IsOpenPosMeasure μ] (hs : IsCompact s)
    {c : α → ℝ} (hc : ContinuousOn c s) (h'c : ∀ y ∈ s, y ≠ x₀ → c y < c x₀)
    (hnc : ∀ x ∈ s, 0 ≤ c x) (hnc₀ : 0 < c x₀) (h₀ : x₀ ∈ closure (interior s))
    (hmg : ContinuousOn g s) :
    Tendsto (fun n : ℕ => (∫ x in s, c x ^ n ∂μ)⁻¹ • ∫ x in s, c x ^ n • g x ∂μ) atTop (𝓝 (g x₀)) :=
  haveI : x₀ ∈ s := by rw [← hs.isClosed.closure_eq]; exact closure_mono interior_subset h₀
  tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn hs hc h'c hnc hnc₀ h₀
    (hmg.integrableOn_compact hs) (hmg x₀ this)
#align tendsto_set_integral_pow_smul_of_unique_maximum_of_is_compact_of_continuous_on tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
