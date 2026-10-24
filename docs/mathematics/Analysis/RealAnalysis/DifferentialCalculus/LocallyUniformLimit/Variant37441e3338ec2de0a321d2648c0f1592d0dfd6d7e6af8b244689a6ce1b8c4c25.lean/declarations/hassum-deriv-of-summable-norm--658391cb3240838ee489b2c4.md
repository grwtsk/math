# hasSum_deriv_of_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03f3d9a6bf0df6146dde5007fd820fb253b328cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88a2cfc4-0515-a21e-11c9-361a0d5ed990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7965684-eac6-e39e-8232-909d0cb6e1dd",
  "kind": "theorem",
  "lexical_name": "hasSum_deriv_of_summable_norm",
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
  "slug": "hassum-deriv-of-summable-norm--658391cb3240838ee489b2c4",
  "source": {
    "blob": "03f3d9a6bf0df6146dde5007fd820fb253b328cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:658391cb3240838ee489b2c4db884ea0d36502d0c479a011f81dafcfce41d016",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7965684-eac6-e39e-8232-909d0cb6e1dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_deriv_of_summable_norm {u : ι → ℝ} (hu : Summable u)
    (hf : ∀ i : ι, DifferentiableOn ℂ (F i) U) (hU : IsOpen U)
    (hF_le : ∀ (i : ι) (w : ℂ), w ∈ U → ‖F i w‖ ≤ u i) (hz : z ∈ U) :
    HasSum (fun i : ι => deriv (F i) z) (deriv (fun w : ℂ => ∑' i : ι, F i w) z) := by
  rw [HasSum]
  have hc := (tendstoUniformlyOn_tsum hu hF_le).tendstoLocallyUniformlyOn
  convert (hc.deriv (Eventually.of_forall fun s =>
    DifferentiableOn.sum fun i _ => hf i) hU).tendsto_at hz using 1
  ext1 s
  exact (deriv_sum fun i _ => (hf i).differentiableAt (hU.mem_nhds hz)).symm

end Tsums

section LogDeriv

/-- The logarithmic derivative of a sequence of functions converging locally uniformly to a
function is the logarithmic derivative of the limit function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f3d9a6bf0df6146dde5007fd820fb253b328cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
