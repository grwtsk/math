# tendsto_translation_number₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:120f7795-7b7c-dfaa-988c-9fd03dc5bfc5",
  "kind": "theorem",
  "lexical_name": "tendsto_translation_number₀'",
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
  "slug": "tendsto-translation-number--88d2e0cc202503ed20bfe966",
  "source": {
    "blob": "092e7da723d91029af270352b07150f63677e197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 675,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d2e0cc202503ed20bfe966921aef6ca5e95d1d11ac37d283d952252cfb7c59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:120f7795-7b7c-dfaa-988c-9fd03dc5bfc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_translation_number₀' :
    Tendsto (fun n : ℕ => (f ^ (n + 1) : CircleDeg1Lift) 0 / ((n : ℝ) + 1)) atTop (𝓝 <| τ f) := by
  refine
    tendsto_iff_dist_tendsto_zero.2 <|
      squeeze_zero (fun _ => dist_nonneg) (fun n => ?_)
        ((tendsto_const_div_atTop_nhds_zero_nat 1).comp (tendsto_add_atTop_nat 1))
  dsimp
  have : (0 : ℝ) < n + 1 := n.cast_add_one_pos
  rw [Real.dist_eq, div_sub' (ne_of_gt this), abs_div, ← Real.dist_eq, abs_of_pos this,
    Nat.cast_add_one, div_le_div_iff_of_pos_right this, ← Nat.cast_add_one]
  apply dist_pow_map_zero_mul_translationNumber_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092e7da723d91029af270352b07150f63677e197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
