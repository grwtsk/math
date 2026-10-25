# StrictRestrictsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25015890efe4a5ec1916ca7a986893ae991fb86699e4595410b17ec230137517",
  "kind": "def",
  "lexical_name": "StrictRestrictsTo",
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
  "slug": "strictrestrictsto--fb724e7ed558c84fae5dec4c",
  "source": {
    "blob": "c4a9de8d66f7c0a25e8cb52501c7869622d9a939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb724e7ed558c84fae5dec4c8c2ac1ca713a4d3881e689bf90b9bb8fc1afece5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25015890efe4a5ec1916ca7a986893ae991fb86699e4595410b17ec230137517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StrictRestrictsTo {α : Type}
    {s : CompressedString α} {slice : Slice (decode s)}
    {cover : Cover slice}
    (global : LookupSection s slice)
    (family : StrictCompatibleFamily s cover) : Prop :=
  ∀ (piece : Slice (decode s)) (hpiece : piece ∈ cover.pieces)
    (i : Fin (decode s).length)
    (hpieceContains : Slice.containsFin piece i)
    (htargetContains : Slice.containsFin slice i),
    global i htargetContains =
      family.sectionAt piece hpiece i hpieceContains

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4a9de8d66f7c0a25e8cb52501c7869622d9a939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
