# gauge_lt_one_eq_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 455,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8059e85d-3935-5dc1-8b74-b722264d4ad5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f158fd55-8484-3128-2586-999605849663",
  "kind": "theorem",
  "lexical_name": "gauge_lt_one_eq_interior",
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
  "slug": "gauge-lt-one-eq-interior--e7b5e68271a4cadee8db4c81",
  "source": {
    "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 455,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7b5e68271a4cadee8db4c81aa8abe69ffadf521725759bb6ce503e9608e421e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f158fd55-8484-3128-2586-999605849663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauge_lt_one_eq_interior (hc : Convex ℝ s) (hs₀ : s ∈ 𝓝 0) :
    { x | gauge s x < 1 } = interior s := by
  refine Subset.antisymm (fun x hx ↦ ?_) (interior_subset_gauge_lt_one s)
  rcases mem_openSegment_of_gauge_lt_one (absorbent_nhds_zero hs₀) hx with ⟨y, hys, hxy⟩
  exact hc.openSegment_interior_self_subset_interior (mem_interior_iff_mem_nhds.2 hs₀) hys hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c3a1f3e957a4dc8668df1f4f4e31e793690624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
