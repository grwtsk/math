# shear_inverse_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1059f4b9-1674-1968-2ad3-4dd7f94117d4",
  "kind": "theorem",
  "lexical_name": "shear_inverse_square",
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
  "slug": "shear-inverse-square--708a3a23c1c4526eedf65c05",
  "source": {
    "blob": "3beac2b8e5bdd4b95e657599d525b6d19f0b48e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708a3a23c1c4526eedf65c05c8a80c4a9accc6f528b67c78425676b6a185b413",
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

Occurrence: `result:1059f4b9-1674-1968-2ad3-4dd7f94117d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shear_inverse_square (K : V → W) (M : ℝ) (hM : 0 ≤ M)
    (hK : ∀ x, ‖K x‖ ≤ M * ‖x‖) (x : V) (y : W) :
    ‖x‖ ^ 2 + ‖y‖ ^ 2 ≤ (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) := by
  have hy : ‖y‖ ≤ ‖y + K x‖ + M * ‖x‖ := by
    calc
      ‖y‖ = ‖(y + K x) - K x‖ := by rw [add_sub_cancel_right]
      _ ≤ ‖y + K x‖ + ‖K x‖ := norm_sub_le _ _
      _ ≤ ‖y + K x‖ + M * ‖x‖ := add_le_add le_rfl (hK x)
  have hs : ‖y‖ ^ 2 ≤ (‖y + K x‖ + M * ‖x‖) ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) (by positivity)).mpr hy
  have hpoly : 0 ≤ M * (‖x‖ - ‖y + K x‖) ^ 2 +
      M * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) + M ^ 2 * ‖y + K x‖ ^ 2 := by
    positivity
  calc
    ‖x‖ ^ 2 + ‖y‖ ^ 2 ≤ ‖x‖ ^ 2 + (‖y + K x‖ + M * ‖x‖) ^ 2 :=
      add_le_add le_rfl hs
    _ = (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) -
        (M * (‖x‖ - ‖y + K x‖) ^ 2 + M * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) +
          M ^ 2 * ‖y + K x‖ ^ 2) := by ring
    _ ≤ (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) := sub_le_self _ hpoly

/-- The exact completion identity and two coercivity constants produce the
declared `min(a*η,b)/(1+M)²` bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3beac2b8e5bdd4b95e657599d525b6d19f0b48e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
