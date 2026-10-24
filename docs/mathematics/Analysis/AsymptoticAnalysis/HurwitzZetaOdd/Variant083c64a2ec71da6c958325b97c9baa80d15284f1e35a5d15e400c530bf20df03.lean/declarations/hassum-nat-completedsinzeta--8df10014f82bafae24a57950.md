# hasSum_nat_completedSinZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9d7639d-6b1d-51e7-33e1-b60f2f4e7424",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2866d7d5-2bef-fef6-9637-47cd17ba3d80",
  "kind": "lemma",
  "lexical_name": "hasSum_nat_completedSinZeta",
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
  "slug": "hassum-nat-completedsinzeta--8df10014f82bafae24a57950",
  "source": {
    "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 409,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8df10014f82bafae24a579507d2bb1eab77f9cc3cbf1166d4e7d361d83d87b40",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2866d7d5-2bef-fef6-9637-47cd17ba3d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_nat_completedSinZeta (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℕ ↦ Gammaℝ (s + 1) * Real.sin (2 * π * a * n) / (n : ℂ) ^ s)
    (completedSinZeta a s) := by
  have := (hasSum_int_completedSinZeta a hs).nat_add_neg
  simp_rw [Int.sign_zero, Int.cast_zero, mul_zero, zero_mul, zero_div, add_zero, abs_neg,
    Int.sign_neg, Nat.abs_cast, Int.cast_neg, Int.cast_natCast, ← add_div] at this
  refine this.congr_fun fun n ↦ ?_
  rw [div_right_comm]
  rcases eq_or_ne n 0 with rfl | h
  · simp
  simp_rw [Int.sign_natCast_of_ne_zero h, Int.cast_one, ofReal_sin, Complex.sin]
  simp only [← mul_div_assoc, push_cast, mul_assoc (Gammaℝ _), ← mul_add]
  congr 3
  rw [mul_one, mul_neg_one, neg_neg, neg_mul I, ← sub_eq_neg_add, ← mul_sub, mul_comm,
    mul_neg, neg_mul]
  congr 3 <;> ring

/-- Formula for `completedHurwitzZetaOdd` as a Dirichlet series in the convergence range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f63abc696aeec59a76ab48157eb9ca4ca6c4505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
