# tendsto_atBot_intervalIntegral_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8abd628-1dfb-6488-b4f8-f3e2c08f0fc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10e374c8-d1e7-c177-c450-0df84ca53a1d",
  "kind": "theorem",
  "lexical_name": "tendsto_atBot_intervalIntegral_of_pos",
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
  "slug": "tendsto-atbot-intervalintegral-of-pos--b69f504653b0a63063a44112",
  "source": {
    "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 443,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b69f504653b0a63063a441127d3a9fd4da1660fdb7b9c964cd3b1415a4112ffe",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e374c8-d1e7-c177-c450-0df84ca53a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atBot_intervalIntegral_of_pos (h₀ : 0 < ∫ x in 0..T, g x) (hT : 0 < T) :
    Tendsto (fun t => ∫ x in 0..t, g x) atBot atBot := by
  have h_int := intervalIntegrable_of_integral_ne_zero h₀.ne'
  apply tendsto_atBot_mono (hg.integral_le_sSup_add_zsmul_of_pos h_int hT)
  apply atBot.tendsto_atBot_add_const_left (sSup <| (fun t => ∫ x in 0..t, g x) '' Icc 0 T)
  apply Tendsto.atBot_zsmul_const h₀
  exact tendsto_floor_atBot.comp (tendsto_id.atBot_mul_const (inv_pos.mpr hT))

/-- If `g : ℝ → ℝ` is periodic with period `T > 0` and `∀ x, 0 < g x`, then `t ↦ ∫ x in 0..t, g x`
tends to `∞` as `t` tends to `∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
