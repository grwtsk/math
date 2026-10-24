# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:694c795bdea58c3adbbaa67d144002dfcdb7f39a025a6a430a99f3d4897f070f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ae82adf5172f270324a11b6a",
  "source": {
    "blob": "31eb08fa7dd71ba585809bbee515aa38657add36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 519,
    "path": "GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae82adf5172f270324a11b6ae4b6a18cee8cd0286b917c87653d5d8c606a1308",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:694c795bdea58c3adbbaa67d144002dfcdb7f39a025a6a430a99f3d4897f070f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CompleteSpace A] : CompleteSpace 𝓜(𝕜, A) := by
  rw [completeSpace_iff_isComplete_range isUniformEmbedding_toProdMulOpposite.isUniformInducing]
  apply IsClosed.isComplete
  simp only [range_toProdMulOpposite, Set.setOf_forall]
  refine isClosed_iInter fun x => isClosed_iInter fun y => isClosed_eq ?_ ?_
  · exact
      ((ContinuousLinearMap.apply 𝕜 A _).continuous.comp <| continuous_unop.comp continuous_snd).mul
        continuous_const
  exact continuous_const.mul ((ContinuousLinearMap.apply 𝕜 A _).continuous.comp continuous_fst)

variable [StarRing A] [CStarRing A]

/-- For `a : 𝓜(𝕜, A)`, the norms of `a.fst` and `a.snd` coincide, and hence these
also coincide with `‖a‖` which is `max (‖a.fst‖) (‖a.snd‖)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31eb08fa7dd71ba585809bbee515aa38657add36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
