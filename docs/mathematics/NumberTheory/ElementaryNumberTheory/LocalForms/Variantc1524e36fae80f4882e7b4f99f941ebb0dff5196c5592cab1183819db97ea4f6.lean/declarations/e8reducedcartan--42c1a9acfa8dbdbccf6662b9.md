# e8ReducedCartan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34d9a009f269216ae3bdd54a4f28b16b441e7c86f5f54bbd2119febc2460145b",
  "kind": "def",
  "lexical_name": "e8ReducedCartan",
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
  "slug": "e8reducedcartan--42c1a9acfa8dbdbccf6662b9",
  "source": {
    "blob": "19a3510b8400143f68a4aaf5836da1fefaeffbbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 18,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42c1a9acfa8dbdbccf6662b9287ef01eef0d5c480b56a8b50ea54d2d3a3c5ed8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34d9a009f269216ae3bdd54a4f28b16b441e7c86f5f54bbd2119febc2460145b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def e8ReducedCartan (m : ℕ) : Matrix (Fin 8) (Fin 8) (ZMod m) :=
  e8C.map (Int.castRingHom (ZMod m))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantc1524e36fae80f4882e7b4f99f941ebb0dff5196c5592cab1183819db97ea4f6.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19a3510b8400143f68a4aaf5836da1fefaeffbbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
