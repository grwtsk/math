# logarithmic_model_full_moment_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d78480c5-fa38-d409-8753-d648167116f0",
  "kind": "theorem",
  "lexical_name": "logarithmic_model_full_moment_error",
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
  "slug": "logarithmic-model-full-moment-error--57d7a847619871ff6a1c2e42",
  "source": {
    "blob": "39e2d65db16f20ed88923da4233d4cf3ca32c681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 112,
    "path": "GRWTSK/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d7a847619871ff6a1c2e429918eee47158d7f1983b34aeea8fd383fc863e74",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d78480c5-fa38-d409-8753-d648167116f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_model_full_moment_error {A : ℝ} (hA : 1 ≤ A) :
    |logarithmicModelReadout A - (phase * exponent * complexTestMoment A mode ^ 2).re| ≤ 4 := by
  have hs := complex_full_moment_retains_halves hA mode
  have he : logarithmicModelReadout A - (phase * exponent * complexTestMoment A mode ^ 2).re =
      (complexHalfMoment A (1 / 2)).re - (phase * exponent * complexHalfMoment A (-mode)).re := by
    unfold logarithmicModelReadout
    rw [hs]
    simp only [mul_add, Complex.add_re]
    ring
  have hI := (Complex.abs_re_le_norm (complexHalfMoment A (1 / 2))).trans
    (complex_positive_pole_half_price hA)
  have hn : ‖complexHalfMoment A (-mode)‖ ≤ 4 :=
    complex_negative_half_price hA (by norm_num : (0 : ℝ) < 4) (by norm_num [mode])
  have hosc : |(phase * exponent * complexHalfMoment A (-mode)).re| ≤ 2 := by
    calc
      _ ≤ ‖phase * exponent * complexHalfMoment A (-mode)‖ := Complex.abs_re_le_norm _
      _ = (1 / 2) * ‖complexHalfMoment A (-mode)‖ := by rw [norm_mul, literal_phase_amplitude]
      _ ≤ 2 := by linarith
  rw [he]
  have ht := abs_sub_le (complexHalfMoment A (1 / 2)).re 0
    (phase * exponent * complexHalfMoment A (-mode)).re
  simp only [sub_zero, zero_sub, abs_neg] at ht
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridTransformReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e2d65db16f20ed88923da4233d4cf3ca32c681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
