# AnalyticOn.is_constant_or_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cae390e30c09d23fb8ac126ef16d9a3efb7ef998",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ffdd97b-28ec-01cb-e462-267d856cd29f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b70d02e2-ad92-e293-d3f0-61dc479a02e8",
  "kind": "theorem",
  "lexical_name": "AnalyticOn.is_constant_or_isOpen",
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
  "slug": "analyticon-is-constant-or-isopen--1f2f8a3cc45f4f6f15753c54",
  "source": {
    "blob": "cae390e30c09d23fb8ac126ef16d9a3efb7ef998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2f8a3cc45f4f6f15753c54ba9f34450a0d11a30e6b4f984bb13e06e6fb4e27",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70d02e2-ad92-e293-d3f0-61dc479a02e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOn.is_constant_or_isOpen (hg : AnalyticOn ℂ g U) (hU : IsPreconnected U) :
    (∃ w, ∀ z ∈ U, g z = w) ∨ ∀ (s) (_ : s ⊆ U), IsOpen s → IsOpen (g '' s) := by
  by_cases ∃ z₀ ∈ U, ∀ᶠ z in 𝓝 z₀, g z = g z₀
  · obtain ⟨z₀, hz₀, h⟩ := h
    exact Or.inl ⟨g z₀, hg.eqOn_of_preconnected_of_eventuallyEq analyticOn_const hU hz₀ h⟩
  · push_neg at h
    refine Or.inr fun s hs1 hs2 => isOpen_iff_mem_nhds.mpr ?_
    rintro z ⟨w, hw1, rfl⟩
    exact (hg w (hs1 hw1)).eventually_constant_or_nhds_le_map_nhds.resolve_left (h w (hs1 hw1))
        (image_mem_map (hs2.mem_nhds hw1))
#align analytic_on.is_constant_or_is_open AnalyticOn.is_constant_or_isOpen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant248636dcf533c1a2364ef1507b559b00b6aefbb82ec562a67808701573249462.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae390e30c09d23fb8ac126ef16d9a3efb7ef998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
