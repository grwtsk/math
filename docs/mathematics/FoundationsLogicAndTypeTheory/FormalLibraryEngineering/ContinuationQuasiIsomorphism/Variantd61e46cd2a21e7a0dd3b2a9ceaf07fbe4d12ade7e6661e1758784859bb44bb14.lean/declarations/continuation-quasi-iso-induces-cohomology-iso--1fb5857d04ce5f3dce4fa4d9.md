# continuation_quasi_iso_induces_cohomology_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83610e83-9e58-6580-365f-46fa60667e57",
  "kind": "theorem",
  "lexical_name": "continuation_quasi_iso_induces_cohomology_iso",
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
  "slug": "continuation-quasi-iso-induces-cohomology-iso--1fb5857d04ce5f3dce4fa4d9",
  "source": {
    "blob": "9f5768b606db342be3a84dae203ab260fa677cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuationQuasiIsomorphism/Variantd61e46cd2a21e7a0dd3b2a9ceaf07fbe4d12ade7e6661e1758784859bb44bb14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb5857d04ce5f3dce4fa4d950e235e53adf91df9a85987af30131c8c48da029",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuationQuasiIsomorphism/Variantd61e46cd2a21e7a0dd3b2a9ceaf07fbe4d12ade7e6661e1758784859bb44bb14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83610e83-9e58-6580-365f-46fa60667e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuation_quasi_iso_induces_cohomology_iso
    {C : Folder.CanonicalPath.AnalyticContinuationMap}
    (Q : Folder.CanonicalPath.ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Folder.CanonicalPath.continuation_quasi_iso_induces_cohomology_iso Q

end CanonicalPath
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuationQuasiIsomorphism/Variantd61e46cd2a21e7a0dd3b2a9ceaf07fbe4d12ade7e6661e1758784859bb44bb14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuationQuasiIsomorphism/Variantd61e46cd2a21e7a0dd3b2a9ceaf07fbe4d12ade7e6661e1758784859bb44bb14.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5768b606db342be3a84dae203ab260fa677cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
