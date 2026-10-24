# error_column_difference_integral_eq_profile_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83f2209b-4d70-0511-e028-63a001acf65b",
  "kind": "theorem",
  "lexical_name": "error_column_difference_integral_eq_profile_cells",
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
  "slug": "error-column-difference-integral-eq-profile-cells--26e91863ebb528695cffc24f",
  "source": {
    "blob": "c6e045884df9203c1f495c87f420c4a07a55f6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 517,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e91863ebb528695cffc24fc41ca07868ff832b1867d408b93f361df88479d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83f2209b-4d70-0511-e028-63a001acf65b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem error_column_difference_integral_eq_profile_cells
    {A l b k : ℝ} (hA : 0 < A) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, mangoldtLogError t *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))) =
      (∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
        profileYCell (deriv (normalizedTest explicitSecondDerivative A)) k v) +
        (1 / 4 : ℝ) * (∫ v : ℝ,
          profileX (normalizedTest explicitSecondDerivative A) l b v *
            profileYCell (normalizedTest explicitSecondDerivative A) k v) := by
  simp_rw [error_column_difference_eq_two_cells hA hk]
  rw [intervalIntegral.integral_add
    (cell_integral_intervalIntegrable_t _
      ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num)) hlb hk
      (deriv_source_tsupport_subset hA))
    ((cell_integral_intervalIntegrable_t _ (normalizedTest_contDiff A hA).continuous
      hlb hk (source_tsupport_subset hA)).const_mul (1 / 4)),
    intervalIntegral.integral_const_mul]
  rw [show (∫ t in l..b, ∫ u in k..(k + 1), cellInner
      (deriv (normalizedTest explicitSecondDerivative A)) t u) =
        ∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
          profileYCell (deriv (normalizedTest explicitSecondDerivative A)) k v from
    actual_deriv_source_cell_factorization hA l b k hlb hk]
  rw [show (∫ t in l..b, ∫ u in k..(k + 1), cellInner
      (normalizedTest explicitSecondDerivative A) t u) =
        ∫ v : ℝ, profileX (normalizedTest explicitSecondDerivative A) l b v *
          profileYCell (normalizedTest explicitSecondDerivative A) k v from
    actual_source_cell_factorization hA l b k hlb hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e045884df9203c1f495c87f420c4a07a55f6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
