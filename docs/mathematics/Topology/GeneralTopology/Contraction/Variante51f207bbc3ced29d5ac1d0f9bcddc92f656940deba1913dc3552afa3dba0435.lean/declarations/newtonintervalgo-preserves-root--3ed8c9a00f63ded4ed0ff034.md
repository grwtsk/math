# newtonIntervalGo_preserves_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bb79495-8bd9-f7d5-e04d-614e2f7aedca",
  "kind": "theorem",
  "lexical_name": "newtonIntervalGo_preserves_root",
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
  "slug": "newtonintervalgo-preserves-root--3ed8c9a00f63ded4ed0ff034",
  "source": {
    "blob": "61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 416,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed8c9a00f63ded4ed0ff034205960367f8422af4502a680a9eacaadb34816d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb79495-8bd9-f7d5-e04d-614e2f7aedca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newtonIntervalGo_preserves_root (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (J : IntervalRat) (iter : ℕ) (contracted : Bool)
    (x : ℝ) (hxJ : x ∈ J) (hroot : Expr.eval (fun _ => x) e = 0) :
    (newtonIntervalGo e 0 1 J iter contracted).2 ≠ RootStatus.noRoot := by
  induction iter generalizing J contracted with
  | zero =>
    -- Base case: iter = 0
    simp only [newtonIntervalGo]
    split_ifs with hc
    · -- contracted = true: returns uniqueRoot ≠ noRoot
      simp only [ne_eq]
      intro h
      exact RootStatus.noConfusion h
    · -- contracted = false: returns checkRootStatus e J
      intro hcheck
      -- checkRootStatus = noRoot implies excludesZero
      have hexcl := checkRootStatus_noRoot_implies_excludesZero e J hcheck
      -- But excludesZero_correct says no root in J, contradicting hroot
      have hnoroot := excludesZero_correct e hsupp J hexcl x hxJ
      exact hnoroot hroot
  | succ n ih =>
    -- Inductive case: iter = n + 1
    simp only [newtonIntervalGo]
    -- Match on newtonStepTM result
    match htm : newtonStepTM e J 0 1 with
    | none =>
      -- TM step failed, try simple
      simp
      match hsimple : newtonStepSimple e J 0 with
      | none =>
        -- Both steps failed: returns based on contracted
        simp
        split_ifs with hc
        · intro h
          exact h.elim
        · intro hcheck
          have hexcl := checkRootStatus_noRoot_implies_excludesZero e J hcheck
          have hnoroot := excludesZero_correct e hsupp J hexcl x hxJ
          exact hnoroot hroot
      | some N =>
        -- Simple step succeeded with N
        simp
        -- Extract membership bounds before splitting
        have hxN := newton_preserves_root e hsupp hvar0 J N (Or.inr hsimple) x hxJ hroot
        have hxJ_lo : (J.lo : ℝ) ≤ x := by simp only [IntervalRat.mem_def] at hxJ; exact hxJ.1
        have hxJ_hi : x ≤ (J.hi : ℝ) := by simp only [IntervalRat.mem_def] at hxJ; exact hxJ.2
        have hxN_lo : (N.lo : ℝ) ≤ x := by simp only [IntervalRat.mem_def] at hxN; exact hxN.1
        have hxN_hi : x ≤ (N.hi : ℝ) := by simp only [IntervalRat.mem_def] at hxN; exact hxN.2
        -- Need to handle the processStep logic
        split_ifs with hcontract hno_intersect
        · -- Contraction case: recurse with true
          exact ih N true hxN
        · -- No intersection case: returns (J, noRoot)
          -- With strict inequality (N.lo > J.hi ∨ N.hi < J.lo), truly disjoint intervals
          intro _
          rcases hno_intersect with hlo | hhi
          · -- N.lo > J.hi: strict disjoint
            have hcast : (J.hi : ℝ) < N.lo := by exact_mod_cast hlo
            linarith
          · -- N.hi < J.lo: strict disjoint
            have hcast : (N.hi : ℝ) < J.lo := by exact_mod_cast hhi
            linarith
        · -- Normal recursion case
          exact ih N contracted hxN
    | some N =>
      -- TM step succeeded with N
      simp
      -- Extract membership bounds before splitting
      have hxN := newton_preserves_root e hsupp hvar0 J N (Or.inl htm) x hxJ hroot
      have hxJ_lo : (J.lo : ℝ) ≤ x := by simp only [IntervalRat.mem_def] at hxJ; exact hxJ.1
      have hxJ_hi : x ≤ (J.hi : ℝ) := by simp only [IntervalRat.mem_def] at hxJ; exact hxJ.2
      have hxN_lo : (N.lo : ℝ) ≤ x := by simp only [IntervalRat.mem_def] at hxN; exact hxN.1
      have hxN_hi : x ≤ (N.hi : ℝ) := by simp only [IntervalRat.mem_def] at hxN; exact hxN.2
      split_ifs with hcontract hno_intersect
      · -- Contraction case
        exact ih N true hxN
      · -- No intersection case (strict inequality)
        intro _
        rcases hno_intersect with hlo | hhi
        · have hcast : (J.hi : ℝ) < N.lo := by exact_mod_cast hlo
          linarith
        · have hcast : (N.hi : ℝ) < J.lo := by exact_mod_cast hhi
          linarith
      · -- Normal recursion case
        exact ih N contracted hxN

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
