# findConstValWithKind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ad8bc22811120e5529dc8fc2687a7d4d023d5b0054ec70af2538c74f0fa85cc",
  "kind": "def",
  "lexical_name": "findConstValWithKind?",
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
  "slug": "findconstvalwithkind--c3b59d9bf78eeacb0aaff0a4",
  "source": {
    "blob": "6ec6ccdd2e0a0b3a67caa4a741c4ed73145fb54e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3b59d9bf78eeacb0aaff0a44bcdd311b393e1f1bb7c9b29b6227cac43733a2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ad8bc22811120e5529dc8fc2687a7d4d023d5b0054ec70af2538c74f0fa85cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findConstValWithKind? (env : Environment) (decl : Name) (skipRealize := false) :
    Option (ConstantVal × ConstantKind) := do
  let info ← env.findAsync? decl skipRealize
  return (info.toConstantVal, info.kind)

/--
Like `findConstVal?`, but only finds the `ConstantVal` for `decl` in `env` if its kind satisfies
`p`. Otherwise, returns `none`.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ec6ccdd2e0a0b3a67caa4a741c4ed73145fb54e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
