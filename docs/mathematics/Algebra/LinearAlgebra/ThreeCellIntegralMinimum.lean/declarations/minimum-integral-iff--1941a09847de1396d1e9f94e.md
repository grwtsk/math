# minimum_integral_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec94eba7-d858-47f8-0e66-e5c0ef9b9531",
  "kind": "theorem",
  "lexical_name": "minimum_integral_iff",
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
  "slug": "minimum-integral-iff--1941a09847de1396d1e9f94e",
  "source": {
    "blob": "f1555e9eea1b5460a4483660f4a2de645da2d0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 44,
    "path": "GRWTSK/LinearAlgebra/ThreeCellIntegralMinimum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1941a09847de1396d1e9f94ea6c0764b6f80f304be2442a5b9f75dfa6b9c2c40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec94eba7-d858-47f8-0e66-e5c0ef9b9531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimum_integral_iff (s : ℤ) (e : Triple ℤ) :
    IntegralMinimum s e ↔ (3 : ℤ) ∣ s ∧ (4 : ℤ) ∣ e 1 - e 0 ∧ (4 : ℤ) ∣ e 2 - e 0 := by
  constructor
  · rintro ⟨⟨z, a⟩, hv⟩
    have h0 := congrFun (congrArg Prod.fst hv) 0
    have h1 := congrFun (congrArg Prod.fst hv) 1
    have h0R : (12 : ℝ) * (z 0 : ℝ) =
        4 * (s : ℝ) + 3 * (-(e 0 : ℝ) + (e 2 : ℝ)) := by
      dsimp [castCell, minimum, ThreeCellGaugeMetric.minimumRep,
        ThreeCellHodgeGauge.delta0Transpose] at h0
      simp only [smul_eq_mul] at h0
      linarith
    have h1R : (12 : ℝ) * (z 1 : ℝ) =
        4 * (s : ℝ) + 3 * ((e 0 : ℝ) - (e 1 : ℝ)) := by
      dsimp [castCell, minimum, ThreeCellGaugeMetric.minimumRep,
        ThreeCellHodgeGauge.delta0Transpose] at h1
      simp only [smul_eq_mul] at h1
      linarith
    have h0Z : 12 * z 0 = 4 * s + 3 * (-e 0 + e 2) := by exact_mod_cast h0R
    have h1Z : 12 * z 1 = 4 * s + 3 * (e 0 - e 1) := by exact_mod_cast h1R
    have hs : (3 : ℤ) ∣ s := by omega
    obtain ⟨m, hm⟩ := hs
    refine ⟨⟨m, hm⟩, ?_, ?_⟩ <;> omega
  · rintro ⟨⟨m, hm⟩, ⟨u, hu⟩, ⟨w, hw⟩⟩
    have he1 : e 1 = e 0 + 4 * u := by omega
    have he2 : e 2 = e 0 + 4 * w := by omega
    refine ⟨(![m + w, m - u, m + u - w],
      ![-e 0 - u - w, -e 0 - 2*u - w, -e 0 - u - 2*w]), ?_⟩
    apply Prod.ext <;> funext j <;> fin_cases j <;>
      simp [castCell, minimum, ThreeCellGaugeMetric.minimumRep,
        ThreeCellHodgeGauge.delta0Transpose, delta1, hm, he1, he2, smul_eq_mul] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/ThreeCellIntegralMinimum.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1555e9eea1b5460a4483660f4a2de645da2d0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
