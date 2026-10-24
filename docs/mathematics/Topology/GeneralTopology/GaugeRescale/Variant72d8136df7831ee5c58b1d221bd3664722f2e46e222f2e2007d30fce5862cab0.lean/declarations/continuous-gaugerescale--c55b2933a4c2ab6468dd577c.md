# continuous_gaugeRescale

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
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62ad5a14-38aa-e07b-f958-c1c871a52a3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e13dfd56-d663-2161-692f-bee56afb9f91",
  "kind": "theorem",
  "lexical_name": "continuous_gaugeRescale",
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
  "slug": "continuous-gaugerescale--c55b2933a4c2ab6468dd577c",
  "source": {
    "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c55b2933a4c2ab6468dd577c33f9f1b51f6e163b05938a9b9914b06152e54620",
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

Occurrence: `result:e13dfd56-d663-2161-692f-bee56afb9f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_gaugeRescale {s t : Set E} (hs : Convex ℝ s) (hs₀ : s ∈ 𝓝 0)
    (ht : Convex ℝ t) (ht₀ : t ∈ 𝓝 0) (htb : IsVonNBounded ℝ t) :
    Continuous (gaugeRescale s t) := by
  have hta : Absorbent ℝ t := absorbent_nhds_zero ht₀
  refine continuous_iff_continuousAt.2 fun x ↦ ?_
  rcases eq_or_ne x 0 with rfl | hx
  · rw [ContinuousAt, gaugeRescale_zero]
    nth_rewrite 2 [← comap_gauge_nhds_zero htb ht₀]
    simp only [tendsto_comap_iff, Function.comp_def, gauge_gaugeRescale _ hta htb]
    exact tendsto_gauge_nhds_zero hs₀
  · exact ((continuousAt_gauge hs hs₀).div (continuousAt_gauge ht ht₀)
      ((gauge_pos hta htb).2 hx).ne').smul continuousAt_id

/-- `gaugeRescale` bundled as a `Homeomorph`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64784ae3b43688b0a149aeb865cd49946003f87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
