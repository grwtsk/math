# cumulative_real_of_unit_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:575c2aa9-aebb-0c1a-c57f-ab006644f76d",
  "kind": "theorem",
  "lexical_name": "cumulative_real_of_unit_bound",
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
  "slug": "cumulative-real-of-unit-bound--4361874333caf0604a2de8a4",
  "source": {
    "blob": "0232cd3b93d385167f35cee12f11e31977ef1e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4361874333caf0604a2de8a4cb2886da454ac7a3d310aa9d7c09d6490dfd1f69",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:575c2aa9-aebb-0c1a-c57f-ab006644f76d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_real_of_unit_bound (A : ℝ) (hA : 0 ≤ A)
    (hunit : ∀ t : ℝ, (Zeta23.Ncount t (t + 1) : ℝ) ≤
      A * Real.log (|t| + 3)) {t : ℝ} (ht : 2 ≤ t) :
    (Zeta23.Ncount 0 t : ℝ) ≤ (6 * A) * t * Real.log t := by
  have ht0 : 0 ≤ t := by linarith
  have hn0 : 0 ≤ (Nat.ceil t : ℝ) := by positivity
  have hn : (Nat.ceil t : ℝ) ≤ 2 * t := by
    have := (Nat.ceil_lt_add_one ht0).le
    linarith
  have hn3 : (Nat.ceil t : ℝ) + 3 ≤ t ^ 3 := by
    have hsq : 4 ≤ t ^ 2 := by nlinarith [sq_nonneg (t - 2)]
    have hcube : 4 * t ≤ t ^ 3 := by
      have := mul_le_mul_of_nonneg_right hsq ht0
      nlinarith
    have := (Nat.ceil_lt_add_one ht0).le
    linarith
  have hlog : Real.log ((Nat.ceil t : ℝ) + 3) ≤ 3 * Real.log t := by
    have := Real.log_le_log (by positivity : 0 < (Nat.ceil t : ℝ) + 3) hn3
    simpa only [Real.log_pow, Nat.cast_ofNat] using this
  have hlog0 : 0 ≤ Real.log t := Real.log_nonneg (by linarith)
  calc
    (Zeta23.Ncount 0 t : ℝ) ≤ (Zeta23.Ncount 0 (Nat.ceil t : ℝ) : ℝ) := by
      exact_mod_cast Zeta23.Ncount_mono (le_refl (0 : ℝ)) (Nat.le_ceil t)
    _ ≤ (Nat.ceil t : ℝ) * A * Real.log ((Nat.ceil t : ℝ) + 3) :=
      cumulative_nat_of_unit_bound A hA hunit (Nat.ceil t)
    _ ≤ ((Nat.ceil t : ℝ) * A) * (3 * Real.log t) :=
      mul_le_mul_of_nonneg_left hlog (mul_nonneg hn0 hA)
    _ ≤ (2 * t * A) * (3 * Real.log t) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hn hA) (by positivity)
    _ = (6 * A) * t * Real.log t := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0232cd3b93d385167f35cee12f11e31977ef1e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
