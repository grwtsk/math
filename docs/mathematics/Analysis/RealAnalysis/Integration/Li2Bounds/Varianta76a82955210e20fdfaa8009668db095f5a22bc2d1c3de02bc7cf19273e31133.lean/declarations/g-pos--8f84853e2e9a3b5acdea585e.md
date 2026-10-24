# g_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:947d1914-2a12-c480-5dd3-4ec7df7eb5a0",
  "kind": "theorem",
  "lexical_name": "g_pos",
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
  "slug": "g-pos--8f84853e2e9a3b5acdea585e",
  "source": {
    "blob": "fdecf084c85fab7b2b6ec338b0c88813296d71d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f84853e2e9a3b5acdea585eaf1bd99f70ac5d4dddba1025815fe0e564444c29",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:947d1914-2a12-c480-5dd3-4ec7df7eb5a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_pos (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) : 0 < g t := by
  have h1mt2_pos : 0 < 1 - t^2 := by nlinarith [sq_nonneg t]
  have h1mt2_lt1 : 1 - t^2 < 1 := by nlinarith [sq_nonneg t, ht_lt]
  have hlog1mt2_neg : Real.log (1 - t^2) < 0 := Real.log_neg h1mt2_pos h1mt2_lt1
  have h1pt_gt1 : 1 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1mt_lt1 : 1 - t < 1 := by linarith
  have hlog1p_pos : 0 < Real.log (1 + t) := Real.log_pos h1pt_gt1
  have hlog1m_neg : Real.log (1 - t) < 0 := Real.log_neg h1mt_pos h1mt_lt1
  have hdenom_neg : Real.log (1 + t) * Real.log (1 - t) < 0 :=
    mul_neg_of_pos_of_neg hlog1p_pos hlog1m_neg
  have hpos :
      0 < Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) :=
    div_pos_of_neg_of_neg hlog1mt2_neg hdenom_neg
  simpa [g_alt t ht_pos ht_lt] using hpos

/-- g(t) ≤ 2 for t ∈ (0, 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdecf084c85fab7b2b6ec338b0c88813296d71d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
