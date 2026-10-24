# IsLocalMaxOn.hasFDerivWithinAt_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba440227664f5658fece039b8f5b5edf866e6a17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36da39bf-3af7-1f64-d8da-cc17d971ed5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57721231-06f4-7ae1-dcbf-d1bbc47658e8",
  "kind": "theorem",
  "lexical_name": "IsLocalMaxOn.hasFDerivWithinAt_nonpos",
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
  "slug": "islocalmaxon-hasfderivwithinat-nonpos--bab60a59df8bb14a5a39ddb3",
  "source": {
    "blob": "ba440227664f5658fece039b8f5b5edf866e6a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab60a59df8bb14a5a39ddb346c37c8cf7b70537f3b2356029d5df22cf5144e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57721231-06f4-7ae1-dcbf-d1bbc47658e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalMaxOn.hasFDerivWithinAt_nonpos (h : IsLocalMaxOn f s a)
    (hf : HasFDerivWithinAt f f' s a) (hy : y ∈ posTangentConeAt s a) : f' y ≤ 0 := by
  rcases hy with ⟨c, d, hd, hc, hcd⟩
  have hc' : Tendsto (‖c ·‖) atTop atTop := tendsto_abs_atTop_atTop.comp hc
  suffices ∀ᶠ n in atTop, c n • (f (a + d n) - f a) ≤ 0 from
    le_of_tendsto (hf.lim atTop hd hc' hcd) this
  replace hd : Tendsto (fun n => a + d n) atTop (𝓝[s] (a + 0)) :=
    tendsto_nhdsWithin_iff.2 ⟨tendsto_const_nhds.add (tangentConeAt.lim_zero _ hc' hcd), hd⟩
  rw [add_zero] at hd
  filter_upwards [hd.eventually h, hc.eventually_ge_atTop 0] with n hfn hcn
  exact mul_nonpos_of_nonneg_of_nonpos hcn (sub_nonpos.2 hfn)

/-- If `f` has a local max on `s` at `a` and `y` belongs to the positive tangent cone
of `s` at `a`, then `f' y ≤ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba440227664f5658fece039b8f5b5edf866e6a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
