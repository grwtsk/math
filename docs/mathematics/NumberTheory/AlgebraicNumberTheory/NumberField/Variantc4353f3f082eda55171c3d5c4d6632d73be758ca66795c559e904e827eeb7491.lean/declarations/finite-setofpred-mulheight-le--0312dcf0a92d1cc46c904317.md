# finite_setOfPred_mulHeight₁_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e591b00-2079-94e3-1b40-a9a3abd0a0e1",
  "kind": "theorem",
  "lexical_name": "finite_setOfPred_mulHeight₁_le",
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
  "slug": "finite-setofpred-mulheight-le--0312dcf0a92d1cc46c904317",
  "source": {
    "blob": "f31734cef92e81cc9730af18839c0b50fcfc9003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 419,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0312dcf0a92d1cc46c90431752340524210680d720cd73f96d7003646790f1ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e591b00-2079-94e3-1b40-a9a3abd0a0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_setOfPred_mulHeight₁_le (B : ℝ) : {x : K | mulHeight₁ x ≤ B}.Finite := by
  have H : {x : K | mulHeight₁ x ≤ B} =
      ⋃ n : Fin ⌊B⌋₊, {x : K | IsIntegral ℤ ((n + 1) * x) ∧ mulHeight₁ x ≤ B} := by
    ext x : 1
    obtain ⟨n, hn₀, hn₁, hn⟩ := exists_nat_le_mulHeight₁ x
    simp only [Set.mem_ofPred_eq, Set.mem_iUnion, exists_and_right, iff_and_self]
    refine fun h ↦ ⟨⟨n - 1, by grind [Nat.le_floor <| hn₁.trans h]⟩, ?_⟩
    rwa [← Nat.cast_add_one, Nat.sub_one_add_one hn₀]
  rw [H]
  exact Set.finite_iUnion fun n ↦
    mod_cast finite_setOfPred_isIntegral_nat_mul_and_mulHeight₁_le K (Nat.zero_ne_add_one n).symm B

@[deprecated (since := "2026-07-09")]
alias finite_setOf_mulHeight₁_le := finite_setOfPred_mulHeight₁_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantc4353f3f082eda55171c3d5c4d6632d73be758ca66795c559e904e827eeb7491.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31734cef92e81cc9730af18839c0b50fcfc9003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
