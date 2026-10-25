# encode_decode_shell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08b294f301dbee598cf17c05c5ab6fc24a9ca391",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f47d8814-fe0c-38a1-98c7-38a0405f530e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b38a3c9-e25e-6078-267c-7b4583159c80",
  "kind": "theorem",
  "lexical_name": "encode_decode_shell",
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
  "slug": "encode-decode-shell--63c785a7077ba899c6cbedbc",
  "source": {
    "blob": "08b294f301dbee598cf17c05c5ab6fc24a9ca391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63c785a7077ba899c6cbedbcebd8d8ee7a3219878e42fc84047aa4020dd0be28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b38a3c9-e25e-6078-267c-7b4583159c80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encode_decode_shell
    {s : GridShape}
    (E : ShellEncoded s) :
    encodeShell (decodeShell E) rfl rfl = E := by
  apply ShellEncoded.ext
  · intro i j
    simp only [encodeShell, matrixCenter]
    calc
      (decodeShell E).A
          (centerCell ((i, j) : Cell s)).1
          (centerCell ((i, j) : Cell s)).2
          =
        (decodeShell E).get
          (centerCell ((i, j) : Cell s)).1
          (centerCell ((i, j) : Cell s)).2 := rfl
      _ = decodedEntry E (centerCell ((i, j) : Cell s)) :=
        get_decodeShell E
          (centerCell ((i, j) : Cell s)).1
          (centerCell ((i, j) : Cell s)).2
      _ = E.center i j := decodedEntry_center E ((i, j) : Cell s)
  · intro c
    simp only [encodeShell, matrixShell]
    calc
      (decodeShell E).A c.1.1 c.1.2 =
        (decodeShell E).get c.1.1 c.1.2 := rfl
      _ = decodedEntry E c.1 :=
        get_decodeShell E c.1.1 c.1.2
      _ = E.shell.value c := decodedEntry_shell E c

end Expansion
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b294f301dbee598cf17c05c5ab6fc24a9ca391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
