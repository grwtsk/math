# getUrl?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec6b96df93484f9d55c9bd888510d207f726be6d9da0ade31dbddfb165e7e390",
  "kind": "def",
  "lexical_name": "getUrl?",
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
  "slug": "geturl--be7d9d7ac9d42451c57609da",
  "source": {
    "blob": "4d83ef2b6c1b7bd63efc46ee4401ddc09eb8dfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be7d9d7ac9d42451c57609dae3c97018dbb6e71ae465d1a9cae4389ccbaccd0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec6b96df93484f9d55c9bd888510d207f726be6d9da0ade31dbddfb165e7e390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getUrl?
  (url : String) (headers : Array String := #[])
: LogIO (Option String) := withLogErrorPos do
  let args := #[
      "-s", "-L", "-w", "%{stderr}%{json}\n",
      "--retry", "3" -- intermittent network errors can occur
  ]
  let args := headers.foldl (init := args) (· ++ #["-H", ·])
  let out ← captureProc' {cmd := "curl", args := args.push url}
  match Json.parse out.stderr >>= JsonObject.fromJson? with
  | .ok data =>
    let code ← id do
      match (data.get? "response_code" <|> data.get? "http_code") with
      | .ok (some code) => return code
      | .ok none => error s!"curl's JSON output did not contain a response code"
      | .error e => error s!"curl's JSON output contained an invalid JSON response code: {e}"
    if code == 200 then
      return some out.stdout.trimAscii.copy
    else if code == 404 then
      return none
    else
      error s!"failed to GET URL, error {code}; received:\n{out.stdout}"
  | .error e =>
    error s!"curl produced invalid JSON output: {e}"

/-- Perform a HTTP `GET` request of a URL (using `curl`) and return the body. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d83ef2b6c1b7bd63efc46ee4401ddc09eb8dfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
