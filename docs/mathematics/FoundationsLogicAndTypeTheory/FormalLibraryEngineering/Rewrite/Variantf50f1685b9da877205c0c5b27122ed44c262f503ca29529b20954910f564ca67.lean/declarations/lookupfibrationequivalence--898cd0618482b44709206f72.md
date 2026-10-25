# LookupFibrationEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec8eb5a574aa36913b2050a2f12e5d0e5b47f79146b174c7f73ae70c9708730f",
  "kind": "structure",
  "lexical_name": "LookupFibrationEquivalence",
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
  "slug": "lookupfibrationequivalence--898cd0618482b44709206f72",
  "source": {
    "blob": "0d5907706656147be4806e804a751718f60a170c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:898cd0618482b44709206f72df3a108f4ed17d8b53a85aa5e23d9f71bbba2496",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec8eb5a574aa36913b2050a2f12e5d0e5b47f79146b174c7f73ae70c9708730f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LookupFibrationEquivalence {α : Type}
    (source target : CompressedString α) where
  decode_eq : decode source = decode target
  path_forward :
    ∀ i : Fin (decode source).length,
      LookupPathAt source i →
        LookupPathAt target (transportIndex decode_eq i)
  path_backward :
    ∀ i : Fin (decode source).length,
      LookupPathAt target (transportIndex decode_eq i) →
        LookupPathAt source i
  forward_backward :
    ∀ (i : Fin (decode source).length) (path : LookupPathAt source i),
      path_backward i (path_forward i path) = path
  backward_forward :
    ∀ (i : Fin (decode source).length)
      (path : LookupPathAt target (transportIndex decode_eq i)),
      path_forward i (path_backward i path) = path

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d5907706656147be4806e804a751718f60a170c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
