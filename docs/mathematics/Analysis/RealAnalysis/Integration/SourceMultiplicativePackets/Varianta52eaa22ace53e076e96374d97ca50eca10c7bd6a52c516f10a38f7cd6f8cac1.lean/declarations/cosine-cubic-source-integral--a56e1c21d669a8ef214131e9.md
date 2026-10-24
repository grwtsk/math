# cosine_cubic_source_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f6df5b1-60df-d20b-952f-1f324673cdab",
  "kind": "theorem",
  "lexical_name": "cosine_cubic_source_integral",
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
  "slug": "cosine-cubic-source-integral--a56e1c21d669a8ef214131e9",
  "source": {
    "blob": "78ada58f59d7210b8fa01dd53477696de3ae809e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a56e1c21d669a8ef214131e9d7f894c799075e48ac74844589abf8346429245b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f6df5b1-60df-d20b-952f-1f324673cdab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cosine_cubic_source_integral {A : ℝ} (hA : 1 ≤ A) (s t u : ℝ) :
    (∫ ξ : ℝ, (Real.cos (2 * Real.pi * ξ * s) *
      Real.cos (2 * Real.pi * ξ * t) * Real.cos (2 * Real.pi * ξ * u)) *
        sourceDensity A ξ) = (1 / 4 : ℝ) *
          (sourceCorrelation explicitSecondDerivative A (s + t + u) +
            sourceCorrelation explicitSecondDerivative A (s + t - u) +
            sourceCorrelation explicitSecondDerivative A (s - t + u) +
            sourceCorrelation explicitSecondDerivative A (-s + t + u)) := by
  have he : (fun ξ : ℝ => (Real.cos (2 * Real.pi * ξ * s) *
      Real.cos (2 * Real.pi * ξ * t) * Real.cos (2 * Real.pi * ξ * u)) *
        sourceDensity A ξ) =
      fun ξ => (1 / 4 : ℝ) *
        (Real.cos (2 * Real.pi * ξ * (s + t + u)) * sourceDensity A ξ +
          Real.cos (2 * Real.pi * ξ * (s + t - u)) * sourceDensity A ξ +
          Real.cos (2 * Real.pi * ξ * (s - t + u)) * sourceDensity A ξ +
          Real.cos (2 * Real.pi * ξ * (-s + t + u)) * sourceDensity A ξ) := by
    funext ξ
    rw [cosine_cubic_product]
    have h1 : 2 * Real.pi * ξ * s + 2 * Real.pi * ξ * t + 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (s + t + u) := by ring
    have h2 : 2 * Real.pi * ξ * s + 2 * Real.pi * ξ * t - 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (s + t - u) := by ring
    have h3 : 2 * Real.pi * ξ * s - 2 * Real.pi * ξ * t + 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (s - t + u) := by ring
    have h4 : -(2 * Real.pi * ξ * s) + 2 * Real.pi * ξ * t + 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (-s + t + u) := by ring
    rw [h1, h2, h3, h4]
    ring
  have hi1 := cosine_sourceDensity_integrable hA (s + t + u)
  have hi2 := cosine_sourceDensity_integrable hA (s + t - u)
  have hi3 := cosine_sourceDensity_integrable hA (s - t + u)
  have hi4 := cosine_sourceDensity_integrable hA (-s + t + u)
  rw [he, integral_const_mul]
  have hadd4 := integral_add ((hi1.add hi2).add hi3) hi4
  have hadd3 := integral_add (hi1.add hi2) hi3
  have hadd2 := integral_add hi1 hi2
  simp only [Pi.add_apply] at hadd4 hadd3 hadd2
  rw [hadd4, hadd3, hadd2]
  rw [← sourceCorrelation_eq_cosine_integral hA, ← sourceCorrelation_eq_cosine_integral hA,
    ← sourceCorrelation_eq_cosine_integral hA, ← sourceCorrelation_eq_cosine_integral hA]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ada58f59d7210b8fa01dd53477696de3ae809e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
