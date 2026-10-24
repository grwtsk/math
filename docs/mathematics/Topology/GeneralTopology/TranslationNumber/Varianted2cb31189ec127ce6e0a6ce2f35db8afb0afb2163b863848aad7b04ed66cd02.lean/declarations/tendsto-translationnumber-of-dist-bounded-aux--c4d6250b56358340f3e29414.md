# tendsto_translationNumber_of_dist_bounded_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82b52e1d-1a5a-02db-297d-ce288fa80513",
  "kind": "theorem",
  "lexical_name": "tendsto_translationNumber_of_dist_bounded_aux",
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
  "slug": "tendsto-translationnumber-of-dist-bounded-aux--c4d6250b56358340f3e29414",
  "source": {
    "blob": "2189cde89d38a940c68fec7aac9732defd94ff80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 605,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d6250b56358340f3e29414cb7e95c21c0f3676897d2f9c44cf4166504f8a0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82b52e1d-1a5a-02db-297d-ce288fa80513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_translationNumber_of_dist_bounded_aux (x : ℕ → ℝ) (C : ℝ)
    (H : ∀ n : ℕ, dist ((f ^ n) 0) (x n) ≤ C) :
    Tendsto (fun n : ℕ => x (2 ^ n) / 2 ^ n) atTop (𝓝 <| τ f) := by
  apply f.tendsto_translationNumber_aux.congr_dist (squeeze_zero (fun _ => dist_nonneg) _ _)
  · exact fun n => C / 2 ^ n
  · intro n
    have : 0 < (2 ^ n : ℝ) := pow_pos zero_lt_two _
    convert! (div_le_div_iff_of_pos_right this).2 (H (2 ^ n)) using 1
    rw [transnumAuxSeq, Real.dist_eq, ← sub_div, abs_div, abs_of_pos this, Real.dist_eq]
  · exact mul_zero C ▸ tendsto_const_nhds.mul <| tendsto_inv_atTop_zero.comp <|
      tendsto_pow_atTop_atTop_of_one_lt one_lt_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2189cde89d38a940c68fec7aac9732defd94ff80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
