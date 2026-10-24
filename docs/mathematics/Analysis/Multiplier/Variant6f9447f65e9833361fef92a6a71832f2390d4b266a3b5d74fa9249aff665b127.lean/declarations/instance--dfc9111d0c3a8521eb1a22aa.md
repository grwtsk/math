# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8ddd9063709e7eb21a9edcc7a58161a29db1ea54a94409afd481403178454eb",
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
  "slug": "instance--dfc9111d0c3a8521eb1a22aa",
  "source": {
    "blob": "3e2bc1a8eb78dadab424bac2091b5a85c6e29dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 585,
    "path": "GRWTSK/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfc9111d0c3a8521eb1a22aa72a15ff4af0e552b0659b199b0b9027732054608",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8ddd9063709e7eb21a9edcc7a58161a29db1ea54a94409afd481403178454eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CompleteSpace A] : CompleteSpace 𝓜(𝕜, A) := by
  rw [completeSpace_iff_isComplete_range uniformEmbedding_toProdMulOpposite.toUniformInducing]
  apply IsClosed.isComplete
  simp only [range_toProdMulOpposite, Set.setOf_forall]
  refine' isClosed_iInter fun x => isClosed_iInter fun y => isClosed_eq _ _
  exact
    ((ContinuousLinearMap.apply 𝕜 A _).continuous.comp <| continuous_unop.comp continuous_snd).mul
      continuous_const
  exact continuous_const.mul ((ContinuousLinearMap.apply 𝕜 A _).continuous.comp continuous_fst)

variable [StarRing A] [CstarRing A]

/-- For `a : 𝓜(𝕜, A)`, the norms of `a.fst` and `a.snd` coincide, and hence these
also coincide with `‖a‖` which is `max (‖a.fst‖) (‖a.snd‖)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e2bc1a8eb78dadab424bac2091b5a85c6e29dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
