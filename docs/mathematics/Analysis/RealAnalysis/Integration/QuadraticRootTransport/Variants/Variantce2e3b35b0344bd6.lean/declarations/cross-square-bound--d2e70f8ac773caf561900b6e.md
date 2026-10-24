# cross_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26dfd4e-7687-5ba3-f416-2f40093d0735",
  "kind": "lemma",
  "lexical_name": "cross_square_bound",
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
  "slug": "cross-square-bound--d2e70f8ac773caf561900b6e",
  "source": {
    "blob": "f4ee4a176e608ec7d8273c98b492b8f4b2dfd055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/Analysis/Integral/QuadraticRootTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e70f8ac773caf561900b6eb7bcca597a6de9a7fd8b61a1a5145f2bd54e483e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26dfd4e-7687-5ba3-f416-2f40093d0735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cross_square_bound {A B C : ℝ} (hA : 0 ≤ A)
    (h : ∀ t : ℝ, 0 ≤ A*t^2+2*C*t+B) : C^2 ≤ A*B := by
  by_cases hz : A = 0
  · subst A
    by_cases hc : C = 0
    · simp [hc]
    · have ht := h (-(B+1)/(2*C))
      have he : (0:ℝ)*(-(B+1)/(2*C))^2+2*C*(-(B+1)/(2*C))+B = -1 := by
        field_simp [hc]
        <;> ring
      rw [he] at ht
      linarith
  · have hp : 0 < A := lt_of_le_of_ne hA (Ne.symm hz)
    have ht := h (-C/A)
    have he : A^2*(A*(-C/A)^2+2*C*(-C/A)+B) = A*(A*B-C^2) := by
      field_simp [hz]
      <;> ring
    have hn := mul_nonneg (sq_nonneg A) ht
    rw [he] at hn
    have hd := nonneg_of_mul_nonneg_left hn hp
    linarith

/-- L2 triangle inequality derived from the full integral quadratic polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integral/QuadraticRootTransport.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ee4a176e608ec7d8273c98b492b8f4b2dfd055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
