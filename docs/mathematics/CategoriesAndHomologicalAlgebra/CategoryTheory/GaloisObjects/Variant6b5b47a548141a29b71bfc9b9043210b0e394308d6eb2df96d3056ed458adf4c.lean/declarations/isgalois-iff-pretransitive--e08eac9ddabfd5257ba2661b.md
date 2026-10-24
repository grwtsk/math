# isGalois_iff_pretransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e6dfe50-535d-73fe-66df-46399a234ba4",
  "kind": "theorem",
  "lexical_name": "isGalois_iff_pretransitive",
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
  "slug": "isgalois-iff-pretransitive--e08eac9ddabfd5257ba2661b",
  "source": {
    "blob": "0f1224d00136de1615caf805d6e28dad5ab7fede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08eac9ddabfd5257ba2661bb2c12ae27ec75f6da4fe8f5b01ee7a2aa8a37a17",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e6dfe50-535d-73fe-66df-46399a234ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGalois_iff_pretransitive (X : C) [IsConnected X] :
    IsGalois X ↔ MulAction.IsPretransitive (Aut X) (F.obj X) := by
  rw [isGalois_iff_aux, Equiv.nonempty_congr <| quotientByAutTerminalEquivUniqueQuotient F X]
  exact (MulAction.pretransitive_iff_unique_quotient_of_nonempty (Aut X) (F.obj X)).symm

/-- If `X` is Galois, the quotient `X / Aut X` is terminal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1224d00136de1615caf805d6e28dad5ab7fede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
