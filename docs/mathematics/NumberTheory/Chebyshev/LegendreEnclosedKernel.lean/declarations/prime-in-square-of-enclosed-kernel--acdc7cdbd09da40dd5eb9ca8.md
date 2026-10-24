# prime_in_square_of_enclosed_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe9a30ad-6df6-b475-7c30-4342049a4c3a",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_enclosed_kernel",
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
  "slug": "prime-in-square-of-enclosed-kernel--acdc7cdbd09da40dd5eb9ca8",
  "source": {
    "blob": "37791a0fffb75ba9d925874de1e67d613344a8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acdc7cdbd09da40dd5eb9ca8cb08401161ad4f32548bf1c6258c71670167128e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe9a30ad-6df6-b475-7c30-4342049a4c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_enclosed_kernel (n : ℕ) (hn : 1 ≤ n)
    (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (evaluated correction correctionApprox remainder : ℂ)
    (evaluationError correctionError remainderLower : ℝ)
    (hsource : (squareIncrement n : ℂ) =
      ((2 * (n : ℝ) + 1 : ℝ) : ℂ) - squareFiniteSum n S m ρ + correction + remainder)
    (hevaluation : ‖squareFiniteSum n S m c - evaluated‖ ≤ evaluationError)
    (hcorrection : ‖correction - correctionApprox‖ ≤ correctionError)
    (hremainder : remainderLower ≤ remainder.re)
    (hmargin : 0 < 2 * (n : ℝ) + 1 - evaluated.re + correctionApprox.re + remainderLower -
      (squareEnclosureBudget n S m r β + evaluationError) - correctionError -
        squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  apply (squareCount_pos_iff n).mp
  exact squareCount_pos_of_source_lower n hn _
    (squareIncrement_lower_of_enclosures n hn S m ρ c r β hρ hc hr
      evaluated correction correctionApprox remainder evaluationError correctionError
      remainderLower hsource hevaluation hcorrection hremainder) hmargin

/-- The symmetric error requires the separate two-sided bound on the complete remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/LegendreEnclosedKernel.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37791a0fffb75ba9d925874de1e67d613344a8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
