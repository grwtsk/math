# dyadicMertensTwoPointQuadraticEnvelope_of_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b66f73e7-ca70-76b5-372f-833d68e9be28",
  "kind": "theorem",
  "lexical_name": "dyadicMertensTwoPointQuadraticEnvelope_of_uniform",
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
  "slug": "dyadicmertenstwopointquadraticenvelope-of-uniform--c613e80e9d16cd21a16e0eda",
  "source": {
    "blob": "f34bb10d318c8dd2a2aebf3bfa4a0b07dde34f0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c613e80e9d16cd21a16e0edac786c83d5afd1b9bf8f69181e98559b5a3d987bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b66f73e7-ca70-76b5-372f-833d68e9be28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicMertensTwoPointQuadraticEnvelope_of_uniform
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    DyadicMertensTwoPointQuadraticEnvelope j U := by
  let Y : ℕ := 2 ^ (j + 1)
  have hY : 1 ≤ Y := Nat.one_le_pow (j + 1) 2 (by norm_num)
  refine ⟨henv.1, fun _ => U, ?_, ?_⟩
  · intro h hh hhY
    exact ⟨henv.1, fun N hN => henv.2 h N hh hhY hN⟩
  · have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
      rw [Nat.card_Ico]
    rw [show 2 ^ (j + 1) = Y by rfl]
    calc
      (∑ _h ∈ Finset.Ico 1 Y, U ^ 2) =
          (((Finset.Ico 1 Y).card : ℕ) : ℝ) * U ^ 2 := by
        simp only [Finset.sum_const, nsmul_eq_mul]
      _ = (((Y - 1 : ℕ) : ℝ)) * U ^ 2 := by rw [hcard]
      _ ≤ (Y : ℝ) * U ^ 2 := by
        apply mul_le_mul_of_nonneg_right
        · exact_mod_cast Nat.sub_le Y 1
        · exact sq_nonneg U
      _ = U ^ 2 * (Y : ℝ) := by ring

/-- Finite Cauchy--Schwarz converts the normalized quadratic budget into the
normalized `L¹` mean budget with the same scale parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34bb10d318c8dd2a2aebf3bfa4a0b07dde34f0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
