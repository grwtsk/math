# LFunction_isBigO_horizontal_of_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2bc0c1f-74b0-e9e1-2382-87fdfb0c8f5e",
  "kind": "lemma",
  "lexical_name": "LFunction_isBigO_horizontal_of_eq_zero",
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
  "slug": "lfunction-isbigo-horizontal-of-eq-zero--225c93213d4be70059f989a6",
  "source": {
    "blob": "a231254a2c4cd89d6baf8133f9e55e4267fa5eec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 346,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:225c93213d4be70059f989a6f2991e605a8b54a1a42cf401a41e7f60cdb7cfdb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2bc0c1f-74b0-e9e1-2382-87fdfb0c8f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LFunction_isBigO_horizontal_of_eq_zero {y : ℝ} (hy : y ≠ 0 ∨ χ ≠ 1)
    (h : LFunction χ (1 + I * y) = 0) :
    (fun x : ℝ ↦ LFunction χ (1 + x + I * y)) =O[𝓝[>] 0] fun x : ℝ ↦ (x : ℂ) := by
  simp_rw [add_comm (1 : ℂ), add_assoc]
  have := (χ.differentiableAt_LFunction _ <| one_add_I_mul_ne_one_or χ hy).hasDerivAt
  rw [← zero_add (1 + _)] at this
  simpa only [zero_add, h, sub_zero]
    using (Complex.isBigO_comp_ofReal_nhds
      (this.comp_add_const 0 _).differentiableAt.isBigO_sub) |>.mono nhdsWithin_le_nhds

-- intermediate statement, special case of the next theorem
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a231254a2c4cd89d6baf8133f9e55e4267fa5eec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
