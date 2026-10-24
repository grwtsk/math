# leanDeclarationName_is_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d091d9c-f188-6b4b-2e1e-e047158ec859",
  "kind": "theorem",
  "lexical_name": "leanDeclarationName_is_canonical",
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
  "slug": "leandeclarationname-is-canonical--397d61c88da822d26ccba286",
  "source": {
    "blob": "ddbdb9e6cffd60bb9ac656973533b21840437fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeSectorObligation/Variant2d80ba256704e04bff0c3c30c626092fa86068b45af7afd281c8e914b088f428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397d61c88da822d26ccba286cdc9786749a5752bb5a7284626c8e84fa00df1a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeSectorObligation/Variant2d80ba256704e04bff0c3c30c626092fa86068b45af7afd281c8e914b088f428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d091d9c-f188-6b4b-2e1e-e047158ec859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leanDeclarationName_is_canonical
    (obligation : PrimeAsymptoticObligation) :
    obligation.leanDeclarationName =
      canonicalPrimorialSeparatorLeanDeclarationName :=
  rfl

end PrimeAsymptoticObligation

/-- Authoritative theorem-status component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeSectorObligation/Variant2d80ba256704e04bff0c3c30c626092fa86068b45af7afd281c8e914b088f428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeSectorObligation/Variant2d80ba256704e04bff0c3c30c626092fa86068b45af7afd281c8e914b088f428.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddbdb9e6cffd60bb9ac656973533b21840437fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
