# IsTranscendenceBasis.lift_rank_eq_max_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4985ff3b-b060-57b5-7ae5-171a99329aca",
  "kind": "theorem",
  "lexical_name": "IsTranscendenceBasis.lift_rank_eq_max_lift",
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
  "slug": "istranscendencebasis-lift-rank-eq-max-lift--0902dcbed5e5fa78293e2069",
  "source": {
    "blob": "dc43ed725c1a1abd798d3b782f9cd4e9c2110e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0902dcbed5e5fa78293e20695f79cfa3b8d3250f94f87c3ca3bd369568af1ea6",
  "verification": {
    "reference": "docs/verification/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4985ff3b-b060-57b5-7ae5-171a99329aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTranscendenceBasis.lift_rank_eq_max_lift
    {F : Type u} {E : Type v} [Field F] [Field E] [Algebra F E]
    {ι : Type w} {x : ι → E} [Nonempty ι] (hx : IsTranscendenceBasis F x) :
    lift.{max u w} (Module.rank F E) = lift.{max v w} #F ⊔ lift.{max u v} #ι ⊔ ℵ₀ := by
  let K := IntermediateField.adjoin F (Set.range x)
  haveI : Algebra.IsAlgebraic K E := hx.isAlgebraic_field
  rw [← rank_mul_rank F K E, lift_mul, ← hx.1.aevalEquivField.toLinearEquiv.lift_rank_eq,
    MvRatFunc.rank_eq_max_lift, lift_max, lift_max, lift_lift, lift_lift, lift_aleph0]
  refine mul_eq_left le_sup_right ((lift_le.2 ((rank_le_card K E).trans
    (Algebra.IsAlgebraic.cardinalMk_le_max K E))).trans_eq ?_) (by simp [rank_pos.ne'])
  simp [K, ← lift_mk_eq'.2 ⟨hx.1.aevalEquivField.toEquiv⟩]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc43ed725c1a1abd798d3b782f9cd4e9c2110e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
