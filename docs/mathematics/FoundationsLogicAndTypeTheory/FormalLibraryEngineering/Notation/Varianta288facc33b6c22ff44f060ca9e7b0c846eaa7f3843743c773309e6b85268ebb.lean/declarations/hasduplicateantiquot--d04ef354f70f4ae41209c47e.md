# hasDuplicateAntiquot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:158754cb70a12bc995f28c7c253b7affbd86b2850ac4fd4d2df82bd466e12f24",
  "kind": "def",
  "lexical_name": "hasDuplicateAntiquot",
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
  "slug": "hasduplicateantiquot--d04ef354f70f4ae41209c47e",
  "source": {
    "blob": "9a03a980886c60bd767e9b657aa8c4230c26dad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d04ef354f70f4ae41209c47e04bac3271df5e41299432502324c319907d994fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:158754cb70a12bc995f28c7c253b7affbd86b2850ac4fd4d2df82bd466e12f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def hasDuplicateAntiquot (stxs : Array Syntax) : Bool := Id.run do
  let mut seen := NameSet.empty
  for stx in stxs do
    for node in Syntax.topDown stx true do
      if node.isAntiquot then
        let ident := node.getAntiquotTerm.getId
        if seen.contains ident then
          return true
        else
          seen := seen.insert ident
  pure false

/-- Try to derive an unexpander from a notation.
    The notation must be of the form `notation ... => c body`
    where `c` is a declaration in the current scope and `body` any syntax
    that contains each variable from the LHS at most once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a03a980886c60bd767e9b657aa8c4230c26dad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
