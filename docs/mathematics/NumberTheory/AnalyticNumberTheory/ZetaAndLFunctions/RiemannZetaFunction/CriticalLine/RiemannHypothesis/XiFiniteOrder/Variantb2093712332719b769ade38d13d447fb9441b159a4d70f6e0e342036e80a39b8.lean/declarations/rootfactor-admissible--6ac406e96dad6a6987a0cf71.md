# RootFactor.admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:109a38c4-e05a-11e3-10c8-676bd47cc7ca",
  "kind": "theorem",
  "lexical_name": "RootFactor.admissible",
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
  "slug": "rootfactor-admissible--6ac406e96dad6a6987a0cf71",
  "source": {
    "blob": "a3625794dccea101fc0ef54e98a52d5600d77fb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantb2093712332719b769ade38d13d447fb9441b159a4d70f6e0e342036e80a39b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac406e96dad6a6987a0cf71f4472ab765d57c871cc9c3ff552de81094602822",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantb2093712332719b769ade38d13d447fb9441b159a4d70f6e0e342036e80a39b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:109a38c4-e05a-11e3-10c8-676bd47cc7ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RootFactor.admissible (H : ℝ) (R : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (f : RootFactor) : f.toFactor.Admissible R := by
  cases f with
  | line ρ hz hl hi =>
    change 0 ≤ 1 / ρ.im ^ 2
    positivity
  | pair ρ hz ho hi =>
    have hγ := offline_above_height H hheight ρ hz hi ho
    have hθ := transverseAngle_lt (ρ.re - 1 / 2) ρ.im H (transverse_strip ρ hz) hH hγ
    have hR : 0 < (R : ℝ) + 1 := by positivity
    have hscale : 0 ≤ pairScale (ρ.re - 1 / 2) ρ.im := by unfold pairScale; positivity
    refine ⟨hscale, transverseAngle_nonnegative _ _, ?_⟩
    have hmul := mul_lt_mul_of_pos_left hθ hR
    have hdiv : ((R : ℝ) + 1) / H ≤ Real.pi := (div_le_iff₀ hH).mpr hbound
    have he : ((R : ℝ) + 1) * (1 / H) = ((R : ℝ) + 1) / H := by ring
    rw [he] at hmul
    exact hmul.le.trans hdiv

/-- The actual conjugate-paired product obligation. Its limit is the existing
arithmetic tape, not a chosen positive model. No determinant predicate occurs.
A proof must establish normalization, absence of real zeros, actual Hadamard
factorization, multiplicity coverage, locally uniform convergence, and coefficient
transport. Such a proof is not supplied by the record of the finite-height theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantb2093712332719b769ade38d13d447fb9441b159a4d70f6e0e342036e80a39b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantb2093712332719b769ade38d13d447fb9441b159a4d70f6e0e342036e80a39b8.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3625794dccea101fc0ef54e98a52d5600d77fb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
