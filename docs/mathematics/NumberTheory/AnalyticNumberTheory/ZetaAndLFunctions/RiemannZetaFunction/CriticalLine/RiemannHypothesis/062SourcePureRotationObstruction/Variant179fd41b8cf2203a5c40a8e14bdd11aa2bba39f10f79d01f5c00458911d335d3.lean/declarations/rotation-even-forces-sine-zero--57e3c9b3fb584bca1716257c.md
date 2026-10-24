# rotation_even_forces_sine_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afa0bc27ff606397087b31958f7267ded554aab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:109b6f13-f141-d821-c56b-323c2d45365e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4bf7036-b2ae-a147-f8b7-16851bcf146e",
  "kind": "theorem",
  "lexical_name": "rotation_even_forces_sine_zero",
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
  "slug": "rotation-even-forces-sine-zero--57e3c9b3fb584bca1716257c",
  "source": {
    "blob": "afa0bc27ff606397087b31958f7267ded554aab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e3c9b3fb584bca1716257c58d3659bb96013b3259ef4b7473254b43403765b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4bf7036-b2ae-a147-f8b7-16851bcf146e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_even_forces_sine_zero {q : ComplexL2}
    (hq : reflection q = q) (hq0 : q ≠ 0) (c s : ℝ)
    (hrot : reflection (rotationMap c s q) = rotationMap c s q) : s = 0 := by
  have hr := reflection_rotation_reverse c s q
  rw [hq, hrot] at hr
  rw [rotationMap_apply, rotationMap_apply, Complex.ofReal_neg, neg_smul] at hr
  have hsvec : -((s : ℂ) • quarterTurn q) = (s : ℂ) • quarterTurn q :=
    (add_left_cancel hr).symm
  have hz : ((2 : ℂ) * (s : ℂ)) • quarterTurn q = 0 := by
    rw [mul_smul, two_smul]
    calc
      (s : ℂ) • quarterTurn q + (s : ℂ) • quarterTurn q =
          -((s : ℂ) • quarterTurn q) + (s : ℂ) • quarterTurn q := by rw [hsvec]
      _ = 0 := neg_add_cancel _
  have hJ : quarterTurn q ≠ 0 := by
    intro h
    apply hq0
    apply quarterTurn.injective
    simpa using h
  have hc := (smul_eq_zero.mp hz).resolve_right hJ
  have hs := (mul_eq_zero.mp hc).resolve_left (by norm_num : (2 : ℂ) ≠ 0)
  exact_mod_cast hs

/-- Zero sine is also sufficient for an even source to remain reflection-even. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant179fd41b8cf2203a5c40a8e14bdd11aa2bba39f10f79d01f5c00458911d335d3.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa0bc27ff606397087b31958f7267ded554aab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
