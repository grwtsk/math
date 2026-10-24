# StrictConvexOn.map_sum_lt_iff_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc5cf90f-49e0-0085-f09a-17d753089fef",
  "kind": "theorem",
  "lexical_name": "StrictConvexOn.map_sum_lt_iff_of_pos",
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
  "slug": "strictconvexon-map-sum-lt-iff-of-pos--337323b3acc77d1689778141",
  "source": {
    "blob": "aa3b396babf0ab664eef29767001286885bb0035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:337323b3acc77d168977814177ea96ec586434e21ea6c48c4c6d7838581bc927",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc5cf90f-49e0-0085-f09a-17d753089fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvexOn.map_sum_lt_iff_of_pos (hf : StrictConvexOn 𝕜 s f) (h₀ : ∀ i ∈ t, 0 < w i)
    (h₁ : ∑ i ∈ t, w i = 1) (hmem : ∀ i ∈ t, p i ∈ s) :
    f (∑ i ∈ t, w i • p i) < ∑ i ∈ t, w i • f (p i) ↔ ∃ j ∈ t, ∃ k ∈ t, p j ≠ p k := by
  refine ⟨fun h ↦ ?_, hf.map_sum_lt h₀ h₁ hmem⟩
  contrapose! h
  exact hf.map_sum_eq_iff_of_pos h₀ h₁ hmem |>.mpr h |>.not_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3b396babf0ab664eef29767001286885bb0035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
