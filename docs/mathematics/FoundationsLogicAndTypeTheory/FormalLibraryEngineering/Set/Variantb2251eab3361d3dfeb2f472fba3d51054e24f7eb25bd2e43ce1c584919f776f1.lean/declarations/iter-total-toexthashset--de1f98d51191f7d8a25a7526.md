# Iter.Total.toExtHashSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efa1612f39e073ab505c3fa20b2853689a692042ee2c6ef53ccaea7e8175a0bc",
  "kind": "def",
  "lexical_name": "Iter.Total.toExtHashSet",
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
  "slug": "iter-total-toexthashset--de1f98d51191f7d8a25a7526",
  "source": {
    "blob": "87d16cdcb8241208f364e0ce681b3e86e34e5554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de1f98d51191f7d8a25a7526fd527e59f3743bfd310323fab365a6893e5d1aad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efa1612f39e073ab505c3fa20b2853689a692042ee2c6ef53ccaea7e8175a0bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Iter.Total.toExtHashSet {α β : Type w} [BEq β] [Hashable β] [EquivBEq β]
    [LawfulHashable β] [Iterator α Id β] [Finite α Id] [IteratorLoop α Id Id]
    (it : Total (α := α) β) : ExtHashSet β :=
  it.it.toExtHashSet

docs_to_verso Iter.toExtHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α Id`,
the variant {lean}`it.ensureTermination.toTreeSet cmp` always terminates after finitely many steps.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d16cdcb8241208f364e0ce681b3e86e34e5554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
