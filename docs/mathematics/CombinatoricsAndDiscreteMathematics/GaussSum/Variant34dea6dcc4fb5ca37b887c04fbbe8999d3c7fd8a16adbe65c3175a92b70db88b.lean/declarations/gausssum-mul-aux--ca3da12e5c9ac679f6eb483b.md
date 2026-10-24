# gaussSum_mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72464c2-96be-f404-740e-e8e549c2bc71",
  "kind": "theorem",
  "lexical_name": "gaussSum_mul_aux",
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
  "slug": "gausssum-mul-aux--ca3da12e5c9ac679f6eb483b",
  "source": {
    "blob": "267e66779716576095925c71501131a3d5f0b157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca3da12e5c9ac679f6eb483b3e9425f31b791f08dbff44350b9303b33446b2d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72464c2-96be-f404-740e-e8e549c2bc71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussSum_mul_aux {χ : MulChar R R'} (hχ : χ ≠ 1) (ψ : AddChar R R')
    (b : R) :
    ∑ a, χ (a * b⁻¹) * ψ (a - b) = ∑ c, χ c * ψ (b * (c - 1)) := by
  rcases eq_or_ne b 0 with hb | hb
  · -- case `b = 0`
    simp only [hb, inv_zero, mul_zero, MulChar.map_zero, zero_mul,
      Finset.sum_const_zero, map_zero_eq_one, mul_one, χ.sum_eq_zero_of_ne_one hχ]
  · -- case `b ≠ 0`
    refine (Fintype.sum_bijective _ (mulLeft_bijective₀ b hb) _ _ fun x ↦ ?_).symm
    rw [mul_assoc, mul_comm x, ← mul_assoc, mul_inv_cancel₀ hb, one_mul, mul_sub, mul_one]

/-- We have `gaussSum χ ψ * gaussSum χ⁻¹ ψ⁻¹ = Fintype.card R`
when `χ` is nontrivial and `ψ` is primitive (and `R` is a field). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267e66779716576095925c71501131a3d5f0b157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
