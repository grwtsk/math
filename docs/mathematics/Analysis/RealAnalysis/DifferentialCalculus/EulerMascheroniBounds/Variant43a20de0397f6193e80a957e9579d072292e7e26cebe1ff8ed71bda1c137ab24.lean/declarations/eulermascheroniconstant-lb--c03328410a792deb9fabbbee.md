# eulerMascheroniConstant_lb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ad136d2-fcdb-5455-09e9-1c9996f3438f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0c20a5c-8034-3914-b80d-90ecd582e976",
  "kind": "lemma",
  "lexical_name": "eulerMascheroniConstant_lb",
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
  "slug": "eulermascheroniconstant-lb--c03328410a792deb9fabbbee",
  "source": {
    "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c03328410a792deb9fabbbee55b4b7727601eb9339d56bbb49f268cbd28679ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c20a5c-8034-3914-b80d-90ecd582e976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eulerMascheroniConstant_lb (n : ℕ) :
    γ₁ (n + 1) ≤ eulerMascheroniConstant := by
  have key : γ₁ (n + 1) = eulerMascheroniSeq n + 1 / (2 * ((n : ℝ) + 1)) := by
    simp only [γ₁, eulerMascheroniSeq]
    rw [harmonic_succ]
    push_cast
    field_simp
    ring
  rw [key]
  have h_lim : Filter.Tendsto (fun m => eulerMascheroniSeq m - eulerMascheroniSeq n) Filter.atTop (nhds (eulerMascheroniConstant - eulerMascheroniSeq n)) :=
    Filter.Tendsto.sub Real.tendsto_eulerMascheroniSeq tendsto_const_nhds
  have h_lim_bound : Filter.Tendsto (fun m => 1 / (2 * (n + 1) : ℝ) - 1 / (2 * (m + 1) : ℝ)) Filter.atTop (nhds (1 / (2 * (n + 1) : ℝ))) :=
    le_trans (tendsto_const_nhds.sub <| tendsto_const_nhds.div_atTop <|
      Filter.Tendsto.const_mul_atTop zero_lt_two <|
      Filter.tendsto_id.atTop_add tendsto_const_nhds) <| by norm_num
  have := h_lim_bound.comp tendsto_natCast_atTop_atTop
  exact le_of_tendsto_of_tendsto this h_lim (Filter.eventually_atTop.mpr
    ⟨n, by intros m hm; simpa using eulerMascheroniSeq_diff_lb n m hm⟩) |>
    fun h => by norm_num at *; grind

/-- If `f` is continuous on `[0, u]`, differentiable on `(0, u)`, `f 0 = 0`, and
    `deriv f` is positive for all positive inputs, then `f u > 0`.
    This is the common MVT argument used in `log_ineq_1`, `log_ineq_2`, and `log_ineq_3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adb0c44c59889ed996a6114ab1cd9d4b74928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
