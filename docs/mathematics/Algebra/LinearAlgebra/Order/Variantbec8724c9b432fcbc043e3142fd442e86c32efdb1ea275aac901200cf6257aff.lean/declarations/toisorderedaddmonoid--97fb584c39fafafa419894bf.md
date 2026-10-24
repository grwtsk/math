# toIsOrderedAddMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b672a6481fed3a2d14ccfcea69fcb44411674ae85137e106b23e2433a2fe79b",
  "kind": "instance",
  "lexical_name": "toIsOrderedAddMonoid",
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
  "slug": "toisorderedaddmonoid--97fb584c39fafafa419894bf",
  "source": {
    "blob": "bf00f8bb20473d6847dc198ab10d2d18d56c20cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 28,
    "path": "GRWTSK/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97fb584c39fafafa419894bfda2c4d0765071734ab2adc51c39b1133d9683ff8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b672a6481fed3a2d14ccfcea69fcb44411674ae85137e106b23e2433a2fe79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toIsOrderedAddMonoid [AddCommMonoid M] [PartialOrder M] [IsOrderedAddMonoid M]
    [Module R M] (S : Submodule R M) :
    IsOrderedAddMonoid S :=
  Subtype.coe_injective.isOrderedAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

/-- A submodule of an ordered cancellative additive monoid is an ordered cancellative additive
monoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf00f8bb20473d6847dc198ab10d2d18d56c20cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
