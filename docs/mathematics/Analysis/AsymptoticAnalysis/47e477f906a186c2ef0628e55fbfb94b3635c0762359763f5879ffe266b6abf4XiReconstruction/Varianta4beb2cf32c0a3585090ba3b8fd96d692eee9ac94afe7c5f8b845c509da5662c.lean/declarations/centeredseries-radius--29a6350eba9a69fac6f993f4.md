# centeredSeries_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e1e552-359a-ff27-2adc-53c3b5a7bd84",
  "kind": "theorem",
  "lexical_name": "centeredSeries_radius",
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
  "slug": "centeredseries-radius--29a6350eba9a69fac6f993f4",
  "source": {
    "blob": "08cc08f2152b12711197d42bdb2016c813ae7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29a6350eba9a69fac6f993f4cb3e9ad3669790e6a7d692792c3666d284fc1edb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e1e552-359a-ff27-2adc-53c3b5a7bd84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredSeries_radius :
    (FormalMultilinearSeries.ofScalars ℂ (fun n => (coefficient n : ℂ))).radius = ⊤ := by
  apply FormalMultilinearSeries.radius_eq_top_of_summable_norm
  intro r
  have h := (summable_centered (r : ℂ)).norm
  simpa only [norm_mul, norm_pow, FormalMultilinearSeries.ofScalars_norm,
    Complex.norm_real, Real.norm_of_nonneg r.coe_nonneg] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08cc08f2152b12711197d42bdb2016c813ae7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
