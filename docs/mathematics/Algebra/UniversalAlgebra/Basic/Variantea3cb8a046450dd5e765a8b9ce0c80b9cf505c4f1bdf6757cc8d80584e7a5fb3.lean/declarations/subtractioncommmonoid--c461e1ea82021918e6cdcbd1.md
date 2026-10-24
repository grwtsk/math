# subtractionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9626f226e3c93f55f1be37f14dc4f9e17044f83051ba4c209331d86b422541cb",
  "kind": "instance",
  "lexical_name": "subtractionCommMonoid",
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
  "slug": "subtractioncommmonoid--c461e1ea82021918e6cdcbd1",
  "source": {
    "blob": "6c38733f1704f549f4110ac336724ebc33791615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 540,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c461e1ea82021918e6cdcbd1e17d4b99d7af427d8f541a24e7e44057dd2704c5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9626f226e3c93f55f1be37f14dc4f9e17044f83051ba4c209331d86b422541cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subtractionCommMonoid {α : Type u}
    [AddCommGroup α] [PartialOrder α] [IsOrderedAddMonoid α] :
    SubtractionCommMonoid (Interval α) where
  sub_eq_add_neg := by
    rintro (_ | s) (_ | t) <;> first | rfl | exact congr_arg WithBot.some (sub_eq_add_neg _ _)
  neg_neg := by rintro (_ | s) <;> first | rfl | exact congr_arg WithBot.some (neg_neg _)
  neg_add_rev := by
    rintro (_ | s) (_ | t) <;> first | rfl | exact congr_arg WithBot.some (neg_add_rev _ _)
  neg_eq_of_add := by
    rintro (_ | s) (_ | t) h <;>
      first
        | cases h
        | exact congr_arg WithBot.some (neg_eq_of_add_eq_zero_right <| WithBot.coe_injective h)
  -- TODO: use a better defeq
  zsmul := zsmulRec

@[to_additive existing Interval.subtractionCommMonoid]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c38733f1704f549f4110ac336724ebc33791615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
