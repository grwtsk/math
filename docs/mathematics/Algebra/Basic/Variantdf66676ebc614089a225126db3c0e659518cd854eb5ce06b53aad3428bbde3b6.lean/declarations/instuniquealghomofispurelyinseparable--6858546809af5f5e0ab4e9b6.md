# instUniqueAlgHomOfIsPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83aca30555854554efddaadbf69bf295c87657c76802e95b268c6fc573ef032d",
  "kind": "instance",
  "lexical_name": "instUniqueAlgHomOfIsPurelyInseparable",
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
  "slug": "instuniquealghomofispurelyinseparable--6858546809af5f5e0ab4e9b6",
  "source": {
    "blob": "cd8d4d354d43d44f9698709e394c1958393bf56e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 383,
    "path": "GRWTSK/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6858546809af5f5e0ab4e9b60958cfd4b62ce5a3fffdcde9a4c9d380ac400188",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83aca30555854554efddaadbf69bf295c87657c76802e95b268c6fc573ef032d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instUniqueAlgHomOfIsPurelyInseparable [IsPurelyInseparable F E] (L : Type w)
    [CommRing L] [IsReduced L] [Algebra F L] [Algebra E L] [IsScalarTower F E L] :
    Unique (E →ₐ[F] L) := uniqueOfSubsingleton (IsScalarTower.toAlgHom F E L)

/-- If `E / F` is purely inseparable, then `Field.Emb F E` has exactly one element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8d4d354d43d44f9698709e394c1958393bf56e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
