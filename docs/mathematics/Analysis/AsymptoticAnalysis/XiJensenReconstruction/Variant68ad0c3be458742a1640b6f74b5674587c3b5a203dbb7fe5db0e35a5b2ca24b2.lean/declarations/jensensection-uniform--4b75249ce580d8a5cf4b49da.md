# jensenSection_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52481c1e88935e5b39ff5cd5afac1f5318579c3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29556a1d-4581-5561-455d-343efc3efb45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27d9b64c-af7f-04e3-0bfe-6b70cb4efd2f",
  "kind": "theorem",
  "lexical_name": "jensenSection_uniform",
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
  "slug": "jensensection-uniform--4b75249ce580d8a5cf4b49da",
  "source": {
    "blob": "52481c1e88935e5b39ff5cd5afac1f5318579c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b75249ce580d8a5cf4b49da00ddb4313c3d92584f492fdae842b1bbc2e0a229",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27d9b64c-af7f-04e3-0bfe-6b70cb4efd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenSection_uniform (R : ℝ) (hR : 0 ≤ R) :
    TendstoUniformlyOn jensenSection spectralXi atTop (Metric.closedBall 0 R) := by
  let B : ℝ := ∑' k : ℕ,
    (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k)
  have hlim : Tendsto (fun n : ℕ => B / (4 * (n : ℝ))) atTop (𝓝 0) := by
    simpa only [div_div] using tendsto_const_div_atTop_nhds_zero_nat (B / 4)
  apply Metric.tendstoUniformlyOn_iff.mpr
  intro ε hε
  filter_upwards [eventually_ge_atTop 1, (tendsto_order.mp hlim).2 ε hε] with n hn hbound
  intro z hz
  have hzR : ‖z‖ ≤ R := by simpa using hz
  rw [dist_eq_norm, norm_sub_rev]
  exact (jensenSection_error_le hn R hR z hzR).trans_lt hbound

/-- These weighted sections reconstruct the entire actual xi source locally uniformly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52481c1e88935e5b39ff5cd5afac1f5318579c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
