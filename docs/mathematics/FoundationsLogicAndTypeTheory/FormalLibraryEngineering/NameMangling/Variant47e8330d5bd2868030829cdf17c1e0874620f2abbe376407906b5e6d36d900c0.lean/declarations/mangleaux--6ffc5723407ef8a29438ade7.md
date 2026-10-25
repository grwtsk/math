# mangleAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3d877c1988cf85d2e04505219b7d09631d2ff66f36ab57ad2058eac621b59b4",
  "kind": "def",
  "lexical_name": "mangleAux",
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
  "slug": "mangleaux--6ffc5723407ef8a29438ade7",
  "source": {
    "blob": "70f97102b9b92e81d200d0fac020c9c72033bea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ffc5723407ef8a29438ade7187e4e6c2dffc7861fa5715e252184a2134efdad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3d877c1988cf85d2e04505219b7d09631d2ff66f36ab57ad2058eac621b59b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mangleAux (s : String) (pos : s.Pos) (r : String) : String :=
  if h : pos = s.endPos then r else
  let c := pos.get h
  let pos := pos.next h
  if c.isAlpha || c.isDigit then
    mangleAux s pos (r.push c)
  else if c = '_' then
    mangleAux s pos (r ++ "__")
  else if c.toNat < 0x100 then
    mangleAux s pos (pushHex 2 c.val (r ++ "_x"))
  else if c.toNat < 0x10000 then
    mangleAux s pos (pushHex 4 c.val (r ++ "_u"))
  else
    mangleAux s pos (pushHex 8 c.val (r ++ "_U"))
termination_by pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70f97102b9b92e81d200d0fac020c9c72033bea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
