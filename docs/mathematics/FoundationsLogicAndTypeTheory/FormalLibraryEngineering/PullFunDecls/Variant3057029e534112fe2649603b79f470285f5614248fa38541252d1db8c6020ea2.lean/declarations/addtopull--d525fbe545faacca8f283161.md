# addToPull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:242b64d51bebf66d73ef94ec58b5e08b2e27b19d86249cac5c4023eafceba27b",
  "kind": "def",
  "lexical_name": "addToPull",
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
  "slug": "addtopull--d525fbe545faacca8f283161",
  "source": {
    "blob": "9a761dd28b718b7fcb7103088b7348ee05f78d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d525fbe545faacca8f283161b3a1cfb805ca0c81e6bbc50d79eddceae90c5ad5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:242b64d51bebf66d73ef94ec58b5e08b2e27b19d86249cac5c4023eafceba27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def addToPull (isFun : Bool) (decl : FunDecl .pure) : PullM Unit := do
  let saved ← get
  modify fun _ => []
  let mut value ← pull decl.value
  value ← attachParamsDeps decl.params value
  if isFun then
    /- Recall that a local function declaration cannot jump to join points defined out of its scope. -/
    value ← attachJps value
  let decl ← decl.update' decl.type value
  modify fun s => { isFun, decl, used := decl.collectUsed } :: s ++ saved

/--
Pull local function declarations and join points in `code`.
The state contains the declarations being pulled.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a761dd28b718b7fcb7103088b7348ee05f78d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
