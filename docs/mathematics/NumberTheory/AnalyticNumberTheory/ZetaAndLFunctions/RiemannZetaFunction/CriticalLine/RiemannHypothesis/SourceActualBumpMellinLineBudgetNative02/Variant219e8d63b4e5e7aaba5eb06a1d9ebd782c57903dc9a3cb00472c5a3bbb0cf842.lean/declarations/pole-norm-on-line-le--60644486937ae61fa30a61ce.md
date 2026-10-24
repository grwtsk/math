# pole_norm_on_line_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e84c99115caf334df511b8705935df6326b0b1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/219e8d63b4e5e7aaba5eb06a1d9ebd782c57903dc9a3cb00472c5a3bbb0cf842.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec3875cb-0e6b-df9e-271e-d383612bf2cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2191448c-be9f-55e8-0324-6c125293230c",
  "kind": "theorem",
  "lexical_name": "pole_norm_on_line_le",
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
  "slug": "pole-norm-on-line-le--60644486937ae61fa30a61ce",
  "source": {
    "blob": "0e84c99115caf334df511b8705935df6326b0b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative02/Variant219e8d63b4e5e7aaba5eb06a1d9ebd782c57903dc9a3cb00472c5a3bbb0cf842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60644486937ae61fa30a61cef1dc5bb4f10dd049a882732cc60b2c6e7af6a0f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative02/Variant219e8d63b4e5e7aaba5eb06a1d9ebd782c57903dc9a3cb00472c5a3bbb0cf842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2191448c-be9f-55e8-0324-6c125293230c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pole_norm_on_line_le (c t : ℝ) (ht : 1 ≤ |t|) :
    ‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2 *
      ‖(c : ℂ) + (t : ℂ) * Complex.I - 1‖ ^ 2 ≤
      (1 + c ^ 2) * (1 + (c - 1) ^ 2) * |t| ^ 4 := by
  have h1 : ‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2 = c ^ 2 + t ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    simp
    ring
  have h2 : ‖(c : ℂ) + (t : ℂ) * Complex.I - 1‖ ^ 2 = (c - 1) ^ 2 + t ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    simp
    ring
  have ht2 : 1 ≤ t ^ 2 := by nlinarith [sq_abs t]
  have hc1 : c ^ 2 + t ^ 2 ≤ (1 + c ^ 2) * t ^ 2 := by nlinarith [sq_nonneg c]
  have hc2 : (c - 1) ^ 2 + t ^ 2 ≤ (1 + (c - 1) ^ 2) * t ^ 2 := by
    nlinarith [sq_nonneg (c - 1)]
  rw [h1, h2]
  calc
    _ ≤ ((1 + c ^ 2) * t ^ 2) * ((1 + (c - 1) ^ 2) * t ^ 2) :=
      mul_le_mul hc1 hc2 (by positivity) (by positivity)
    _ = _ := by
      have ha : |t| ^ 4 = t ^ 4 := by
        calc
          |t| ^ 4 = (|t| ^ 2) ^ 2 := by ring
          _ = (t ^ 2) ^ 2 := by rw [sq_abs]
          _ = t ^ 4 := by ring
      rw [ha]
      ring

/-- The full ordinary-square source weight has the paper's A⁻⁹ |t|⁻⁶ bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative02/Variant219e8d63b4e5e7aaba5eb06a1d9ebd782c57903dc9a3cb00472c5a3bbb0cf842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative02/Variant219e8d63b4e5e7aaba5eb06a1d9ebd782c57903dc9a3cb00472c5a3bbb0cf842.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e84c99115caf334df511b8705935df6326b0b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
