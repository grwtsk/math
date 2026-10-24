# existsUnique_pos_generator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90251ed2-28b8-2761-38b0-aa4467739660",
  "kind": "theorem",
  "lexical_name": "existsUnique_pos_generator",
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
  "slug": "existsunique-pos-generator--1481575fe02c88211a7ab7fa",
  "source": {
    "blob": "9c19465a0f8df240d4c519037da398f00b4ffbce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 645,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1481575fe02c88211a7ab7faab1d972787905eb25ea9f335ce37c5325fc5a1f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90251ed2-28b8-2761-38b0-aa4467739660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_pos_generator (h₀ : 0 < d) (hd : ¬IsSquare d) :
    ∃! a₁ : Solution₁ d,
      1 < a₁.x ∧ 0 < a₁.y ∧ ∀ a : Solution₁ d, ∃ n : ℤ, a = a₁ ^ n ∨ a = -a₁ ^ n := by
  obtain ⟨a₁, ha₁⟩ := IsFundamental.exists_of_not_isSquare h₀ hd
  refine ⟨a₁, ⟨ha₁.1, ha₁.2.1, ha₁.eq_zpow_or_neg_zpow⟩, fun a (H : 1 < _ ∧ _) => ?_⟩
  obtain ⟨Hx, Hy, H⟩ := H
  obtain ⟨n₁, hn₁⟩ := H a₁
  obtain ⟨n₂, hn₂⟩ := ha₁.eq_zpow_or_neg_zpow a
  rcases hn₂ with (rfl | rfl)
  · rw [← zpow_mul, eq_comm, @eq_comm _ a₁, ← mul_inv_eq_one, ← @mul_inv_eq_one _ _ _ a₁, ←
      zpow_neg_one, neg_mul, ← zpow_add, ← sub_eq_add_neg] at hn₁
    rcases hn₁ with hn₁ | hn₁
    · rcases Int.isUnit_iff.mp
          (isUnit_of_mul_eq_one _ _ <|
            sub_eq_zero.mp <| (ha₁.zpow_eq_one_iff (n₂ * n₁ - 1)).mp hn₁) with
        (rfl | rfl)
      · rw [zpow_one]
      · rw [zpow_neg_one, y_inv, lt_neg, neg_zero] at Hy
        exact False.elim (lt_irrefl _ <| ha₁.2.1.trans Hy)
    · rw [← zpow_zero a₁, eq_comm] at hn₁
      exact False.elim (ha₁.zpow_ne_neg_zpow hn₁)
  · rw [x_neg, lt_neg] at Hx
    have := (x_zpow_pos (zero_lt_one.trans ha₁.1) n₂).trans Hx
    norm_num at this

/-- A positive solution is a generator (up to sign) of the group of all solutions to the
Pell equation `x^2 - d*y^2 = 1` if and only if it is a fundamental solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c19465a0f8df240d4c519037da398f00b4ffbce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
