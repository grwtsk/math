# tendstoUniformlyOn_of_norm_kerFun_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87010768956625462a038736bed01361f0e66b9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3f0ebda-13cc-9bb9-e262-ae4898b0e90a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b288968-de16-fd49-c9a1-3d59a811e834",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_of_norm_kerFun_le",
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
  "slug": "tendstouniformlyon-of-norm-kerfun-le--7b23a8e817e2d3f86f001035",
  "source": {
    "blob": "87010768956625462a038736bed01361f0e66b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b23a8e817e2d3f86f001035e57886148a7b7ae689e34c994e2c62858b3f3f4c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b288968-de16-fd49-c9a1-3d59a811e834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_of_norm_kerFun_le {C : ℝ} {s : Set X}
    (hC : ∀ x ∈ s, ‖kerFun H x‖ ≤ C)
    {ι : Type*} {l : Filter ι} {F : ι → H} {f : H} (h : Tendsto F l (𝓝 f)) :
    TendstoUniformlyOn (fun n => ⇑(F n)) (⇑f) l s := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro ε hε
  have hnorm := (tendsto_iff_norm_sub_tendsto_zero.mp h).mul_const C
  rw [zero_mul] at hnorm
  filter_upwards [hnorm.eventually (gt_mem_nhds hε)] with n hn x hx
  rw [dist_eq_norm', ← Pi.sub_apply, ← coe_sub]
  grw [norm_apply_le, ← norm_kerFun_eq_sqrt_norm_kernel, hC x hx, hn]

variable {H} in
/-- If the kernel functions are uniformly bounded (`‖kerFun H x‖ ≤ C` for all `x`), then
convergence in `H`-norm implies uniform convergence of the underlying functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87010768956625462a038736bed01361f0e66b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
