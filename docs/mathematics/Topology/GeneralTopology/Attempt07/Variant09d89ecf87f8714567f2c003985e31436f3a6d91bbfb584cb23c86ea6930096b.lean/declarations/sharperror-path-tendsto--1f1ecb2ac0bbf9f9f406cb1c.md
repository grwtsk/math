# sharpError_path_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0260c4-920f-75c1-50cd-84cbe3f6609e",
  "kind": "theorem",
  "lexical_name": "sharpError_path_tendsto",
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
  "slug": "sharperror-path-tendsto--1f1ecb2ac0bbf9f9f406cb1c",
  "source": {
    "blob": "85eb9e8177e794ad5719d97fa2e5947fab858580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f1ecb2ac0bbf9f9f406cb1cf2b8e7c082b9cb76a91d8b801f85acaa296f7e2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0260c4-920f-75c1-50cd-84cbe3f6609e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpError_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => sharpError A (delta A)) atTop (𝓝 0) := by
  have hE := errorPolynomial_path_tendsto delta hprod
  have hx := negative_endpoint_path_tendsto delta hprod
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hN : Tendsto (fun A : ℝ => 544/A^2) atTop (𝓝 0) := by
    simpa [div_eq_mul_inv,inv_pow] using (hi.pow 2).const_mul 544
  have h1 : Tendsto (fun _ : ℝ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have ht := (hE.add (hx.mul (h1.add hE))).add hN
  simpa [sharpError] using ht

/-- Actual source ratio along admissible real A paths, with the pole filter retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Variant09d89ecf87f8714567f2c003985e31436f3a6d91bbfb584cb23c86ea6930096b.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85eb9e8177e794ad5719d97fa2e5947fab858580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
