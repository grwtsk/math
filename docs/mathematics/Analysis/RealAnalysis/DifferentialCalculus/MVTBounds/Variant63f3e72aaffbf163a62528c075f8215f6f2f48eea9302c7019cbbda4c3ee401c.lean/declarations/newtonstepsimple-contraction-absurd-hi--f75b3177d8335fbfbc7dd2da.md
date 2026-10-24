# newtonStepSimple_contraction_absurd_hi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d7f5975-60ac-c01a-14cf-06a0eb0a487d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:828cc6fe-c278-517b-5637-0eba99cdf919",
  "kind": "lemma",
  "lexical_name": "newtonStepSimple_contraction_absurd_hi",
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
  "slug": "newtonstepsimple-contraction-absurd-hi--f75b3177d8335fbfbc7dd2da",
  "source": {
    "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f75b3177d8335fbfbc7dd2da623ebc4dbdff6814c89e746dfbb44281563a2843",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:828cc6fe-c278-517b-5637-0eba99cdf919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newtonStepSimple_contraction_absurd_hi
    (e : Expr) (I N : IntervalRat)
    (hSimple : newtonStepSimple e I 0 = some N)
    (hContract : N.lo > I.lo ∧ N.hi < I.hi)
    (hdI_pos : 0 < (derivInterval e (fun _ => I) 0).lo)
    (hMVT : (evalInterval1 e (IntervalRat.singleton I.midpoint)).hi / (derivInterval e (fun _ => I) 0).lo ≥
            (I.hi - I.lo) / 2) : False := by
  -- Extract the structure of newtonStepSimple
  obtain ⟨hdI_nonzero, hN_lo, hN_hi⟩ := newtonStepSimple_extract e I N hSimple
  -- Define the key quantities
  let c := I.midpoint
  let fc := evalInterval1 e (IntervalRat.singleton c)
  let dI := derivInterval e (fun _ => I) 0
  let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
  let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
  let hw : ℚ := (I.hi - I.lo) / 2
  -- From contraction: N.lo > I.lo, but N.lo = max I.lo (c - Q.hi)
  -- This means c - Q.hi > I.lo, so Q.hi < c - I.lo = hw
  have hQ_hi_lt_hw : Q.hi < hw := by
    have hmax_gt : max I.lo (c - Q.hi) > I.lo := by
      rw [← hN_lo]; exact hContract.1
    have hright_gt : c - Q.hi > I.lo := by
      by_contra! h
      have : max I.lo (c - Q.hi) = I.lo := max_eq_left h
      rw [this] at hmax_gt
      exact lt_irrefl I.lo hmax_gt
    -- c - Q.hi > I.lo means Q.hi < c - I.lo
    have hmid : c = (I.lo + I.hi) / 2 := rfl
    have hc_minus_Ilo : c - I.lo = hw := by
      simp [hmid]
      ring
    linarith
  -- But quotient_hi_lower_bound says Q.hi ≥ fc.hi / dI.lo
  have hQ_hi_ge : Q.hi ≥ fc.hi / dI.lo := quotient_hi_lower_bound hdI_pos
  -- And hMVT says fc.hi / dI.lo ≥ hw
  -- So Q.hi ≥ hw, contradicting Q.hi < hw
  have hMVT' : fc.hi / dI.lo ≥ hw := hMVT
  linarith

/-- Key contradiction: if newtonStepSimple contracts AND fc.lo/dI.lo ≤ -hw (with dI.lo > 0), then False. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f461942b8537f8587853799e1a35b9e2c60784b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
