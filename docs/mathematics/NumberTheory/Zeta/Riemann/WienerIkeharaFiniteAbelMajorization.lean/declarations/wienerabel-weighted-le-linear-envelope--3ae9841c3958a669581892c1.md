# wienerAbel_weighted_le_linear_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0c2aae5-05b9-37fb-ead0-d5b701995758",
  "kind": "theorem",
  "lexical_name": "wienerAbel_weighted_le_linear_envelope",
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
  "slug": "wienerabel-weighted-le-linear-envelope--3ae9841c3958a669581892c1",
  "source": {
    "blob": "976f8e599a1c4cb673ec3d78d36f07ead8244352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae9841c3958a669581892c1ee3b206e5e89fe8d495835571d7437440aca9314",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c2aae5-05b9-37fb-ead0-d5b701995758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerAbel_weighted_le_linear_envelope
    (a w : ℕ → ℝ) (C : ℝ)
    (hC : 0 ≤ C)
    (hprefix : ∀ n : ℕ,
      wienerAbelPrefix a n ≤ C * (n : ℝ))
    (hwpos : ∀ n : ℕ, 0 ≤ w n)
    (hwanti : ∀ n : ℕ, w (n + 1) ≤ w n)
    (n : ℕ) :
    (∑ k ∈ Finset.range n, a k * w k) ≤
      C * (∑ k ∈ Finset.range n, w k) := by
  have hdiff (k : ℕ) : 0 ≤ w k - w (k + 1) :=
    sub_nonneg.mpr (hwanti k)
  have hhead :
      wienerAbelPrefix a n * w n ≤
        (C * (n : ℝ)) * w n :=
    mul_le_mul_of_nonneg_right (hprefix n) (hwpos n)
  have hparts :
      (∑ k ∈ Finset.range n,
        wienerAbelPrefix a (k + 1) *
          (w k - w (k + 1))) ≤
        (∑ k ∈ Finset.range n,
          (C * ((k + 1 : ℕ) : ℝ)) *
            (w k - w (k + 1))) := by
    apply Finset.sum_le_sum
    intro k _hk
    exact mul_le_mul_of_nonneg_right
      (hprefix (k + 1)) (hdiff k)
  calc
    (∑ k ∈ Finset.range n, a k * w k) =
        wienerAbelPrefix a n * w n +
          (∑ k ∈ Finset.range n,
            wienerAbelPrefix a (k + 1) *
              (w k - w (k + 1))) :=
      wienerAbel_finite_identity a w n
    _ ≤ (C * (n : ℝ)) * w n +
          ∑ k ∈ Finset.range n,
            (C * ((k + 1 : ℕ) : ℝ)) *
              (w k - w (k + 1)) :=
      add_le_add hhead hparts
    _ = C * ((n : ℝ) * w n +
          ∑ k ∈ Finset.range n,
            ((k + 1 : ℕ) : ℝ) * (w k - w (k + 1))) := by
      simp only [mul_add, Finset.mul_sum]
      ring
    _ = C * (∑ k ∈ Finset.range n, w k) := by
      rw [wienerAbel_linear_telescoping]

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `976f8e599a1c4cb673ec3d78d36f07ead8244352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
