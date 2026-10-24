# normalized_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d665c689-da2d-1fbb-28ad-e1887809a06d",
  "kind": "theorem",
  "lexical_name": "normalized_margin",
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
  "slug": "normalized-margin--c5434288082099f03c78e2ed",
  "source": {
    "blob": "3beac2b8e5bdd4b95e657599d525b6d19f0b48e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5434288082099f03c78e2ed23135aecfc26acaac715f5602a524af5d6e6b9b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d665c689-da2d-1fbb-28ad-e1887809a06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_margin (A L : Matrix m m ℂ) [Invertible L]
    (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B] (η : ℝ)
    (hA : A = Lᴴ * L)
    (hΓ : ∀ z : m → ℂ, hermitianEnergy (normalizedCoupling L C B) z ≤
      (1 - η) * ‖WithLp.toLp 2 z‖ ^ 2) (x : m → ℂ) :
    hermitianEnergy (Cᴴ * ⅟B * C) x ≤ (1 - η) * hermitianEnergy A x := by
  have hleft : hermitianEnergy (Cᴴ * ⅟B * C) x =
      hermitianEnergy (normalizedCoupling L C B) (L.mulVec x) := by
    rw [← coupling_eq_normalized L C B, hermitianEnergy_congruence]
  have hright : hermitianEnergy A x = ‖WithLp.toLp 2 (L.mulVec x)‖ ^ 2 := by
    rw [hA, show Lᴴ * L = Lᴴ * (1 : Matrix m m ℂ) * L by simp,
      hermitianEnergy_congruence, hermitianEnergy_one]
  rw [hleft, hright]
  exact hΓ (L.mulVec x)

omit [DecidableEq m] in
/-- A normalized-coupling margin yields the exact Schur center bound. The
coupling inequality is on the actual quadratic form, retaining every cross term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3beac2b8e5bdd4b95e657599d525b6d19f0b48e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
