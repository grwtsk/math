# TendstoUniformlyOn.tendsto_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e01d1071-1b2e-bc15-60a9-ea9ce40aa807",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOn.tendsto_comp",
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
  "slug": "tendstouniformlyon-tendsto-comp--d87233e52c60dc8811a66458",
  "source": {
    "blob": "ffe4857f13944738ecb809c042bb2cb6b3f49cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d87233e52c60dc8811a6645857f64c7d3d726795812be2a6516c2ba6674b5e51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e01d1071-1b2e-bc15-60a9-ea9ce40aa807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOn.tendsto_comp (h : TendstoUniformlyOn F f p s)
    (hf : ContinuousWithinAt f s x) (hg : Tendsto g p (𝓝[s] x)) :
    Tendsto (fun n => F n (g n)) p (𝓝 (f x)) :=
  tendsto_comp_of_locally_uniform_limit_within hf hg fun u hu => ⟨s, self_mem_nhdsWithin, h u hu⟩

/-- If `Fₙ` tends locally uniformly to `f`, and `gₙ` tends to `x`, then `Fₙ gₙ` tends to `f x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe4857f13944738ecb809c042bb2cb6b3f49cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
