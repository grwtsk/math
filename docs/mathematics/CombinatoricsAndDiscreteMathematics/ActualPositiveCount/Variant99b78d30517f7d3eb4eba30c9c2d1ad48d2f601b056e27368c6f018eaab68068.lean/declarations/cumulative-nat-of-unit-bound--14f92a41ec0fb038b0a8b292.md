# cumulative_nat_of_unit_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c70c8172-2a9d-1f53-a37d-1d967f66c608",
  "kind": "theorem",
  "lexical_name": "cumulative_nat_of_unit_bound",
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
  "slug": "cumulative-nat-of-unit-bound--14f92a41ec0fb038b0a8b292",
  "source": {
    "blob": "0232cd3b93d385167f35cee12f11e31977ef1e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f92a41ec0fb038b0a8b29226d07aa4384bf2c3fa34ccf6f09d135832fe0a57",
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

Occurrence: `result:c70c8172-2a9d-1f53-a37d-1d967f66c608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_nat_of_unit_bound (A : ℝ) (hA : 0 ≤ A)
    (hunit : ∀ t : ℝ, (Zeta23.Ncount t (t + 1) : ℝ) ≤
      A * Real.log (|t| + 3)) (n : ℕ) :
    (Zeta23.Ncount 0 (n : ℝ) : ℝ) ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 3) := by
  induction n with
  | zero => simp [Ncount_same]
  | succ n ih =>
    have hlog : Real.log ((n : ℝ) + 3) ≤ Real.log ((n : ℝ) + 4) :=
      Real.log_le_log (by positivity) (by linarith)
    have hlocal := hunit (n : ℝ)
    rw [abs_of_nonneg (Nat.cast_nonneg n)] at hlocal
    rw [Nat.cast_succ, Zeta23.Ncount_add (Nat.cast_nonneg n) (by linarith)]
    push_cast
    calc
      (Zeta23.Ncount 0 (n : ℝ) : ℝ) + (Zeta23.Ncount (n : ℝ) ((n : ℝ) + 1) : ℝ)
          ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 3) + A * Real.log ((n : ℝ) + 3) :=
        add_le_add ih hlocal
      _ ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 4) + A * Real.log ((n : ℝ) + 4) :=
        add_le_add (mul_le_mul_of_nonneg_left hlog (by positivity))
          (mul_le_mul_of_nonneg_left hlog hA)
      _ = ((n : ℝ) + 1) * A * Real.log ((n : ℝ) + 1 + 3) := by ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0232cd3b93d385167f35cee12f11e31977ef1e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
