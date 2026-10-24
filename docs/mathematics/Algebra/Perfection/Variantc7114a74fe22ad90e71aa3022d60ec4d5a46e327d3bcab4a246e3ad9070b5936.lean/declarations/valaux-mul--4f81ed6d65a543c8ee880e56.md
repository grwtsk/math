# valAux_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3477535-f749-0f56-18d5-7a82114aff97",
  "kind": "theorem",
  "lexical_name": "valAux_mul",
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
  "slug": "valaux-mul--4f81ed6d65a543c8ee880e56",
  "source": {
    "blob": "a9f86788f89f3faaff590ec0fb4a41110e75ac4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 574,
    "path": "GRWTSK/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f81ed6d65a543c8ee880e562cd0c39a52e5c90c11039f4a81194f7eb1316419",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3477535-f749-0f56-18d5-7a82114aff97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valAux_mul (f g : PreTilt K v O hv p) :
    valAux K v O hv p (f * g) = valAux K v O hv p f * valAux K v O hv p g := by
  by_cases hf : f = 0
  · rw [hf, zero_mul, valAux_zero, zero_mul]
  by_cases hg : g = 0
  · rw [hg, mul_zero, valAux_zero, mul_zero]
  obtain ⟨m, hm⟩ : ∃ n, coeff _ _ n f ≠ 0 := not_forall.1 fun h => hf <| Perfection.ext h
  obtain ⟨n, hn⟩ : ∃ n, coeff _ _ n g ≠ 0 := not_forall.1 fun h => hg <| Perfection.ext h
  replace hm := coeff_ne_zero_of_le hm (le_max_left m n)
  replace hn := coeff_ne_zero_of_le hn (le_max_right m n)
  have hfg : coeff _ _ (max m n + 1) (f * g) ≠ 0 := by
    rw [RingHom.map_mul]
    refine' ModP.mul_ne_zero_of_pow_p_ne_zero _ _
    · rw [← RingHom.map_pow, coeff_pow_p f]; assumption
    · rw [← RingHom.map_pow, coeff_pow_p g]; assumption
  rw [valAux_eq (coeff_add_ne_zero hm 1), valAux_eq (coeff_add_ne_zero hn 1), valAux_eq hfg]
  rw [RingHom.map_mul] at hfg ⊢; rw [ModP.preVal_mul hfg, mul_pow]
#align pre_tilt.val_aux_mul PreTilt.valAux_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f86788f89f3faaff590ec0fb4a41110e75ac4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
