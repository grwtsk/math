# ofString?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0511c6466f50e60a1cb424d8347fa233e07626e863338c9626259486ec4ad0b4",
  "kind": "def",
  "lexical_name": "ofString?",
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
  "slug": "ofstring--89ac32f94e14aa65d67bd24f",
  "source": {
    "blob": "fef6f0175797594d8fc6471668048d288a2d26ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89ac32f94e14aa65d67bd24ff660ab6031652c89b352531e5b7d9ee04726c959",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0511c6466f50e60a1cb424d8347fa233e07626e863338c9626259486ec4ad0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def ofString? (dt : String) : Option DateTime := do
  match dt.split (fun c => c == 'T' || c == 't' || c == ' ') |>.toList with
  | [d,t] =>
    let d ← Date.ofString? d.copy
    if t.back == 'Z' || t.back == 'z' then
      return offsetDateTime d (← Time.ofString? <| t.dropEnd 1 |>.copy)
    else if let [t,o] := t.split '+' |>.toStringList then
      return offsetDateTime d (← Time.ofString? t) <| some (false, ← Time.ofString? o)
    else if let [t,o] := t.split '-' |>.toStringList then
      return offsetDateTime d (← Time.ofString? t) <| some (true, ← Time.ofString? o)
    else
      return localDateTime d (← Time.ofString? t.copy)
  | [x] =>
    if x.contains ':' then
      return localTime (← Time.ofString? x.copy)
    else
      return localDate (← Date.ofString? x.copy)
  | _ => none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef6f0175797594d8fc6471668048d288a2d26ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
