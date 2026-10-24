# ideal_triple_scale_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08e690f8-7e7c-32a7-cf0e-ac1832db5e99",
  "kind": "lemma",
  "lexical_name": "ideal_triple_scale_bounds",
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
  "slug": "ideal-triple-scale-bounds--f2ba27e8d2fb17b8db1c5f97",
  "source": {
    "blob": "f0607296cd9f472e2ab7fc9db1239b20c929bacf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2ba27e8d2fb17b8db1c5f97ddf0aa6dde6b50c969582d61f7a0523adaf1227e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/CompactNormSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08e690f8-7e7c-32a7-cf0e-ac1832db5e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ideal_triple_scale_bounds (I J H : Ideal S) (hI : I≠0) (hJ : J≠0) (hH : H≠0) :
    (Ideal.absNorm I:ℝ)≤(Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3 ∧
    (Ideal.absNorm J:ℝ)≤(Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3 ∧
    (Ideal.absNorm H:ℝ)≤(Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3 := by
  have ha := norm_at_least_one I hI
  have hb := norm_at_least_one J hJ
  have hc := norm_at_least_one H hH
  have ha0 : (0:ℝ)≤Ideal.absNorm I := Nat.cast_nonneg _
  have hb0 : (0:ℝ)≤Ideal.absNorm J := Nat.cast_nonneg _
  have hc0 : (0:ℝ)≤Ideal.absNorm H := Nat.cast_nonneg _
  have hb3 : (1:ℝ)≤(Ideal.absNorm J:ℝ)^3 := one_le_pow₀ hb
  have hc3 : (1:ℝ)≤(Ideal.absNorm H:ℝ)^3 := one_le_pow₀ hc
  constructor
  · calc (Ideal.absNorm I:ℝ)=(Ideal.absNorm I:ℝ)*1*1 := by simp
         _ ≤ _ := by gcongr
  constructor
  · calc (Ideal.absNorm J:ℝ)≤(Ideal.absNorm J:ℝ)^3 := le_self_pow₀ hb (by decide)
         _ = 1*(Ideal.absNorm J:ℝ)^3*1 := by simp
         _ ≤ _ := by gcongr
  · calc (Ideal.absNorm H:ℝ)≤(Ideal.absNorm H:ℝ)^3 := le_self_pow₀ hc (by decide)
         _ = 1*1*(Ideal.absNorm H:ℝ)^3 := by simp
         _ ≤ _ := by gcongr

/-- Actual ideal-triple finite support from compact W, positive scale, zero-ideal cancellation,
and window vanishing. Bounded-norm ideal finiteness is proved by the actual Mathlib supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/CompactNormSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0607296cd9f472e2ab7fc9db1239b20c929bacf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
