# finite_shells_not_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a28d31a-70fa-0bcf-0c5d-8c8caf04034b",
  "kind": "theorem",
  "lexical_name": "finite_shells_not_quartic",
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
  "slug": "finite-shells-not-quartic--5456d16f562c2e9a7dbe8e59",
  "source": {
    "blob": "8a847d376525fd49cc0ec7cedd86dab2c4fca8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5456d16f562c2e9a7dbe8e59f8685f563fcd34dac91ac5aab7d35108fbd3a1d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a28d31a-70fa-0bcf-0c5d-8c8caf04034b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_shells_not_quartic :
    ¬ ∃ C : ℝ, 0 < C ∧ ∀ n : ℕ,
      (Nat.card (Fin ((n + 1) ^ 5)) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4 := by
  rintro ⟨C, _hC, hbound⟩
  obtain ⟨n, hn⟩ := exists_nat_gt C
  have hb := hbound n
  simp only [Nat.card_eq_fintype_card, Fintype.card_fin, Nat.cast_pow,
    Nat.cast_add, Nat.cast_one] at hb
  have hp : 0 < (n + 1 : ℝ) ^ 4 := by positivity
  have he : (n + 1 : ℝ) ^ 5 = (n + 1 : ℝ) * (n + 1 : ℝ) ^ 4 := by ring
  rw [he] at hb
  have hc : (n + 1 : ℝ) ≤ C := (mul_le_mul_iff_left₀ hp).mp (by
    simpa only [mul_comm] using hb)
  linarith

/-- Two points can carry three multiplicity slots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a847d376525fd49cc0ec7cedd86dab2c4fca8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
