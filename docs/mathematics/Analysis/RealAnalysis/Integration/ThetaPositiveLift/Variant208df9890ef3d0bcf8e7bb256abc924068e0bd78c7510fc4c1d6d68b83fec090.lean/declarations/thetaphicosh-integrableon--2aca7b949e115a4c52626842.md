# thetaPhiCosh_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2212296-c7cd-e791-5358-79cbde216e17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91bec9b6-ffb4-b313-6991-51df0bb5cd72",
  "kind": "theorem",
  "lexical_name": "thetaPhiCosh_integrableOn",
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
  "slug": "thetaphicosh-integrableon--2aca7b949e115a4c52626842",
  "source": {
    "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aca7b949e115a4c526268425d422469e08a8134cb6f1bdb76be8d3a99de6a00",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91bec9b6-ffb4-b313-6991-51df0bb5cd72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiCosh_integrableOn (u : ℂ) :
    IntegrableOn (thetaPhiCosh u) (Ioi (0 : ℝ)) := by
  let T : ℝ := thetaPhiCoshThreshold u
  have hTpos : 0 < T := thetaPhiCoshThreshold_positive u
  have hinitial : IntegrableOn (thetaPhiCosh u) (Ioc (0 : ℝ) T) := by
    rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le hTpos.le]
    exact Continuous.intervalIntegrable (continuous_thetaPhiCosh u) _ _
  have hbase :
      IntegrableOn (fun t : ℝ => Real.exp ((-1 : ℝ) * t))
        (Ioi T) :=
    integrableOn_exp_mul_Ioi (by norm_num) T
  have hmajor :
      IntegrableOn
        (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-t))
        (Ioi T) := by
    unfold IntegrableOn at hbase ⊢
    have h := hbase.const_mul thetaPhiDecayConstant
    simpa using h
  have htail : IntegrableOn (thetaPhiCosh u) (Ioi T) := by
    unfold IntegrableOn at hmajor ⊢
    refine Integrable.mono' hmajor
      (continuous_thetaPhiCosh u).aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaPhiCosh_norm_le_tail u (le_of_lt ht)
  have hunion :
      IntegrableOn (thetaPhiCosh u) (Ioc (0 : ℝ) T ∪ Ioi T) :=
    hinitial.union htail
  have hsets : Ioc (0 : ℝ) T ∪ Ioi T = Ioi (0 : ℝ) := by
    ext t
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨ht0, _⟩ | htT)
      · exact ht0
      · exact hTpos.trans htT
    · intro ht0
      by_cases htT : t ≤ T
      · exact Or.inl ⟨ht0, htT⟩
      · exact Or.inr (lt_of_not_ge htT)
  rw [hsets] at hunion
  exact hunion

/-- The Mellin-side `A cosh` integrand is integrable; this is the packaged
integrability statement implicit in the earlier exponential recombination. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
