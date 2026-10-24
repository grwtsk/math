# eq_centerMass_of_eval_derivative_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb9d4d6-e57a-e1c2-b688-fbc5db6a45ed",
  "kind": "theorem",
  "lexical_name": "eq_centerMass_of_eval_derivative_eq_zero",
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
  "slug": "eq-centermass-of-eval-derivative-eq-zero--72adcc3968094419fee9ed51",
  "source": {
    "blob": "00d686f09dabb5812a59aee8fc87c51a18eb11cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72adcc3968094419fee9ed51eb9934cba489c218f4180fcea722f9195fe06bfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb9d4d6-e57a-e1c2-b688-fbc5db6a45ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_centerMass_of_eval_derivative_eq_zero (hP : 0 < P.degree)
    (hz : P.derivative.eval z = 0) :
    z = P.roots.toFinset.centerMass (P.derivRootWeight z) id := by
  set weight : ℂ → ℝ := P.derivRootWeight z
  set s := P.roots.toFinset
  suffices ∑ x ∈ s, weight x • (z - x) = 0 by calc
    z = s.centerMass weight fun _ ↦ z := by
      rw [Finset.centerMass, ← Finset.sum_smul, inv_smul_smul₀]
      exact (sum_derivRootWeight_pos hP z).ne'
    _ = s.centerMass weight (z - ·) + s.centerMass weight id := by
      simp only [Finset.centerMass, ← smul_add, ← Finset.sum_add_distrib, id, sub_add_cancel]
    _ = s.centerMass weight id := by
      simp only [add_eq_right, Finset.centerMass, this, smul_zero]
  by_cases hzP : P.eval z = 0
  · simp only [weight, derivRootWeight, ite_eq_left hzP]
    rw [Finset.sum_eq_single z] <;> simp_all
  calc
    ∑ x ∈ s, weight x • (z - x) = conj (∑ x ∈ s, P.rootMultiplicity x • (1 / (z - x))) := by
      simp only [map_sum, weight, derivRootWeight, ite_eq_right hzP]
      refine Finset.sum_congr rfl fun x hx ↦ ?_
      have : z - x ≠ 0 := by
        rw [sub_ne_zero]
        rintro rfl
        simp_all [s]
      simp [← Complex.conj_mul', field]
    _ = conj (P.roots.map fun x ↦ 1 / (z - x)).sum := by
      simp only [Finset.sum_multiset_map_count, P.count_roots, s]
    _ = 0 := by
      rw [← (IsAlgClosed.splits _).eval_derivative_div_eval_of_ne_zero hzP]
      simp [hz]

/-- *Gauss-Lucas Theorem*: if $P$ is a nonconstant polynomial with complex coefficients,
then all zeros of $P'$ belong to the convex hull of the set of zeros of $P$.

See also `eq_centerMass_of_eval_derivative_eq_zero`
for a version that provides explicit coefficients of the convex combination.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d686f09dabb5812a59aee8fc87c51a18eb11cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
