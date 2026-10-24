# hasSum_mellin_pi_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e7fa86d-249d-c8dd-6c4e-537c4c20ef34",
  "kind": "lemma",
  "lexical_name": "hasSum_mellin_pi_mul",
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
  "slug": "hassum-mellin-pi-mul--ac7af97e63424a037f147a63",
  "source": {
    "blob": "1e521b3b85faa5f0348ba221bfa9d1e93c20e280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac7af97e63424a037f147a630d0c76d0ade5627407abcdb8ebbe72f0d07136ed",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7fa86d-249d-c8dd-6c4e-537c4c20ef34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_mellin_pi_mul {a : ι → ℂ} {q : ι → ℝ} {F : ℝ → ℂ} {s : ℂ}
    (hq : ∀ i, a i = 0 ∨ 0 < q i) (hs : 0 < s.re)
    (hF : ∀ t ∈ Ioi 0, HasSum (fun i ↦ a i * rexp (-π * q i * t)) (F t))
    (h_sum : Summable fun i ↦ ‖a i‖ / (q i) ^ s.re) :
    HasSum (fun i ↦ π ^ (-s) * Gamma s * a i / q i ^ s) (mellin F s) := by
  have hp i : a i = 0 ∨ 0 < π * q i := by rcases hq i with h | h <;> simp [h, pi_pos]
  convert hasSum_mellin hp hs (by simpa using hF) ?_ using 2 with i
  · have : a i / ↑(π * q i) ^ s = π ^ (-s) * a i / q i ^ s := by
      rcases hq i with h | h
      · simp [h]
      · rw [ofReal_mul, mul_cpow_ofReal_nonneg pi_pos.le h.le, ← div_div, cpow_neg,
          ← div_eq_inv_mul]
    simp_rw [mul_div_assoc, this]
    ring_nf
  · have (i) : ‖a i‖ / ↑(π * q i) ^ s.re = π ^ (-s.re) * ‖a i‖ / q i ^ s.re := by
      rcases hq i with h | h
      · simp [h]
      · rw [mul_rpow pi_pos.le h.le, ← div_div, rpow_neg pi_pos.le, ← div_eq_inv_mul]
    simpa only [this, mul_div_assoc] using h_sum.mul_left _

/-- Version allowing some constant terms (which are omitted from the sums). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantcdaa992fd766d01dce6804887318405d51e9e84ec86ef5d78e840e9f2bbeb91c.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e521b3b85faa5f0348ba221bfa9d1e93c20e280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
