# quotient_hi_lower_bound

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
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e743e720-2904-09e8-41f5-925a5b4b86e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84fe9cb9-3334-155a-e522-234e691a0739",
  "kind": "lemma",
  "lexical_name": "quotient_hi_lower_bound",
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
  "slug": "quotient-hi-lower-bound--51ba37de6be0b9d66e4e1f70",
  "source": {
    "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 243,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51ba37de6be0b9d66e4e1f70a98df78713fe130acc3ad4ec70e1e8a400dab76a",
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

Occurrence: `result:84fe9cb9-3334-155a-e522-234e691a0739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_hi_lower_bound {fc : IntervalRat} {dI : IntervalRat.IntervalRatNonzero}
    (hdI_pos : 0 < dI.lo) :
    let Q := IntervalRat.mul fc (IntervalRat.invNonzero dI)
    Q.hi ≥ fc.hi / dI.lo := by
  intro Q
  -- invNonzero for positive dI gives [1/dI.hi, 1/dI.lo]
  have hdInv : IntervalRat.invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹, by
    have hlo : (0 : ℚ) < dI.lo := hdI_pos
    have hhi : (0 : ℚ) < dI.hi := lt_of_lt_of_le hlo dI.le
    exact inv_anti₀ hlo dI.le⟩ := by
    unfold IntervalRat.invNonzero
    simp only [hdI_pos, ↓reduceDIte]
  -- Q.hi = max of corners, which is ≥ fc.hi * dI.lo⁻¹
  show (IntervalRat.mul fc (IntervalRat.invNonzero dI)).hi ≥ fc.hi / dI.lo
  rw [hdInv]
  -- IntervalRat.mul.hi = max(max(a*c, a*d), max(b*c, b*d)) where [a,b] = fc, [c,d] = invNonzero
  -- Here d = dI.lo⁻¹, so fc.hi * dI.lo⁻¹ appears in the max
  simp only [IntervalRat.mul, div_eq_mul_inv]
  -- fc.hi * dI.lo⁻¹ ≤ max(fc.hi * dI.hi⁻¹, fc.hi * dI.lo⁻¹) ≤ max(max(..), max(..))
  exact le_trans (le_max_right _ _) (le_max_right _ _)

/-- When dI.lo > 0, the quotient Q has Q.lo ≤ fc.lo / dI.lo. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f461942b8537f8587853799e1a35b9e2c60784b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
