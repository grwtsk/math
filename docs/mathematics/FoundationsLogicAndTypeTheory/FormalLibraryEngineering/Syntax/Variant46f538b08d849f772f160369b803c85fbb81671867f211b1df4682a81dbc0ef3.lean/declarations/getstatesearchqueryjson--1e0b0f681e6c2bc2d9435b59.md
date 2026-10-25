# getStateSearchQueryJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6786695128acb1708cc209b3874d1992ddc6c0fd6dc9b6201df8d590059e7c5d",
  "kind": "def",
  "lexical_name": "getStateSearchQueryJson",
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
  "slug": "getstatesearchqueryjson--1e0b0f681e6c2bc2d9435b59",
  "source": {
    "blob": "ed8303031cebba863b5883906b9f4e53589c0b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e0b0f681e6c2bc2d9435b59cfdd7857f2508b4f66af7530dc821574925959c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6786695128acb1708cc209b3874d1992ddc6c0fd6dc9b6201df8d590059e7c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getStateSearchQueryJson (s : String) (num_results : Nat := 6) (rev : String) : CoreM <| Array Json := do
  let cache ← stateSearchCache.get
  match cache.get? (s, num_results, rev) with
  | .some jsArr => return jsArr
  | none => do
    let apiUrl := (← IO.getEnv "LEANSEARCHCLIENT_LEANSTATESEARCH_API_URL").getD "https://premise-search.com/api/search"
    let s' := System.Uri.escapeUri s
    let q := apiUrl ++ s!"?query={s'}&results={num_results}&rev={rev}"
    let out ← IO.Process.output {cmd := "curl", args := #["-X", "GET", "--user-agent", ← useragent, q]}
    let js ← match Json.parse out.stdout |>.toOption with
      | some js => pure js
      | none => IO.throwServerError s!"Could not contact LeanStateSearch server"
    match js.getArr? with
    | Except.ok jsArr => do
      stateSearchCache.modify fun m => m.insert (s, num_results, rev) jsArr
      return jsArr
    | Except.error e =>
      let .ok err := js.getObjVal? "error"
        | IO.throwServerError s!"{e}"
      let .ok schema := js.getObjVal? "schema"
        | IO.throwServerError s!"{e}"
      let .ok desc := schema.getObjVal? "description"
        | IO.throwServerError s!"{e}"
      IO.throwServerError s!"error: {err}\ndescription: {desc}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed8303031cebba863b5883906b9f4e53589c0b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
