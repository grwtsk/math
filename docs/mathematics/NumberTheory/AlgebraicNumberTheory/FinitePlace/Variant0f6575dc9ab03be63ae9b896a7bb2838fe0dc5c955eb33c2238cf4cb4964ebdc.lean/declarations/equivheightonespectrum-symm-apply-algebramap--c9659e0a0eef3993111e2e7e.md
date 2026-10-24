# equivHeightOneSpectrum_symm_apply_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72f3f55-d345-b57d-482a-cf3bb29c9ac1",
  "kind": "lemma",
  "lexical_name": "equivHeightOneSpectrum_symm_apply_algebraMap",
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
  "slug": "equivheightonespectrum-symm-apply-algebramap--c9659e0a0eef3993111e2e7e",
  "source": {
    "blob": "68aafb0457993edf375efd376cf30cdcb82c5e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 495,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9659e0a0eef3993111e2e7ef2a3ab0357758c2372a5a855d18c2c87a0e9b9d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72f3f55-d345-b57d-482a-cf3bb29c9ac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivHeightOneSpectrum_symm_apply_algebraMap
    (v : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 L)) [w.1.LiesOver v.1] (x : K) :
    FinitePlace.equivHeightOneSpectrum.symm w (algebraMap K L x) =
      FinitePlace.equivHeightOneSpectrum.symm v x ^
        (w.1.ramificationIdx (𝓞 K) * w.1.inertiaDeg (𝓞 K)) := by
  by_cases hx : x = 0
  · rw [hx, map_zero, map_zero, map_zero, zero_pow]
    exact (mul_pos (w.asIdeal.ramificationIdx_pos (𝓞 K)) (w.asIdeal.inertiaDeg_pos (𝓞 K))).ne'
  simp_rw [NumberField.FinitePlace.equivHeightOneSpectrum_symm_apply,
    FinitePlace.norm_embedding, HeightOneSpectrum.adicAbv_def]
  rw [← IsDedekindDomain.HeightOneSpectrum.valuation_liesOver L v, map_pow,
    Ideal.ramificationIdx'_eq_ramificationIdx v.1 w.1 v.ne_bot,
    WithZeroMulInt.toNNReal_neg_apply _ (by simpa), WithZeroMulInt.toNNReal_neg_apply _ (by simpa),
    ← Ideal.absNorm_pow_inertiaDeg v.1 w.1]
  simp only [Nat.cast_pow, NNReal.coe_zpow, ← zpow_natCast, ← zpow_mul]
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68aafb0457993edf375efd376cf30cdcb82c5e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
