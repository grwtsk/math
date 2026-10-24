# thetaPhiJet7_polynomial_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c1febefde3eabb8f87051a308cf1d507a385831",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f75abe8-1285-96ee-ff2a-8940e4d45042",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2be9bacc-06e3-6506-1766-a67ea5456c38",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet7_polynomial_summable",
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
  "slug": "thetaphijet7-polynomial-summable--e421379ba6005a6c93c6da20",
  "source": {
    "blob": "1c1febefde3eabb8f87051a308cf1d507a385831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e421379ba6005a6c93c6da2042d337f9ed44741bc9386e4b0381981390ff527a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2be9bacc-06e3-6506-1766-a67ea5456c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet7_polynomial_summable (k : Fin 7) (t : ℝ) :
    Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  apply (summable_mul_left_iff (a := Real.pi * Real.exp (5 * t - thetaModeA t))
    (by positivity)).mp
  have hs (j : Fin 8) : Summable (fun m : ℕ => jetCoefficient7 k j *
      (Real.pi ^ (j.val + 1) *
        thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  apply (summable_sum (fun j (_ : j ∈ Finset.univ) => hs j)).congr
  intro m
  simp_rw [scaledGaussianTerm_eq_rankFour]
  rw [jetPolynomial7_eq_sum]
  simp only [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1febefde3eabb8f87051a308cf1d507a385831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
