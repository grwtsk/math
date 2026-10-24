# causalShift_half_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "480fee2e9130acd3747ca107cc410e0f66229fa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0619d012-5702-d397-5800-8d69f4d28fa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e0373e5-1e57-5b1b-7d58-1e9e788e5bf0",
  "kind": "theorem",
  "lexical_name": "causalShift_half_inner",
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
  "slug": "causalshift-half-inner--8456c2573851e8ad9d66f30a",
  "source": {
    "blob": "480fee2e9130acd3747ca107cc410e0f66229fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8456c2573851e8ad9d66f30a3d8b11dcf0e711a583f880f366dd1763c72dda97",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e0373e5-1e57-5b1b-7d58-1e9e788e5bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalShift_half_inner (n : ℕ) (hn : 1 ≤ n) (p : H) :
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) (causalShift (Real.log (n : ℝ)) p) =
      (Real.sqrt (n : ℝ) : ℂ)⁻¹ *
        inner ℂ (exponentialVector (1 / 2) (by norm_num)) p := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hn1 : 1 ≤ (n : ℝ) := by exact_mod_cast hn
  rw [causalShift_exponential_inner _ (Real.log_nonneg hn1) _ (by norm_num)]
  congr 1
  have he : Real.exp (-Real.log (n : ℝ) / 2) = (Real.sqrt (n : ℝ))⁻¹ := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0]
  rw [show -(1 / 2 : ℂ) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) / 2 : ℝ) : ℂ) by
    simp only [Complex.ofReal_div, Complex.ofReal_neg, Complex.ofReal_ofNat]
    ring]
  rw [← Complex.ofReal_exp, he, Complex.ofReal_inv]

/-- The corrected finite family has exactly zero input evaluation at the source's removed pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480fee2e9130acd3747ca107cc410e0f66229fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
