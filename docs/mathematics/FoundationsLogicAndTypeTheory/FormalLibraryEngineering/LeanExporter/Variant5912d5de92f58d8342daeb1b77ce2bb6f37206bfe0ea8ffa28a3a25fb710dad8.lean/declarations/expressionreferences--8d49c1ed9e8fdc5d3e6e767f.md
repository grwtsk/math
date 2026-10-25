# expressionReferences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:284b5d6b3d33ba931268334f56481026ccd9d7e1959b39c64354d2c8b648bccd",
  "kind": "def",
  "lexical_name": "expressionReferences",
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
  "slug": "expressionreferences--8d49c1ed9e8fdc5d3e6e767f",
  "source": {
    "blob": "59617d639aac51db89d9af72ae805887f1fc0666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant5912d5de92f58d8342daeb1b77ce2bb6f37206bfe0ea8ffa28a3a25fb710dad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d49c1ed9e8fdc5d3e6e767fb4604d6ac17f40d9b1f91da44e7e1188dc96e388",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant5912d5de92f58d8342daeb1b77ce2bb6f37206bfe0ea8ffa28a3a25fb710dad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:284b5d6b3d33ba931268334f56481026ccd9d7e1959b39c64354d2c8b648bccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expressionReferences (expression : Expr) : NameSet := Id.run do
  let mut pending := [expression]
  let mut seen : Std.HashSet ExprStructEq := {}
  let mut result : NameSet := {}
  while !pending.isEmpty do
    let current := pending.head!
    pending := pending.tail!
    if seen.contains ⟨current⟩ then continue
    seen := seen.insert ⟨current⟩
    match current with
    | .const name _ => result := result.insert name
    | .proj name _ body => result := result.insert name; pending := body :: pending
    | .app fn arg => pending := fn :: arg :: pending
    | .lam _ type body _ | .forallE _ type body _ => pending := type :: body :: pending
    | .letE _ type value body _ => pending := type :: value :: body :: pending
    | .mdata _ body => pending := body :: pending
    | _ => pure ()
  return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant5912d5de92f58d8342daeb1b77ce2bb6f37206bfe0ea8ffa28a3a25fb710dad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant5912d5de92f58d8342daeb1b77ce2bb6f37206bfe0ea8ffa28a3a25fb710dad8.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59617d639aac51db89d9af72ae805887f1fc0666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
