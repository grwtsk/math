# quotient_lo_le_neg

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
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4927905-b463-78fa-3222-6be7344f23ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a67add0b-ace8-f593-2c59-0f3bd01cc44f",
  "kind": "lemma",
  "lexical_name": "quotient_lo_le_neg",
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
  "slug": "quotient-lo-le-neg--d1742e1d33fa9709ba09aba2",
  "source": {
    "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1742e1d33fa9709ba09aba25da645c01ade244c715d51c97246c8cb566f46b2",
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

Occurrence: `result:a67add0b-ace8-f593-2c59-0f3bd01cc44f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_lo_le_neg {fc : IntervalRat} {dI : IntervalRat.IntervalRatNonzero}
    (hdI_neg : dI.hi < 0) :
    let Q := IntervalRat.mul fc (IntervalRat.invNonzero dI)
    Q.lo ≤ fc.hi / dI.hi := by
  -- For negative dI: invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹⟩
  -- Q.lo = min4 of all corners. One corner is fc.hi * dI.hi⁻¹.
  intro Q
  have hdI_lo_neg : dI.lo < 0 := lt_of_le_of_lt dI.le hdI_neg
  have hdInv : IntervalRat.invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹, by
    exact (inv_le_inv_of_neg hdI_neg hdI_lo_neg).mpr dI.le⟩ := by
    unfold IntervalRat.invNonzero
    have h1 : ¬(0 : ℚ) < dI.lo := by linarith
    have h2 : ¬(0 : ℚ) < dI.hi := by linarith
    simp only [h1]
    rfl
  show (IntervalRat.mul fc (IntervalRat.invNonzero dI)).lo ≤ fc.hi / dI.hi
  rw [hdInv]
  simp only [IntervalRat.mul, div_eq_mul_inv]
  -- fc.hi * dI.hi⁻¹ is one of the four corners (fc.hi * inv.lo where inv.lo = dI.hi⁻¹)
  exact le_trans (min_le_right _ _) (min_le_left _ _)

/-! ### Generic contraction contradiction lemmas

These lemmas abstract the Newton step structure to work with any interval `fc`
that contains `f(c)`. This allows them to be used with both `newtonStepSimple`
(where `fc = evalInterval1 e (singleton c)`) and `newtonStepTM`
(where `fc = TaylorModel.valueAtCenterInterval tm`). -/

/-- Generic contradiction: if Q is computed from fc/dI with dI.lo > 0, contraction holds,
    and f(c) > dI.lo * hw, then False.

    This abstracts the key Newton contraction argument:
    1. Contraction implies Q.hi < hw (since N.lo > I.lo means c - Q.hi > I.lo)
    2. f(c) > dI.lo * hw implies fc.hi > dI.lo * hw (since fc.hi ≥ f(c))
    3. quotient_hi_lower_bound says Q.hi ≥ fc.hi / dI.lo > hw
    4. Contradiction: Q.hi < hw and Q.hi > hw -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f461942b8537f8587853799e1a35b9e2c60784b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
