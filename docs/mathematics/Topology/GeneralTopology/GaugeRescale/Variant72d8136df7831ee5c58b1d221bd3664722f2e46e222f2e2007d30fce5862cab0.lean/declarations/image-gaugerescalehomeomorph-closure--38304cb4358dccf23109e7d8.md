# image_gaugeRescaleHomeomorph_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a7098a5-510f-e575-946f-6720ec566589",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d38b013d-dacc-02c0-a805-e2c0bd9ed414",
  "kind": "theorem",
  "lexical_name": "image_gaugeRescaleHomeomorph_closure",
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
  "slug": "image-gaugerescalehomeomorph-closure--38304cb4358dccf23109e7d8",
  "source": {
    "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38304cb4358dccf23109e7d8b6ec201f9c021eba13dc9bdbb4029c0b11ef288f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d38b013d-dacc-02c0-a805-e2c0bd9ed414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_gaugeRescaleHomeomorph_closure {s t : Set E}
    (hsc : Convex ℝ s) (hs₀ : s ∈ 𝓝 0) (hsb : IsVonNBounded ℝ s)
    (htc : Convex ℝ t) (ht₀ : t ∈ 𝓝 0) (htb : IsVonNBounded ℝ t) :
    gaugeRescaleHomeomorph s t hsc hs₀ hsb htc ht₀ htb '' closure s = closure t := by
  refine Subset.antisymm (mapsTo_gaugeRescale_closure hsc hs₀ htc
    (mem_of_mem_nhds ht₀) (absorbent_nhds_zero ht₀)).image_subset ?_
  rw [← Homeomorph.preimage_symm, ← image_subset_iff]
  exact (mapsTo_gaugeRescale_closure htc ht₀ hsc
    (mem_of_mem_nhds hs₀) (absorbent_nhds_zero hs₀)).image_subset

/-- Given two convex bounded sets in a topological vector space with nonempty interiors,
there exists a homeomorphism of the ambient space
that sends the interior, the closure, and the frontier of one set
to the interior, the closure, and the frontier of the other set.

In particular, if both `s` and `t` are open set or both `s` and `t` are closed sets,
then `e` maps `s` to `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64784ae3b43688b0a149aeb865cd49946003f87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
