# log_two_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a768c1a9-bb2d-3690-039c-21b1fc54ee55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06948c19-d750-3ec8-a651-83ea01c80118",
  "kind": "theorem",
  "lexical_name": "log_two_add_le",
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
  "slug": "log-two-add-le--18532fcc36d1039a770d2af2",
  "source": {
    "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18532fcc36d1039a770d2af24220cf793b29ec8a88cbe72c39b6c5d7ad8852ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06948c19-d750-3ec8-a651-83ea01c80118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_two_add_le {x : ℝ} (hx : 0 ≤ x) : Real.log (2 + x) ≤ 5 * (1 + x ^ 2) ^ (1 / 4 : ℝ) := by
  have h2x : 0 < 2 + x := by linarith
  -- log(2+x) ≤ 2 √(2+x)
  have h1 : Real.log (2 + x) ≤ 2 * Real.sqrt (2 + x) := by
    have hs : 0 < Real.sqrt (2 + x) := Real.sqrt_pos.mpr h2x
    have := Real.log_le_sub_one_of_pos hs
    rw [Real.log_sqrt h2x.le] at this
    linarith
  -- √(2+x) ≤ √2 + √x ≤ 3/2 + √x
  have h2 : Real.sqrt (2 + x) ≤ 3 / 2 + Real.sqrt x := by
    have hsx := Real.sq_sqrt hx
    have hs0 := Real.sqrt_nonneg x
    calc Real.sqrt (2 + x) ≤ Real.sqrt ((3 / 2 + Real.sqrt x) ^ 2) :=
          Real.sqrt_le_sqrt (by nlinarith)
      _ = 3 / 2 + Real.sqrt x := Real.sqrt_sq (by positivity)
  -- √x ≤ (1+x²)^{1/4}, 1 ≤ (1+x²)^{1/4}
  have hq0 : 0 ≤ (1 + x ^ 2 : ℝ) := by positivity
  have h3 : Real.sqrt x ≤ (1 + x ^ 2) ^ (1 / 4 : ℝ) := by
    have e : Real.sqrt x = (x ^ 2) ^ (1 / 4 : ℝ) := by
      rw [Real.sqrt_eq_rpow, ← Real.rpow_natCast_mul hx]; norm_num
    rw [e]
    exact Real.rpow_le_rpow (by positivity) (by linarith) (by norm_num)
  have h4 : (1 : ℝ) ≤ (1 + x ^ 2) ^ (1 / 4 : ℝ) := Real.one_le_rpow (by nlinarith) (by norm_num)
  linarith

/-- `t ↦ Γℝ'/Γℝ(σ+it)` is continuous for `0 < σ ≤ 3/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
