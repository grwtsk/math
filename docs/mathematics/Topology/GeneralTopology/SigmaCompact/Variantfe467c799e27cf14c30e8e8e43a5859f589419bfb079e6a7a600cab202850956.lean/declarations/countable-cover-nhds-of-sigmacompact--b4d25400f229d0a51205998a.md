# countable_cover_nhds_of_sigmaCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed18479b-71e7-74f8-e892-2e41d534ddec",
  "kind": "theorem",
  "lexical_name": "countable_cover_nhds_of_sigmaCompact",
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
  "slug": "countable-cover-nhds-of-sigmacompact--b4d25400f229d0a51205998a",
  "source": {
    "blob": "f4cb963afa9e1678f649743f8e227ec21a8887aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 316,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d25400f229d0a51205998a001b353bded4bbe366add0d06b3ab8104b62cfb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed18479b-71e7-74f8-e892-2e41d534ddec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_cover_nhds_of_sigmaCompact {f : X → Set X} (hf : ∀ x, f x ∈ 𝓝 x) :
    ∃ s : Set X, s.Countable ∧ ⋃ x ∈ s, f x = univ := by
  simp only [← nhdsWithin_univ] at hf
  rcases countable_cover_nhdsWithin_of_sigmaCompact isClosed_univ fun x _ => hf x with
    ⟨s, -, hsc, hsU⟩
  exact ⟨s, hsc, univ_subset_iff.1 hsU⟩
end

/-- An [exhaustion by compact sets](https://en.wikipedia.org/wiki/Exhaustion_by_compact_sets) of a
topological space is a sequence of compact sets `K n` such that `K n ⊆ interior (K (n + 1))` and
`⋃ n, K n = univ`.

If `X` is a locally compact sigma compact space, then `CompactExhaustion.choice X` provides
a choice of an exhaustion by compact sets. This choice is also available as
`(default : CompactExhaustion X)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4cb963afa9e1678f649743f8e227ec21a8887aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
