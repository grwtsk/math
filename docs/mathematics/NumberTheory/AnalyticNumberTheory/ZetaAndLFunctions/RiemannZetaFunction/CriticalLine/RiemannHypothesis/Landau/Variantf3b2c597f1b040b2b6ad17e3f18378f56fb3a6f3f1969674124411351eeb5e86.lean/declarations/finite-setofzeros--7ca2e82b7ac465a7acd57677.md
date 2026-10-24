# finite_SetOfZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ac6ea0b92c92c51f499e17ab83114401b76e66c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71347211-38fb-d84f-7e74-e9000434b352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e1003ad-ab27-b92c-eeaa-357fb44167e2",
  "kind": "lemma",
  "lexical_name": "finite_SetOfZeros",
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
  "slug": "finite-setofzeros--7ca2e82b7ac465a7acd57677",
  "source": {
    "blob": "5ac6ea0b92c92c51f499e17ab83114401b76e66c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 315,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca2e82b7ac465a7acd57677ad5f5b0fc963195ec4980529f46ae4e79f7e2c5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1003ad-ab27-b92c-eeaa-357fb44167e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_SetOfZeros {f : ℂ → ℂ}
    (hfa : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) 1)) (hf0 : f 0 ≠ 0) :
    (SetOfZeros 1 f).Finite := by
  set U := Metric.closedBall (0 : ℂ) 1 with hU
  have h0U : (0 : ℂ) ∈ U := by
    rw [hU, Metric.mem_closedBall, dist_self]
    norm_num
  have hcod : {z : ℂ | f z ≠ 0} ∈ Filter.codiscreteWithin U := by
    rcases hfa.eqOn_zero_or_eventually_ne_zero_of_preconnected
        (by rw [hU]; exact Metric.isPreconnected_closedBall) with h | h
    · exact absurd (h h0U) hf0
    · exact h
  rw [codiscreteWithin_iff_locallyFiniteComplementWithin] at hcod
  have hsub1 : Metric.closedBall (0 : ℂ) 1 ⊆ U := subset_rfl
  choose t ht htfin using fun z (hz : z ∈ Metric.closedBall (0:ℂ) 1) => hcod z (hsub1 hz)
  obtain ⟨s, hs⟩ := (isCompact_closedBall (0:ℂ) 1).elim_nhds_subcover'
    (fun z hz => t z hz) (fun z hz => ht z hz)
  refine Set.Finite.subset (Set.Finite.biUnion s.finite_toSet
    (fun z _ => htfin z.1 z.2)) ?_
  intro ρ hρ
  have hρball : ρ ∈ Metric.closedBall (0:ℂ) 1 := by
    rw [Metric.mem_closedBall, Complex.dist_eq, sub_zero]
    exact hρ.1
  obtain ⟨z, hz, hρz⟩ := Set.mem_iUnion₂.mp (hs hρball)
  refine Set.mem_biUnion hz ?_
  refine ⟨hρz, hsub1 hρball, ?_⟩
  simp only [Set.mem_ofPred_eq, not_not]
  exact hρ.2

/-- **Landau partial fraction on a general disk** (affine rescaling of the unit version):
f analytic on a neighbourhood of closedBall s₀ R, f(s₀) ≠ 0, ‖f‖ ≤ B·‖f(s₀)‖ on the (24/25)R-ball,
2 ≤ B.  The zero set in the (22/25)R-ball is a finite set Z, and on the (83/100)R-ball (off zeros)
logDeriv f is Σ_{ρ ∈ Z} m_ρ/(s−ρ) up to 44795000·(log B)/R. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac6ea0b92c92c51f499e17ab83114401b76e66c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
