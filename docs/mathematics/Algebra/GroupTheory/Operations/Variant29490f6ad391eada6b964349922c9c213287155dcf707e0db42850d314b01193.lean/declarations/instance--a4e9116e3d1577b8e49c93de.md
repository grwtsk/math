# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3b7894bb11b1d84274f77c41123a773b3676c1f95b8f43e536e0c30531bff82",
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
  "slug": "instance--a4e9116e3d1577b8e49c93de",
  "source": {
    "blob": "889f97dea8be98bfb53d0ed2a7ec849bada3d1ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 635,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4e9116e3d1577b8e49c93deaae12be425c076f6849eec12a535cafb98aaa63b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3b7894bb11b1d84274f77c41123a773b3676c1f95b8f43e536e0c30531bff82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 75) toOrderedCancelCommMonoid {M} [OrderedCancelCommMonoid M] {A : Type*}
    [SetLike A M] [SubmonoidClass A M] (S : A) : OrderedCancelCommMonoid S :=
  Subtype.coe_injective.orderedCancelCommMonoid (↑) rfl (fun _ _ => rfl) fun _ _ => rfl
#align submonoid_class.to_ordered_cancel_comm_monoid SubmonoidClass.toOrderedCancelCommMonoid
#align add_submonoid_class.to_ordered_cancel_add_comm_monoid AddSubmonoidClass.toOrderedCancelAddCommMonoid

-- Prefer subclasses of `Monoid` over subclasses of `SubmonoidClass`.
/-- A submonoid of a `LinearOrderedCancelCommMonoid` is a `LinearOrderedCancelCommMonoid`.
-/
@[to_additive AddSubmonoidClass.toLinearOrderedCancelAddCommMonoid
      "An `AddSubmonoid` of a `LinearOrderedCancelAddCommMonoid` is
      a `LinearOrderedCancelAddCommMonoid`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant29490f6ad391eada6b964349922c9c213287155dcf707e0db42850d314b01193.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889f97dea8be98bfb53d0ed2a7ec849bada3d1ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
