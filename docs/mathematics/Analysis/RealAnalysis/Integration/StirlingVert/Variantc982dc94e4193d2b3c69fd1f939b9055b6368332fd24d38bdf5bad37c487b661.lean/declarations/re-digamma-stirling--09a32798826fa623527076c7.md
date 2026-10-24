# re_digamma_stirling'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 588,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80ad3b10-9b6c-98ba-e21f-5be83b9a7ecc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00535f99-0da7-a485-b0bf-c77cc21cf84f",
  "kind": "theorem",
  "lexical_name": "re_digamma_stirling'",
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
  "slug": "re-digamma-stirling--09a32798826fa623527076c7",
  "source": {
    "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 588,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a32798826fa623527076c7a886296cdba5c232841c2b88680e957f994f304f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00535f99-0da7-a485-b0bf-c77cc21cf84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_digamma_stirling' {a : ℝ} (ha0 : 0 < a) (ha1 : a ≤ 1) {t : ℝ} (ht : 1 / 2 ≤ |t|) :
    |(Complex.digamma ((a : ℂ) + Complex.I * t)).re - Real.log (abs t)| ≤ 5 / t ^ 2 := by
  have h := re_digamma_stirling ha0 ha1 ht
  have ht0 : 0 < |t| := by linarith
  have ht2 : 0 < t ^ 2 := by rw [← sq_abs]; positivity
  -- ½log(a²+t²) − log|t| = ½ log(1 + a²/t²) ∈ [0, a²/(2t²)]
  have hl : (1 / 2) * Real.log (a ^ 2 + t ^ 2) - Real.log (abs t)
      = (1 / 2) * Real.log (1 + a ^ 2 / t ^ 2) := by
    have htne : t ≠ 0 := fun h0 => by rw [h0] at ht0; simp at ht0
    have : a ^ 2 + t ^ 2 = t ^ 2 * (1 + a ^ 2 / t ^ 2) := by field_simp; ring
    rw [this, Real.log_mul ht2.ne' (by positivity), ← sq_abs, Real.log_pow]
    push_cast; ring
  have hb : |(1 / 2) * Real.log (a ^ 2 + t ^ 2) - Real.log (abs t)| ≤ 1 / t ^ 2 := by
    have hx0 : 0 ≤ a ^ 2 / t ^ 2 := by positivity
    have hlog0 : 0 ≤ Real.log (1 + a ^ 2 / t ^ 2) := Real.log_nonneg (by linarith)
    have hlog := Real.log_le_sub_one_of_pos (by positivity : (0:ℝ) < 1 + a ^ 2 / t ^ 2)
    have ha2 : a ^ 2 / t ^ 2 ≤ 1 / t ^ 2 := by
      apply div_le_div_of_nonneg_right _ ht2.le; nlinarith
    rw [hl, abs_of_nonneg (by positivity)]
    linarith
  calc |(Complex.digamma ((a : ℂ) + Complex.I * t)).re - Real.log (abs t)|
      ≤ |(Complex.digamma ((a : ℂ) + Complex.I * t)).re - (1 / 2) * Real.log (a ^ 2 + t ^ 2)|
        + |(1 / 2) * Real.log (a ^ 2 + t ^ 2) - Real.log (abs t)| := abs_sub_le _ _ _
    _ ≤ 4 / t ^ 2 + 1 / t ^ 2 := add_le_add h hb
    _ = 5 / t ^ 2 := by ring

/-- **H-Γ [eq:mufacts], Stirling clause** in the exact shape of `Zeta23.GammaFacts.stirling`:
`|μ(τ) − (1/2π) log(|τ|/2π)| ≤ C/τ²` for `|τ| ≥ 1`, with `C = 20/(2π) ≤ 4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
