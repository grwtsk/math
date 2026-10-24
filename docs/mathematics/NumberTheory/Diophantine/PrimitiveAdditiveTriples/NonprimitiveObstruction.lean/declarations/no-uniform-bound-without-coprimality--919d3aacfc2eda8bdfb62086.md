# no_uniform_bound_without_coprimality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5400e2c-e579-0a70-a4e7-ded605735909",
  "kind": "theorem",
  "lexical_name": "no_uniform_bound_without_coprimality",
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
  "slug": "no-uniform-bound-without-coprimality--919d3aacfc2eda8bdfb62086",
  "source": {
    "blob": "d0ab0ffa29af2b087aac45dbaea2bf53090da920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919d3aacfc2eda8bdfb620867db64a85e261b86fcea998c8d5ba46aac85c46e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5400e2c-e579-0a70-a4e7-ded605735909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_bound_without_coprimality (ε : ℝ) :
    ¬∃ K : ℝ, 0 < K ∧ ∀ a b c : ℕ, 0 < a → 0 < b → a + b = c →
      (c : ℝ) ≤ K * Real.rpow
        ((UniqueFactorizationMonoid.radical (a * b * c) : ℕ) : ℝ) (1 + ε) := by
  rintro ⟨K, _hK, h⟩
  obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt
    (K * Real.rpow 2 (1 + ε)) (by norm_num : (1 : ℝ) < 2)
  have hp : 0 < (2 : ℕ) ^ n := pow_pos (by decide) _
  have hh := h (2 ^ n) (2 ^ n) (2 ^ n + 2 ^ n) hp hp rfl
  rw [radical_doubled_power_two] at hh
  have hpR : 0 < (2 : ℝ) ^ n := pow_pos (by norm_num) _
  push_cast at hh
  norm_num at hh
  simp only [Real.rpow_eq_pow] at hn
  linarith

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ab0ffa29af2b087aac45dbaea2bf53090da920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
