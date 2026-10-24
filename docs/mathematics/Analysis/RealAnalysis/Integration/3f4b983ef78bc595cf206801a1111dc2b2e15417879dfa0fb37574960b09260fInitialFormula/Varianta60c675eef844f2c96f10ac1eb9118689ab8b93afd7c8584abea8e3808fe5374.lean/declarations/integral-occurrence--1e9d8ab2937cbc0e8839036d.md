# integral_occurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c6b3f7d-2d6e-39ec-dc16-a0e0c5d297e7",
  "kind": "theorem",
  "lexical_name": "integral_occurrence",
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
  "slug": "integral-occurrence--1e9d8ab2937cbc0e8839036d",
  "source": {
    "blob": "9fa70a130343044ca3fb1a14286c77206441f14c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e9d8ab2937cbc0e8839036d0d9474f646c3b0823f0304e432c32c5b605ab23f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c6b3f7d-2d6e-39ec-dc16-a0e0c5d297e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_occurrence
    (o : ZeroOccurrence) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        expandedSummand A (shiftedValue o)) =
      equation20Summand (shiftedValue o) s := by
  let z := shiftedValue o
  have hz := shiftedValue_strip o
  have hminus : 0 < (s - 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    dsimp [z]
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  have hp :=
    weightedPolynomial_integrable
      (positivePolynomial z)
      (positivePolynomial_natDegree_le z)
      (s - 2 * z) hminus
  have hn :=
    weightedPolynomial_integrable
      (positivePolynomial (-z))
      (positivePolynomial_natDegree_le (-z))
      (s + 2 * z) hplus
  have hm :=
    weightedPolynomial_integrable
      (mixedPolynomial z)
      (mixedPolynomial_natDegree_le z)
      s hs0
  change (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * expandedSummand A z) =
    equation20Summand z s
  simp_rw [weighted_expandedSummand_eq z s]
  have hpn : IntegrableOn (fun a ↦
      weightedPolynomial (positivePolynomial z) (s - 2 * z) a +
      weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) a) (Ioi 1) := hp.add hn
  rw [integral_const_mul,
    integral_sub hpn (hm.const_mul 2),
    integral_add hp hn, integral_const_mul]
  rw [integral_weightedPolynomial _
        (positivePolynomial_natDegree_le z) _ hminus,
      integral_weightedPolynomial _
        (positivePolynomial_natDegree_le (-z)) _ hplus,
      integral_weightedPolynomial _
        (mixedPolynomial_natDegree_le z) _ hs0]
  exact sourceKernel_eq_equation20Summand z s

/-- The actual occurrence integrand used for the infinite interchange. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa70a130343044ca3fb1a14286c77206441f14c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
