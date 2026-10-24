# declaration_is_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "645544bd275b5bfdc964dc323888cb64e87888bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed5af8ab-7838-1e15-75d9-9e673c8cc514",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c761808-1eb6-8125-e2cc-19f684d38646",
  "kind": "theorem",
  "lexical_name": "declaration_is_canonical",
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
  "slug": "declaration-is-canonical--c4b04c2c5ed5b3bb2fcb962e",
  "source": {
    "blob": "645544bd275b5bfdc964dc323888cb64e87888bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeSectorObligation/Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4b04c2c5ed5b3bb2fcb962e3d29d43f90580a3dafe89a5de8a4ba3139d4d03b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeSectorObligation/Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c761808-1eb6-8125-e2cc-19f684d38646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem declaration_is_canonical
    {obligation : PrimeAsymptoticObligation}
    (certificate :
      AcceptedKernelSeparatorCertificate obligation) :
    certificate.kernel.declaration.declarationName =
      canonicalPrimorialSeparatorLeanDeclarationName :=
  certificate.declarationName_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeSectorObligation/Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeSectorObligation/Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `645544bd275b5bfdc964dc323888cb64e87888bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
