# addDelabTermInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54f0c30052cec7ca191b3b25f494be7597e934cdb2a26c0c9aecfc4a51162bdc",
  "kind": "def",
  "lexical_name": "addDelabTermInfo",
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
  "slug": "adddelabterminfo--2cb6df34017a00c72cd28223",
  "source": {
    "blob": "291d618e54e6b8ae7671e551b11d113825336ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cb6df34017a00c72cd282237d11f7fc80f82b2a6893083f8c10b8cf50d6f348",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54f0c30052cec7ca191b3b25f494be7597e934cdb2a26c0c9aecfc4a51162bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addDelabTermInfo (pos : Pos) (stx : Syntax) (e : Expr) (isBinder : Bool := false)
    (location? : Option DeclarationLocation := none)
    (docString? : Option String := none)
    (mkDocString? : Option (PPContext → IO String) := none)
    (explicit : Bool := true) : DelabM Unit := do
  let info := Info.ofDelabTermInfo {
    toTermInfo := ← addTermInfo.mkTermInfo stx e (isBinder := isBinder)
    location?  := location?
    mkDocString? := mkDocString? <|> docString?.map (fun _ => pure ·)
    explicit   := explicit
  }
  modify fun s => { s with infos := s.infos.insert pos info }

/--
Annotates the term with the current expression position and registers `TermInfo`
to associate the term to the current expression.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291d618e54e6b8ae7671e551b11d113825336ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
