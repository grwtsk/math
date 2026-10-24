# putFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63bc2130848d9f99eba322a0c9437b7c4ffa10ecab4996ca0691138b3118f238",
  "kind": "def",
  "lexical_name": "putFiles",
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
  "slug": "putfiles--2212dc9bcd86e322204fd9d2",
  "source": {
    "blob": "dfdb217859a5b3a8a3e4c48c154231aec8aeb2f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variante1c3c4db07706cf47e7ed963bb7b8ab38633069b4cd2026f8231c194a229c2f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2212dc9bcd86e322204fd9d297e5536a7547f73efa7e8f77a6de4d55d4af9bab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variante1c3c4db07706cf47e7ed963bb7b8ab38633069b4cd2026f8231c194a229c2f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63bc2130848d9f99eba322a0c9437b7c4ffa10ecab4996ca0691138b3118f238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def putFiles (fileNames : Array String) (overwrite : Bool) (token : String) : IO Unit := do
  let size := fileNames.size
  if size > 0 then
    IO.FS.writeFile IO.CURLCFG (← mkPutConfigContent fileNames token)
    IO.println s!"Attempting to upload {size} file(s)"
    if overwrite then
      discard $ IO.runCurl #["-X", "PUT", "-H", "x-ms-blob-type: BlockBlob", "--parallel",
        "-K", IO.CURLCFG.toString]
    else
      discard $ IO.runCurl #["-X", "PUT", "-H", "x-ms-blob-type: BlockBlob",
        "-H", "If-None-Match: *", "--parallel", "-K", IO.CURLCFG.toString]
    IO.FS.removeFile IO.CURLCFG
  else IO.println "No files to upload"

end Put

section Commit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variante1c3c4db07706cf47e7ed963bb7b8ab38633069b4cd2026f8231c194a229c2f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variante1c3c4db07706cf47e7ed963bb7b8ab38633069b4cd2026f8231c194a229c2f5.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfdb217859a5b3a8a3e4c48c154231aec8aeb2f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
