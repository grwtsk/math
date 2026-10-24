# iteratedDeriv_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 876,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:864658b6-5098-f6ff-66a4-35d3bad65da9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03b4aa6f-0f9d-f450-0e3f-62538779ae5d",
  "kind": "theorem",
  "lexical_name": "iteratedDeriv_log",
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
  "slug": "iteratedderiv-log--99b0a4069079e2309decc46c",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 876,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b0a4069079e2309decc46c985a811d86832be4407be20bd7a885dac204324d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03b4aa6f-0f9d-f450-0e3f-62538779ae5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem iteratedDeriv_log {n : ℕ} (hn : n ≠ 0) {x : ℝ} (hx : 0 < x) :
    iteratedDeriv n Real.log x = (-1)^(n-1) * (n-1).factorial * x^(-(n : ℤ)) := by
    match n with
    | 1 =>
      -- n = 1: iteratedDeriv 1 log x = deriv log x = 1/x = x^(-1)
      simp only [iteratedDeriv_one, Real.deriv_log', tsub_self, pow_zero, Nat.factorial_zero,
        Nat.cast_one, mul_one, Int.reduceNeg, zpow_neg, zpow_one, one_mul]
    | n + 2 =>
      -- n + 2: use induction
      -- iteratedDeriv (n+2) log = deriv (iteratedDeriv (n+1) log)
      rw [iteratedDeriv_succ]
      -- By IH: iteratedDeriv (n+1) log y = (-1)^n * n! * y^(-(n+1)) for y > 0
      have h_eq : ∀ y : ℝ, 0 < y → iteratedDeriv (n + 1) Real.log y =
          (-1 : ℝ)^n * n.factorial * y^(-(n + 1 : ℤ)) := fun y hy => iteratedDeriv_log n.succ_ne_zero hy
      have h_deriv_eq : deriv (iteratedDeriv (n + 1) Real.log) x =
          deriv (fun y => (-1 : ℝ)^n * n.factorial * y^(-(n + 1 : ℤ))) x := by
        apply Filter.EventuallyEq.deriv_eq
        filter_upwards [eventually_gt_nhds hx] with y hy
        exact h_eq y hy
      rw [h_deriv_eq]
      have hdiff : DifferentiableAt ℝ (fun y => y ^ (-(n + 1 : ℤ))) x := by
        apply DifferentiableAt.zpow differentiableAt_id
        left; exact hx.ne'
      rw [deriv_const_mul _ hdiff, deriv_zpow (-(n + 1 : ℤ)) x]
      simp
      rw [pow_succ (-1 : ℝ) n, Nat.factorial_succ]
      push_cast
      calc
        (-1) ^ n * n.factorial * ((-1 + -(n : ℤ)) * x ^ (-1 + -(n : ℤ) - 1))
        _ = (-1) ^ n * n.factorial * ((-1 + -(n : ℤ)) * x ^ (-2 + -(n : ℤ))) := by congr 3; grind
        _ = (-1) ^ n * -1 * ((↑n + 1) * n.factorial) * x ^ (-2 + -(n : ℤ)) := by simp; ring

end LeanCert.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
