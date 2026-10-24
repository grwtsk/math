# Multiplicative.canonicallyOrderedMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d439f1c2804777b8ebb48c756a3be1e0c13531f6fbfba772794baa13f95f015f",
  "kind": "instance",
  "lexical_name": "Multiplicative.canonicallyOrderedMul",
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
  "slug": "multiplicative-canonicallyorderedmul--f3e49bab0d46235729553d8c",
  "source": {
    "blob": "c0b2d5ef6548ed20e802e102563adb6edc8fe8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3e49bab0d46235729553d8c989541cfc383fed87aacc0c25eb6021c58d54f2b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d439f1c2804777b8ebb48c756a3be1e0c13531f6fbfba772794baa13f95f015f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Multiplicative.canonicallyOrderedMul
    [AddMonoid α] [PartialOrder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedMul (Multiplicative α) where
  le_self_mul _ _ := le_self_add (α := α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b2d5ef6548ed20e802e102563adb6edc8fe8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
