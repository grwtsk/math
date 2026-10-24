# existsAddOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20cc41b337c36f7b5832bcc327543050fc18059964d48614232e0a37757ae657",
  "kind": "instance",
  "lexical_name": "existsAddOfLE",
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
  "slug": "existsaddofle--179835d0561f5ae72c0e98df",
  "source": {
    "blob": "e0b3c45d5de34e2907d577932f2997eadf315227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 324,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:179835d0561f5ae72c0e98dfa87167b34e546337850e7d305083fdb1e4d3fe2d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20cc41b337c36f7b5832bcc327543050fc18059964d48614232e0a37757ae657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance existsAddOfLE [LE α] [Add α] [ExistsAddOfLE α] : ExistsAddOfLE (WithTop α) :=
  ⟨fun {a} {b} =>
    match a, b with
    | ⊤, ⊤ => by simp
    | (a : α), ⊤ => fun _ => ⟨⊤, rfl⟩
    | (a : α), (b : α) => fun h => by
      obtain ⟨c, rfl⟩ := exists_add_of_le (WithTop.coe_le_coe.1 h)
      exact ⟨c, rfl⟩
    | ⊤, (b : α) => fun h => (not_top_le_coe _ h).elim⟩

-- instance canonicallyOrderedAddCommMonoid [CanonicallyOrderedAddCommMonoid α] :
--     CanonicallyOrderedAddCommMonoid (WithTop α) :=
--   { WithTop.orderBot, WithTop.orderedAddCommMonoid, WithTop.existsAddOfLE with
--     le_self_add := fun a b =>
--       match a, b with
--       | ⊤, ⊤ => le_rfl
--       | (a : α), ⊤ => le_top
--       | (a : α), (b : α) => WithTop.coe_le_coe.2 le_self_add
--       | ⊤, (b : α) => le_rfl }
--
-- instance [CanonicallyLinearOrderedAddCommMonoid α] :
--     CanonicallyLinearOrderedAddCommMonoid (WithTop α) :=
--   { WithTop.canonicallyOrderedAddCommMonoid, WithTop.linearOrder with }

@[to_additive (attr := simp) top_pos]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0b3c45d5de34e2907d577932f2997eadf315227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
