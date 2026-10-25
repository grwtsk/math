# elabClean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecfd12b16c852cd85f679d04841d480a8187db7db3cc3dcf266a4b8dfa91a159",
  "kind": "def",
  "lexical_name": "elabClean",
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
  "slug": "elabclean--7be483d5b7dabd73a12bbe66",
  "source": {
    "blob": "cfcd7f433dca730bcc34b321673354dec0b7e352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant48decb40186b0d38dcd355fef4e951240621cfb87ed29bccec29e048bb8507bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7be483d5b7dabd73a12bbe66d7f05cdb426ed79f9b0edc2f639fc6952e4e5f62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant48decb40186b0d38dcd355fef4e951240621cfb87ed29bccec29e048bb8507bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecfd12b16c852cd85f679d04841d480a8187db7db3cc3dcf266a4b8dfa91a159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabClean : Term.TermElab := fun stx expectedType? =>
  match stx with
  | `(clean% $t) => do
    let e ← Term.withSynthesize <| Term.elabTerm t expectedType?
    return (← instantiateMVars e).clean
  | _ => throwUnsupportedSyntax

/-- (Deprecated) `clean t` is a macro for `exact clean% t`. -/
@[deprecated "`clean' is not used/needed anymore" (since := "2026-09-03")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant48decb40186b0d38dcd355fef4e951240621cfb87ed29bccec29e048bb8507bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant48decb40186b0d38dcd355fef4e951240621cfb87ed29bccec29e048bb8507bd.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcd7f433dca730bcc34b321673354dec0b7e352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
