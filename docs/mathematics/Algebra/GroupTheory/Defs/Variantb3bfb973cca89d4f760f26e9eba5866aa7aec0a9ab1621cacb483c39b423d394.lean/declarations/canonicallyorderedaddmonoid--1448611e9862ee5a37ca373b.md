# canonicallyOrderedAddMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e8bb6de12f056c4d1e984a41bcdc430dd0717de1349d694836b1470f5727ff",
  "kind": "instance",
  "lexical_name": "canonicallyOrderedAddMonoid",
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
  "slug": "canonicallyorderedaddmonoid--1448611e9862ee5a37ca373b",
  "source": {
    "blob": "7618953030baaed4a19107335fa4b412c97625c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1448611e9862ee5a37ca373b7069c2c16e0a69992a72f7a9c2043e4eb844c867",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e8bb6de12f056c4d1e984a41bcdc430dd0717de1349d694836b1470f5727ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance canonicallyOrderedAddMonoid [CanonicallyOrderedAddMonoid α] :
    CanonicallyOrderedAddMonoid (WithZero α) :=
  { WithZero.orderBot,
    WithZero.orderedAddCommMonoid _root_.zero_le,
    WithZero.existsAddOfLE with
    le_self_add := fun a b => by
      induction a using WithZero.cases_on
      · exact bot_le
      induction b using WithZero.cases_on
      · exact le_rfl
      · exact WithZero.coe_le_coe.2 le_self_add }
#align with_zero.canonically_ordered_add_monoid WithZero.canonicallyOrderedAddMonoid

end CanonicallyOrderedMonoid

section CanonicallyLinearOrderedMonoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7618953030baaed4a19107335fa4b412c97625c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
