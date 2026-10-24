# integrateAdaptiveAuxWithInv_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a6779ee-f787-e658-1bb9-8aa952270887",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce8ea74f-e65c-fa18-68fd-ec2c0d1227f2",
  "kind": "theorem",
  "lexical_name": "integrateAdaptiveAuxWithInv_correct",
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
  "slug": "integrateadaptiveauxwithinv-correct--f0f259095af00d4886650a4e",
  "source": {
    "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 568,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0f259095af00d4886650a4e4f5c228a044e43b05a3b527a2efa6b6acd52fa09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8ea74f-e65c-fa18-68fd-ec2c0d1227f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrateAdaptiveAuxWithInv_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (tol : ℚ) (maxDepth : ℕ) (result : AdaptiveResultWithInv)
    (hsome : integrateAdaptiveAuxWithInv e I tol maxDepth = some result)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ result.bound := by
  induction maxDepth generalizing I tol result with
  | zero =>
    -- Base case: returns integrateRefinedWithInv, which is correct
    simp only [integrateAdaptiveAuxWithInv] at hsome
    cases hrefined : integrateRefinedWithInv e I with
    | none => simp [hrefined] at hsome
    | some refined =>
      simp only [hrefined, Option.some.injEq] at hsome
      cases hsome
      exact integrateRefinedWithInv_correct e hsupp I refined hrefined hInt
  | succ n ih =>
    simp only [integrateAdaptiveAuxWithInv] at hsome
    cases hrefined : integrateRefinedWithInv e I with
    | none => simp [hrefined] at hsome
    | some refined =>
      simp only [hrefined] at hsome
      split_ifs at hsome with herr
      · -- Error acceptable: returns integrateRefinedWithInv
        simp only [Option.some.injEq] at hsome
        cases hsome
        exact integrateRefinedWithInv_correct e hsupp I refined hrefined hInt
      · -- Subdivide case
        cases hr1 : integrateAdaptiveAuxWithInv e (splitMid I).1 (tol / 2) n with
        | none => simp [hr1] at hsome
        | some r1 =>
          cases hr2 : integrateAdaptiveAuxWithInv e (splitMid I).2 (tol / 2) n with
          | none => simp [hr1, hr2] at hsome
          | some r2 =>
            simp only [hr1, hr2, Option.some.injEq] at hsome
            cases hsome
            -- Split the integral
            have hsplit := integral_split_mid_withInv e I hInt
            rw [hsplit]
            -- Get bounds for each half
            have hInt₁ := intervalIntegrable_splitMid_left_withInv e I hInt
            have hInt₂ := intervalIntegrable_splitMid_right_withInv e I hInt
            have h1 := ih (splitMid I).1 (tol / 2) r1 hr1 hInt₁
            have h2 := ih (splitMid I).2 (tol / 2) r2 hr2 hInt₂
            -- The bounds are correct, so their sum contains the sum of integrals
            simp only [splitMid_left_lo, splitMid_left_hi,
                       splitMid_right_lo, splitMid_right_hi] at h1 h2
            exact IntervalRat.mem_add h1 h2

/-- Soundness of the main adaptive integration function with inverse support -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311dd7c19f7fb27658208c4be11e77820aa7f316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
