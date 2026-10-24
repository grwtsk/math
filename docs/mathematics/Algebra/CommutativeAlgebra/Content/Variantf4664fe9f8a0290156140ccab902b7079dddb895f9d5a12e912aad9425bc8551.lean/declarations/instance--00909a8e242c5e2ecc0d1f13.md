# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:560ff9b4c990167580cad245ea94f8d46ac3106df66454132a4a44a1260b43c9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--00909a8e242c5e2ecc0d1f13",
  "source": {
    "blob": "a3a41ef09146c209c6a293e4a6c3c4c037547ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 443,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00909a8e242c5e2ecc0d1f135f619dec4ea0a035b755adc5e638465b71d40a72",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:560ff9b4c990167580cad245ea94f8d46ac3106df66454132a4a44a1260b43c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance (priority := 100) normalizedGcdMonoid : NormalizedGCDMonoid R[X] :=
  letI := Classical.decEq R
  normalizedGCDMonoidOfExistsLCM fun p q => by
    rcases exists_primitive_lcm_of_isPrimitive p.isPrimitive_primPart
        q.isPrimitive_primPart with
      ⟨r, rprim, hr⟩
    refine ⟨C (lcm p.content q.content) * r, fun s => ?_⟩
    by_cases hs : s = 0
    · simp [hs]
    by_cases hpq : C (lcm p.content q.content) = 0
    · rw [C_eq_zero, lcm_eq_zero_iff, content_eq_zero_iff, content_eq_zero_iff] at hpq
      rcases hpq with (hpq | hpq) <;> simp [hpq, hs]
    iterate 3 rw [dvd_iff_content_dvd_content_and_primPart_dvd_primPart hs]
    rw [content_mul, rprim.content_eq_one, mul_one, content_C, normalize_lcm, lcm_dvd_iff,
      primPart_mul (mul_ne_zero hpq rprim.ne_zero), rprim.primPart_eq,
      (isUnit_primPart_C (lcm p.content q.content)).mul_left_dvd, ← hr s.primPart]
    tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a41ef09146c209c6a293e4a6c3c4c037547ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
