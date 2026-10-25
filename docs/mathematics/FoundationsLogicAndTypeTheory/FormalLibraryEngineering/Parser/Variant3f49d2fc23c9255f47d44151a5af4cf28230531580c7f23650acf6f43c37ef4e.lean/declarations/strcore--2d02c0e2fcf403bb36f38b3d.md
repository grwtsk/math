# strCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39f80b8cad88f706d1ff7f81c65122614938ccb004834946623f97b17cdd6150",
  "kind": "def",
  "lexical_name": "strCore",
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
  "slug": "strcore--2d02c0e2fcf403bb36f38b3d",
  "source": {
    "blob": "3e2ad72c375aab7d1e80e5e8adf7b9122fc666f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d02c0e2fcf403bb36f38b3d98415599c89a6cb68a51c1ce2440d0e74682d48b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39f80b8cad88f706d1ff7f81c65122614938ccb004834946623f97b17cdd6150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def strCore (acc : String) : Parser String := do
  let c ← peek!
  if c == '"' then
    skip
    return acc
  else
    let c ← any
    if c == '\\' then
      strCore (acc.push (← escapedChar))
    -- as to whether c.val > 0xffff should be split up and encoded with multiple \u,
    -- the JSON standard is not definite: both directly printing the character
    -- and encoding it with multiple \u is allowed. we choose the former.
    else if 0x0020 <= c.val && c.val <= 0x10ffff then
      strCore (acc.push c)
    else
      fail "unexpected character in string"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e2ad72c375aab7d1e80e5e8adf7b9122fc666f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
