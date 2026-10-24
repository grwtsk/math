# lift_rank_add_lift_rank_le_rank_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04454ab3-cf9b-4737-8e47-b08891a5e44b",
  "kind": "theorem",
  "lexical_name": "lift_rank_add_lift_rank_le_rank_prod",
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
  "slug": "lift-rank-add-lift-rank-le-rank-prod--9e14e29a6250e3277376dff7",
  "source": {
    "blob": "a295c30feca565b8dc05cb538d57e5a01aa73cbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e14e29a6250e3277376dff74b0fef98ae763f7180855317ab86507916aa861c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04454ab3-cf9b-4737-8e47-b08891a5e44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_add_lift_rank_le_rank_prod [Nontrivial R] :
    lift.{v'} (Module.rank R M) + lift.{v} (Module.rank R M') ≤ Module.rank R (M × M') := by
  rw [← rank_ulift, ← rank_ulift]
  exact (rank_add_rank_le_rank_prod R _).trans_eq
    (ULift.moduleEquiv.prodCongr ULift.moduleEquiv).rank_eq

variable {R M M'}
variable [StrongRankCondition R] [Module.Free R M] [Module.Free R M'] [Module.Free R M₁]

open Module.Free

/-- If `M` and `M'` are free, then the rank of `M × M'` is
`(Module.rank R M).lift + (Module.rank R M').lift`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a295c30feca565b8dc05cb538d57e5a01aa73cbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
