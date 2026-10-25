# elabNoErrorIfUnused

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c574b7c8c74c79f1c3eee5c49a60b5949885c8a1c5e40cae159ff3c3615d406",
  "kind": "def",
  "lexical_name": "elabNoErrorIfUnused",
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
  "slug": "elabnoerrorifunused--4fa97e39e55045c99a1657cf",
  "source": {
    "blob": "f853dd6ab2d659731df0875f0159b3e57c6c13b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 692,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fa97e39e55045c99a1657cf3213d07d2e37ad6884a4fd47cf72b6a9f49786e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c574b7c8c74c79f1c3eee5c49a60b5949885c8a1c5e40cae159ff3c3615d406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab noErrorIfUnused] def elabNoErrorIfUnused : TermElab := fun stx expectedType? =>
  match stx with
  | `(no_error_if_unused% $term) => elabTerm term expectedType?
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f853dd6ab2d659731df0875f0159b3e57c6c13b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
