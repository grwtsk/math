# elabHeaderKeys

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e306d95d9fd57465a9ae164ac6a72f7a425c9e9e9851b9353ef58b6478599d5",
  "kind": "def",
  "lexical_name": "elabHeaderKeys",
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
  "slug": "elabheaderkeys--eac45996e1e6c60d718d7e8e",
  "source": {
    "blob": "58e16cda7accde4e88f43f8516af7ca58eadf4a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant093abd2c230e696f23c237382beb45c0b3c70baabdaae00d8a885e8a431c0db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eac45996e1e6c60d718d7e8e42d74ac13107be7ec44135ffdb810d2f13dc7994",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant093abd2c230e696f23c237382beb45c0b3c70baabdaae00d8a885e8a431c0db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e306d95d9fd57465a9ae164ac6a72f7a425c9e9e9851b9353ef58b6478599d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabHeaderKeys (ks : Array (TSyntax ``simpleKey)) : TomlElabM Name := do
  modify fun s =>
    let arrKeyTys := s.arrKeyTys.insert s.currArrKey s.keyTys
    {
      s with
      arrKeyTys
      currArrKey := .anonymous
      keyTys := arrKeyTys.get? .anonymous |>.getD {}
    }
  ks.foldlM (init := Name.anonymous) fun k kStx => do
    let k ← k.str <$> elabSimpleKey kStx
    if let some ty := (← get).keyTys.find? k then
      match ty with
      | .array =>
        let some keyTys := (← get).arrKeyTys.find? k
          | throwError "(internal) bad array key `{k}`"
        modify fun s => {s with keyTys, currArrKey := k}
      | .stdTable | .headerPrefix | .dottedPrefix  => pure ()
      | _ => throwErrorAt kStx m!"cannot redefine {ty} key `{k}`"
    else
      modify fun s => {s with keyTys := s.keyTys.insert k .headerPrefix}
    return k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant093abd2c230e696f23c237382beb45c0b3c70baabdaae00d8a885e8a431c0db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expression/Variant093abd2c230e696f23c237382beb45c0b3c70baabdaae00d8a885e8a431c0db8.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e16cda7accde4e88f43f8516af7ca58eadf4a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
