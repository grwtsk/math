# embedding_mul_absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdcf3980-0d41-32f6-dd37-81705417cbf7",
  "kind": "lemma",
  "lexical_name": "embedding_mul_absNorm",
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
  "slug": "embedding-mul-absnorm--5983970018f5d59c0a5df62e",
  "source": {
    "blob": "4b816975828aea26d5b9815ba628175d029a6e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 336,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5983970018f5d59c0a5df62ef6aefc808cc052c629b81acd87ea1affd6e86c3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdcf3980-0d41-32f6-dd37-81705417cbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma embedding_mul_absNorm (v : HeightOneSpectrum (𝓞 K)) {x : 𝓞 (WithVal (v.valuation K))}
    (h_x_nezero : x ≠ 0) : ‖embedding v x‖ * absNorm (v.maxPowDividing (span {x})) = 1 := by
  rw [maxPowDividing, map_pow, Nat.cast_pow, norm_def, adicAbv_def,
    WithZeroMulInt.toNNReal_neg_apply _
      ((v.valuation K).ne_zero_iff.mpr (coe_ne_zero_iff.mpr h_x_nezero))]
  push_cast
  rw [← zpow_natCast, ← zpow_add₀ <| mod_cast (zero_lt_one.trans (one_lt_absNorm_nnreal v)).ne']
  norm_cast
  rw [zpow_eq_one_iff_right₀ (Nat.cast_nonneg' _) (mod_cast (one_lt_absNorm_nnreal v).ne')]
  simp [valuation_of_algebraMap, intValuation_if_neg, h_x_nezero]

end IsDedekindDomain.HeightOneSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b816975828aea26d5b9815ba628175d029a6e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
