# splits_X_sub_C_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:641eadc7-4f84-8d77-70eb-7753bec6cb81",
  "kind": "theorem",
  "lexical_name": "splits_X_sub_C_mul_iff",
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
  "slug": "splits-x-sub-c-mul-iff--f9062ea5096cd15163e9d35c",
  "source": {
    "blob": "0bb6e5015403e0b6ee1841e798625f679eaa30d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 439,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9062ea5096cd15163e9d35c61f80b52a0dabd5afc9f755dab316c7fb0167238",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641eadc7-4f84-8d77-70eb-7753bec6cb81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_X_sub_C_mul_iff {a : R} : Splits ((X - C a) * f) ↔ Splits f := by
  refine ⟨fun hf ↦ ?_, ((Splits.X_sub_C _).mul ·)⟩
  by_cases hf₀ : f = 0
  · aesop
  have := hf.eq_prod_roots
  rw [leadingCoeff_mul, leadingCoeff_X_sub_C, one_mul,
    roots_mul (mul_ne_zero (X_sub_C_ne_zero _) hf₀), roots_X_sub_C,
    Multiset.singleton_add, Multiset.map_cons, Multiset.prod_cons, mul_left_comm] at this
  rw [mul_left_cancel₀ (X_sub_C_ne_zero _) this]
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb6e5015403e0b6ee1841e798625f679eaa30d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
