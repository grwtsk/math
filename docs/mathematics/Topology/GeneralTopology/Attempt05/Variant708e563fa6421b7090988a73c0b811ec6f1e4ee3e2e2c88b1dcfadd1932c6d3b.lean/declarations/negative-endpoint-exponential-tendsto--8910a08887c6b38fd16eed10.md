# negative_endpoint_exponential_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7678f62-d7ce-60a4-dcb1-b19046f93e04",
  "kind": "theorem",
  "lexical_name": "negative_endpoint_exponential_tendsto",
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
  "slug": "negative-endpoint-exponential-tendsto--8910a08887c6b38fd16eed10",
  "source": {
    "blob": "97236f6986ddaf1153c6b1bc3aa696f3aa03858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8910a08887c6b38fd16eed10c11775d765e17d7cd857d7ffaed0ed94d22c5359",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7678f62-d7ce-60a4-dcb1-b19046f93e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_endpoint_exponential_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => Complex.exp (-2*(A : ℂ)*z)) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have h := ContinuousResearch.ActualRealMode.exp_scaled_neg_tendsto z.re hz
  convert h using 1
  ext A
  rw [Complex.norm_exp]
  congr 1
  norm_num [Complex.mul_re,Complex.mul_im]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variant708e563fa6421b7090988a73c0b811ec6f1e4ee3e2e2c88b1dcfadd1932c6d3b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97236f6986ddaf1153c6b1bc3aa696f3aa03858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
