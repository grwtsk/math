# extractAttrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8921c9f30cbdc14be703c4a43d63521a40747c069c76e6a3b9a3f7496780df6",
  "kind": "def",
  "lexical_name": "extractAttrs",
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
  "slug": "extractattrs--3c1e7704157aaf23d5f20b55",
  "source": {
    "blob": "85894c3deef20bda65b9b29aae1537bbfa6c89b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c1e7704157aaf23d5f20b5579fbc467cf55be0f25a140fe6cd04092248a1841",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8921c9f30cbdc14be703c4a43d63521a40747c069c76e6a3b9a3f7496780df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractAttrs (stx : TSyntax ``Command.declModifiers) :
    CommandElabM (Array <| TSyntax ``attrInstance) := do
  match stx with
  | `(declModifiers| $(_)? @[$[$atts],*] $(_)? $(_)? $(_)? $(_)?) =>
    return atts
  | _ => return #[]
end


/-! ## Tests for Verso-compatible docstrings -/

set_option linter.style.docStringVerso true

-- Errors on mismatched brackets, but not on references:
/--
warning: expected ']'

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
-/
#guard_msgs in
/-- See [bourbaki1989) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85894c3deef20bda65b9b29aae1537bbfa6c89b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
