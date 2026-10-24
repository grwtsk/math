# thetaPhiJetDet_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcf87d967ea5786fdead5c7a65d05f34b2d009bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5635680d-ad58-4057-d12d-3bd58dfc9cc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84f6fe24-cb1d-d6f9-d1b7-4a09f885d9c0",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet_negative",
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
  "slug": "thetaphijetdet-negative--173f0bea811a50e0ed9155d8",
  "source": {
    "blob": "dcf87d967ea5786fdead5c7a65d05f34b2d009bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:173f0bea811a50e0ed9155d88956be90c2e5e8df71aca8ec651b4c9b05425c7f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f6fe24-cb1d-d6f9-d1b7-4a09f885d9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet_negative {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiJetDet (thetaPhiJet t) < 0 := by
  let A := thetaModeA t
  let a : Fin 5 → ℝ := fun k => thetaPhiJetPolynomial k A +
    4 * Real.exp (-3 * A) * thetaPhiJetPolynomial k (4 * A)
  let e : Fin 5 → ℝ := fun k => ∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
    thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))
  let c := Real.pi * Real.exp (5 * t - A)
  have hA : 3 ≤ A := (thetaModeA_gt_three ht).le
  have ha (k : Fin 5) : |a k| ≤ 4 * 4 ^ k.val * A ^ (k.val + 1) :=
    thetaPhiJet_two_modes_abs_le k hA
  have he (k : Fin 5) : |e k| ≤
      4 * 4 ^ k.val * 3 ^ (2 * k.val + 4) * A ^ (k.val + 1) * Real.exp (-8 * A) := by
    simpa only [e, thetaPhiJetErrorCoefficient] using thetaPhiJet_remainder_abs_le k hA
  have herror := thetaPhiJetDet_gaussian_error_bound a e A (Real.exp (-8 * A)) ha he
  have hsmall := thetaPhiJet_gaussian_error_lt hA
  have hmain : thetaPhiJetDet a ≤ -12607488 :=
    thetaPhiJetDet_two_modes_le hA (Real.exp_pos _).le
  have hnegative : thetaPhiJetDet (fun k => a k + e k) < 0 := by
    have habs := le_abs_self (thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a)
    linarith
  have hsplit : thetaPhiJet t = fun k => c * (a k + e k) := by
    funext k
    exact thetaPhiJet_eq_two_modes_add_remainder k t
  have hscale : thetaPhiJetDet (thetaPhiJet t) =
      c ^ 3 * thetaPhiJetDet (fun k => a k + e k) := by
    rw [hsplit]
    dsimp [thetaPhiJetDet]
    ring
  have hc : 0 < c := mul_pos Real.pi_pos (Real.exp_pos _)
  rw [hscale]
  exact mul_neg_of_pos_of_neg (pow_pos hc 3) hnegative

/-- The source, its genuine first two derivatives, and its genuine third/fourth
raw derivatives have the strict Wronskian sign needed for the first rank-three tails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcf87d967ea5786fdead5c7a65d05f34b2d009bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
