# hasSum_int_completedHurwitzZetaOdd

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
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:387ec4ab-a047-c2e3-2492-bd23145d28eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9abd1c40-9628-e7c9-9061-d58d02f0023e",
  "kind": "lemma",
  "lexical_name": "hasSum_int_completedHurwitzZetaOdd",
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
  "slug": "hassum-int-completedhurwitzzetaodd--c52d47f2fa016c3b42bff68a",
  "source": {
    "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 427,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c52d47f2fa016c3b42bff68a691bdd8c9aa24024fcae35f486b812b93319827a",
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

Occurrence: `result:9abd1c40-9628-e7c9-9061-d58d02f0023e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_int_completedHurwitzZetaOdd (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℤ ↦ Gammaℝ (s + 1) * SignType.sign (n + a) / (↑|n + a| : ℂ) ^ s / 2)
    (completedHurwitzZetaOdd a s) := by
  let r (n : ℤ) : ℝ := n + a
  let c (n : ℤ) : ℂ := 1 / 2
  have hF t (ht : 0 < t) : HasSum (fun n ↦ c n * r n * rexp (-π * (r n) ^ 2 * t))
      (oddKernel a t / 2) := by
    refine ((hasSum_ofReal.mpr (hasSum_int_oddKernel a ht)).div_const 2).congr_fun fun n ↦ ?_
    simp [r, c, push_cast, div_mul_eq_mul_div, -one_div]
  have h_sum : Summable fun i ↦ ‖c i‖ / |r i| ^ s.re := by
    simp_rw [c, ← mul_one_div ‖_‖]
    apply Summable.mul_left
    rwa [summable_one_div_int_add_rpow]
  have := mellin_div_const .. ▸ hasSum_mellin_pi_mul_sq' (zero_lt_one.trans hs) hF h_sum
  refine this.congr_fun fun n ↦ ?_
  simp only [r, c, mul_one_div, div_mul_eq_mul_div, div_right_comm]

/-!
## Non-completed zeta functions
-/

/-- The odd part of the Hurwitz zeta function, i.e. the meromorphic function of `s` which agrees
with `1 / 2 * ∑' (n : ℤ), sign (n + a) / |n + a| ^ s` for `1 < re s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f63abc696aeec59a76ab48157eb9ca4ca6c4505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
