# tailKernel_eq_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28c677ac-eb14-517a-a6da-27135f853cba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26b9af6b-8234-8fff-9098-f95f88329feb",
  "kind": "theorem",
  "lexical_name": "tailKernel_eq_formula",
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
  "slug": "tailkernel-eq-formula--53dacc0dffd4661a9ad94095",
  "source": {
    "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53dacc0dffd4661a9ad94095f6fe795af94e96b73354fb93635c47f1ed768ddb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26b9af6b-8234-8fff-9098-f95f88329feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailKernel_eq_formula
    (k : ℕ) (R : ℝ) (w : ℂ) (hw : w ≠ 0) :
    tailKernel k R w = tailFormula k R w := by
  rw [tailKernel, kernelNumerator_eq_source_sum, tailFormula,
    mul_div_assoc, Finset.sum_div]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  have hjle : j ≤ k := by
    have hjlt : j < k + 1 := Finset.mem_range.mp hj
    omega
  have hfac : ((Nat.factorial (k - j) : ℕ) : ℂ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero (k - j)
  rw [mul_pow]
  field_simp [hw, hfac]
  ring_nf
  rw [mul_assoc _ (w ^ (k - j)) (w ^ j), ← pow_add,
    Nat.sub_add_cancel hjle]

/-- Exact real-tail statement, including genuine integrability first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719823ed5c7b9cba9c5cb742edf312d2cb44c8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
