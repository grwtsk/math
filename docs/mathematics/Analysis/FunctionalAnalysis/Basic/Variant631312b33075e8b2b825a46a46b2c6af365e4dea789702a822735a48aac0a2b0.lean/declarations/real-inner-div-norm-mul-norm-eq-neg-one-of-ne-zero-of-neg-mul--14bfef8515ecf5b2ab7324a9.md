# real_inner_div_norm_mul_norm_eq_neg_one_of_ne_zero_of_neg_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:326a62c6-57cf-5df6-1dfe-fc061ec319a8",
  "kind": "theorem",
  "lexical_name": "real_inner_div_norm_mul_norm_eq_neg_one_of_ne_zero_of_neg_mul",
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
  "slug": "real-inner-div-norm-mul-norm-eq-neg-one-of-ne-zero-of-neg-mul--14bfef8515ecf5b2ab7324a9",
  "source": {
    "blob": "1e054178ae8c4bb491b737cbc992baa2e17f0602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 714,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14bfef8515ecf5b2ab7324a9c13ceac4e8b5067ae3f743a12a0482e4d3dd8e5f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:326a62c6-57cf-5df6-1dfe-fc061ec319a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_inner_div_norm_mul_norm_eq_neg_one_of_ne_zero_of_neg_mul {x : F} {r : ℝ} (hx : x ≠ 0)
    (hr : r < 0) : ⟪x, r • x⟫_ℝ / (‖x‖ * ‖r • x‖) = -1 := by
  rw [real_inner_smul_self_right, norm_smul, Real.norm_eq_abs, ← mul_assoc ‖x‖, mul_comm _ |r|,
    mul_assoc, abs_of_neg hr, neg_mul, div_neg_eq_neg_div, div_self]
  exact mul_ne_zero hr.ne (mul_self_ne_zero.2 (norm_ne_zero_iff.2 hx))

variable (𝕜) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e054178ae8c4bb491b737cbc992baa2e17f0602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
