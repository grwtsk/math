# absNorm_div_norm_eq_absNorm_div_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80cd1c75-491c-e91a-6361-4968088c68dc",
  "kind": "theorem",
  "lexical_name": "absNorm_div_norm_eq_absNorm_div_norm",
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
  "slug": "absnorm-div-norm-eq-absnorm-div-norm--a45db6032b80f03c6a56f374",
  "source": {
    "blob": "8fb29a182eb8b38d68f20182e56f2533ff5d0a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 53,
    "path": "GRWTSK/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a45db6032b80f03c6a56f374deba69ba9fea4d7f81fde789f4cc326e73721240",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80cd1c75-491c-e91a-6361-4968088c68dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absNorm_div_norm_eq_absNorm_div_norm {I : FractionalIdeal R⁰ K} (a : R⁰) (I₀ : Ideal R)
    (h : a • (I : Submodule R K) = Submodule.map (Algebra.linearMap R K) I₀) :
    (Ideal.absNorm I.num : ℚ) / |Algebra.norm ℤ (I.den : R)| =
      (Ideal.absNorm I₀ : ℚ) / |Algebra.norm ℤ (a : R)| := by
  rw [div_eq_div_iff]
  · replace h := congr_arg (I.den • ·) h
    have h' := congr_arg (a • ·) (den_mul_self_eq_num I)
    rw [smul_comm] at h
    rw [h, Submonoid.smul_def, Submonoid.smul_def, ← Submodule.ideal_span_singleton_smul,
      ← Submodule.ideal_span_singleton_smul, ← Submodule.map_smul'', ← Submodule.map_smul'',
      (LinearMap.map_injective ?_).eq_iff, smul_eq_mul, smul_eq_mul] at h'
    · simp_rw [← Nat.cast_natAbs, ← Nat.cast_mul, ← Ideal.absNorm_span_singleton]
      rw [← map_mul, ← map_mul, mul_comm, ← h', mul_comm]
    · exact LinearMap.ker_eq_bot.mpr (IsFractionRing.injective R K)
  all_goals simp [Algebra.norm_eq_zero_iff]

/-- The absolute norm of the fractional ideal `I` extending by multiplicativity the absolute norm
on (integral) ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb29a182eb8b38d68f20182e56f2533ff5d0a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
