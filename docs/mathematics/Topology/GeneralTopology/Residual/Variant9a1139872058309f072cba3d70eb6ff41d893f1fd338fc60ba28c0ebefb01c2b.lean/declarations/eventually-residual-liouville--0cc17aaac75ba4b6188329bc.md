# eventually_residual_liouville

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09387b24-47b9-3fcf-cd7a-6db9e05d63e5",
  "kind": "theorem",
  "lexical_name": "eventually_residual_liouville",
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
  "slug": "eventually-residual-liouville--0cc17aaac75ba4b6188329bc",
  "source": {
    "blob": "3e0a1708f7d47f8ee39e99195da2d893e81415ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cc17aaac75ba4b6188329bc2d32c2d2bed9f0b6a69970704681515e7e24600e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09387b24-47b9-3fcf-cd7a-6db9e05d63e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_residual_liouville : ∀ᶠ x in residual ℝ, Liouville x := by
  rw [Filter.Eventually, setOf_liouville_eq_irrational_inter_iInter_iUnion]
  refine eventually_residual_irrational.and ?_
  refine residual_of_dense_Gδ ?_ (Rat.isDenseEmbedding_coe_real.dense.mono ?_)
  · exact .iInter fun n => IsOpen.isGδ <|
          isOpen_iUnion fun a => isOpen_iUnion fun b => isOpen_iUnion fun _hb => isOpen_ball
  · rintro _ ⟨r, rfl⟩
    simp only [mem_iInter, mem_iUnion]
    refine fun n => ⟨r.num * 2, r.den * 2, ?_, ?_⟩
    · have := r.pos; omega
    · convert @mem_ball_self ℝ _ (r : ℝ) _ _
      · push_cast
        -- Workaround for https://github.com/leanprover/lean4/pull/6438; this eliminates an
        -- `Expr.mdata` that would cause `norm_cast` to skip a numeral.
        rw [Eq.refl (2 : ℝ)]
        norm_cast
        simp [Rat.divInt_mul_right (two_ne_zero), Rat.mkRat_self]
      · refine one_div_pos.2 (pow_pos (Int.cast_pos.2 ?_) _)
        exact mul_pos (Int.natCast_pos.2 r.pos) zero_lt_two

/-- The set of Liouville numbers in dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Residual/Variant9a1139872058309f072cba3d70eb6ff41d893f1fd338fc60ba28c0ebefb01c2b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e0a1708f7d47f8ee39e99195da2d893e81415ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
