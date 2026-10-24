# completeBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:449ef2f06553e1b2dc5c76b9ca4b348e1e94a80c7ed6e2d9659248d089f5840a",
  "kind": "def",
  "lexical_name": "completeBooleanAlgebra",
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
  "slug": "completebooleanalgebra--69fe490d936940fef97af560",
  "source": {
    "blob": "bb2be85d80a96aaf07ed1ca45de2ad6845a80f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 721,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69fe490d936940fef97af56081abb2f69016d9f93fc8f13d2e637c76cfbcdb7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:449ef2f06553e1b2dc5c76b9ca4b348e1e94a80c7ed6e2d9659248d089f5840a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def completeBooleanAlgebra : CompleteBooleanAlgebra α :=
  { IsSimpleOrder.completeLattice,
    IsSimpleOrder.booleanAlgebra with
    iInf_sup_le_sup_sInf := fun x s => by
      rcases eq_bot_or_eq_top x with (rfl | rfl)
      · simp only [bot_sup_eq, ← sInf_eq_iInf]
        exact le_rfl
      · simp only [top_le_iff, top_sup_eq, iInf_top, le_sInf_iff, le_refl]
    inf_sSup_le_iSup_inf := fun x s => by
      rcases eq_bot_or_eq_top x with (rfl | rfl)
      · simp only [le_bot_iff, sSup_eq_bot, bot_inf_eq, iSup_bot, le_refl]
      · simp only [top_inf_eq, ← sSup_eq_iSup]
        exact le_rfl }
#align is_simple_order.complete_boolean_algebra IsSimpleOrder.completeBooleanAlgebra

end IsSimpleOrder

namespace IsSimpleOrder

variable [CompleteLattice α] [IsSimpleOrder α]

--set_option default_priority 100 --Porting note: not supported, done for each instance individually

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2be85d80a96aaf07ed1ca45de2ad6845a80f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
