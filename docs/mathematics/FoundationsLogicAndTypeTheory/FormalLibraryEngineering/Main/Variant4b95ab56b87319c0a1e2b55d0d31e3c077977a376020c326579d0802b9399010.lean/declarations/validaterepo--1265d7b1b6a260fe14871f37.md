# validateRepo?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14e3435b73dce4e74ca9932beac22f913261c97cb7bf2303e99d4202bc021cd9",
  "kind": "def",
  "lexical_name": "validateRepo?",
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
  "slug": "validaterepo--1265d7b1b6a260fe14871f37",
  "source": {
    "blob": "7351b888130b276772224890d37d069298d4fddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1265d7b1b6a260fe14871f37d13dddfcd0536562af68a9077bb26c85aa910ead",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14e3435b73dce4e74ca9932beac22f913261c97cb7bf2303e99d4202bc021cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validateRepo? (repo : String) : Option String := Id.run do
  unless repo.all isValidRepoChar do
    return "invalid characters in repository name"
  match repo.split '/' |>.toStringList with
  | [owner, name] =>
    if owner.lengthAssumingAscii > 39 then
      return "invalid repository name; owner must be at most 390 characters long"
    if name.lengthAssumingAscii > 100 then
      return "invalid repository name; owner must be at most 100 characters long"
  | _ => return "invalid repository name; must contain exactly one '/'"
  return none
where
  /-- Returns whether `c` is a valid character in GitHub repository name -/
  isValidRepoChar (c : Char) : Bool :=
    c.isAlphanum || c == '-' || c == '_' || c == '.' || c == '/'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351b888130b276772224890d37d069298d4fddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
