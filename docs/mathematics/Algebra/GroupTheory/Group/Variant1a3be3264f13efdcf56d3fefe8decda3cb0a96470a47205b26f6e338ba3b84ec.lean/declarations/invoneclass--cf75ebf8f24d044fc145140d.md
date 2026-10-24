# invOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee83cab6be2c409e14c58815bd6ebfce138d5e00699ab390ebb5f1046999e26",
  "kind": "abbrev",
  "lexical_name": "invOneClass",
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
  "slug": "invoneclass--cf75ebf8f24d044fc145140d",
  "source": {
    "blob": "4d34163cb2c0892c0caf98a14f52784ed03d662b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 220,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf75ebf8f24d044fc145140d29819c72b321f42a31cd8843216a9f4f8c25ae33",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cee83cab6be2c409e14c58815bd6ebfce138d5e00699ab390ebb5f1046999e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev invOneClass [InvOneClass β] [IsOneApply F α β] [IsInvApply F α β] :
    InvOneClass F :=
  DFunLike.coe_injective.invOneClass (fun (f : F) ↦ (f : α → β)) coe_one coe_inv

variable [Div F] [Pow F ℤ]

/-- A `FunLike` type is a `DivInvMonoid` if `β` is a `DivInvMonoid`. -/
@[to_additive subNegMonoid /-- A `FunLike` type is a `SubNegMonoid` if `β` is a `SubNegMonoid`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d34163cb2c0892c0caf98a14f52784ed03d662b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
