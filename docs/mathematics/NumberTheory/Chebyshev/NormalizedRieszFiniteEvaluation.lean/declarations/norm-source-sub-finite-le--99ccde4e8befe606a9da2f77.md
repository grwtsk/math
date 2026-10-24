# norm_source_sub_finite_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b53988-34bc-effb-0dc6-5951f23f1937",
  "kind": "theorem",
  "lexical_name": "norm_source_sub_finite_le",
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
  "slug": "norm-source-sub-finite-le--99ccde4e8befe606a9da2f77",
  "source": {
    "blob": "d955b3c71ad67285d63f6b740e70b52850c531f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ccde4e8befe606a9da2f77a937195bba2e97d3791e21e577ed416988f2e73e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b53988-34bc-effb-0dc6-5951f23f1937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_source_sub_finite_le (N : ℕ) (x T : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) (hT : 2 ≤ T) :
    ‖(firstRieszPrefix N x : ℂ) - finiteNormalizedRiesz x T‖ ≤ normalizedRieszTailBudget x T := by
  rw [source_sub_finite_eq N x T hx hN hxN]
  have htri := (norm_sub_le
    ((fullRieszZeroValue x - finiteRieszZeroHead x T) -
      ((3 - x : ℝ) : ℂ) * (fullRieszZeroValue 2 - finiteRieszZeroHead 2 T))
    (((x - 2 : ℝ) : ℂ) * (fullRieszZeroValue 3 - finiteRieszZeroHead 3 T))).trans
      (add_le_add (norm_sub_le _ _) (le_refl _))
  simp only [norm_mul, Complex.norm_real] at htri
  have hxB := norm_fullRieszZeroValue_sub_head x T hx hT
  have h2B := norm_fullRieszZeroValue_sub_head 2 T (by norm_num) hT
  have h3B := norm_fullRieszZeroValue_sub_head 3 T (by norm_num) hT
  exact htri.trans (add_le_add
    (add_le_add hxB (mul_le_mul_of_nonneg_left h2B (abs_nonneg _)))
    (mul_le_mul_of_nonneg_left h3B (abs_nonneg _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d955b3c71ad67285d63f6b740e70b52850c531f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
