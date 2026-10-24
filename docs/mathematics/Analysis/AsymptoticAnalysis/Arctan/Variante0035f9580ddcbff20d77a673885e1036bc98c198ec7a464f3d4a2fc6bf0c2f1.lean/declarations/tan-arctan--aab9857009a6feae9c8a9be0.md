# tan_arctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ba15052-d77d-dc45-3383-c552da90ed7e",
  "kind": "theorem",
  "lexical_name": "tan_arctan",
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
  "slug": "tan-arctan--aab9857009a6feae9c8a9be0",
  "source": {
    "blob": "af4b37d5d6087edd5796971c96aa60c6f74dbae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 34,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aab9857009a6feae9c8a9be0fac91cd0de31260ffba328fdcab95c0ed87ac0f2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba15052-d77d-dc45-3383-c552da90ed7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_arctan {z : ℂ} (h₁ : z ≠ I) (h₂ : z ≠ -I) : tan (arctan z) = z := by
  unfold tan sin cos
  rw [div_div_eq_mul_div, div_mul_cancel₀ _ two_ne_zero, ← div_mul_eq_mul_div,
    -- multiply top and bottom by `exp (arctan z * I)`
    ← mul_div_mul_right _ _ (exp_ne_zero (arctan z * I)), sub_mul, add_mul,
    ← exp_add, neg_mul, neg_add_cancel, exp_zero, ← exp_add, ← two_mul]
  have z₁ : 1 + z * I ≠ 0 := by
    contrapose! h₁
    rw [add_eq_zero_iff_neg_eq, ← div_eq_iff I_ne_zero, div_I, neg_one_mul, neg_neg] at h₁
    exact h₁.symm
  have z₂ : 1 - z * I ≠ 0 := by
    contrapose! h₂
    rw [sub_eq_zero, ← div_eq_iff I_ne_zero, div_I, one_mul] at h₂
    exact h₂.symm
  have key : exp (2 * (arctan z * I)) = (1 + z * I) / (1 - z * I) := by
    rw [arctan, ← mul_rotate, ← mul_assoc,
      show 2 * (I * (-I / 2)) = 1 by field_simp, one_mul, exp_log]
    · exact div_ne_zero z₁ z₂
  -- multiply top and bottom by `1 - z * I`
  rw [key, ← mul_div_mul_right _ _ z₂, sub_mul, add_mul, div_mul_cancel₀ _ z₂, one_mul,
    show _ / _ * I = -(I * I) * z by ring, I_mul_I, neg_neg, one_mul]

/-- `cos z` is nonzero when the bounds in `arctan_tan` are met (`z` lies in the vertical strip
`-π / 2 < z.re < π / 2` and `z ≠ π / 2`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4b37d5d6087edd5796971c96aa60c6f74dbae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
