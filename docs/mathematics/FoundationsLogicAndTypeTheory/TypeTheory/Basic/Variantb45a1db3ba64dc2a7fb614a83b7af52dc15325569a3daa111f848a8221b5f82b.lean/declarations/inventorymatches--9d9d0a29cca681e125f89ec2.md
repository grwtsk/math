# inventoryMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5cbe90dd5e8360c841c9aa141093a3fa3e0aeb605b95923937d098ae50b9ae7",
  "kind": "def",
  "lexical_name": "inventoryMatches",
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
  "slug": "inventorymatches--9d9d0a29cca681e125f89ec2",
  "source": {
    "blob": "b94ff40f11346fd563fcc348adfe864a9941a850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d9d0a29cca681e125f89ec2b1559a1d4d243c3deeb2f42f691bb8df47c53ecd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5cbe90dd5e8360c841c9aa141093a3fa3e0aeb605b95923937d098ae50b9ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inventoryMatches (table : List SourceRefinement.Bytes) (planned : Value)
    (frozen : SourceRefinement.ReadSet) : Option Bool := do
  let root ← getString "root" planned
  let present ← field "exists" planned >>= asBool
  let dirs ← getArray "directories" planned >>= allSome asString
  let files ← field "files" planned >>= asObject
  let files := sortBy (fun a b => a.1 ≤ b.1) files
  let matching ← allSome (fun (path, record) => do
    let index ← SourceRefinement.slot path frozen.files
    let payload ← table[index]?
    let length ← getNat "bytes" record
    let digest ← getString "sha256" record
    pure (decide (payload.length = length) && decide (digest.length = 64) && lowerHex digest)) files
  pure (decide (root = frozen.root ∧ present = frozen.present ∧ dirs = frozen.directories ∧
    files.map Prod.fst = frozen.files.map Prod.fst) && matching.all id)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94ff40f11346fd563fcc348adfe864a9941a850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
