# expandDeclSig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5265182302bf9cb7105b9d0a1e9b99848752a6d0f85785a3209fbfae76bf1895",
  "kind": "def",
  "lexical_name": "expandDeclSig",
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
  "slug": "expanddeclsig--de430592e876e761efcf4b19",
  "source": {
    "blob": "f926778b1727ed403f4bdf919418a34fe6945ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de430592e876e761efcf4b1928143a0c3fc848e066c58af0880ca4abc89ccbca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5265182302bf9cb7105b9d0a1e9b99848752a6d0f85785a3209fbfae76bf1895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandDeclSig (stx : Syntax) : Syntax × Syntax :=
  -- many Term.bracketedBinder >> Term.typeSpec
  let binders  := stx[0]
  let typeSpec := stx[1]
  (binders, typeSpec[1])

/--
Sort the given list of `usedParams` using the following order:
- If it is an explicit level in `allUserParams`, then use user-given order.
- All other levels come in lexicographic order after these.

Remark: `scopeParams` are the universe params introduced using the `universe` command. `allUserParams` contains
the universe params introduced using the `universe` command *and* the `.{...}` notation.

Remark: this function return an exception if there is an `u` not in `usedParams`, that is in `allUserParams` but not in `scopeParams`.

Remark: `scopeParams` and `allUserParams` are in reverse declaration order. That is, the head is the last declared parameter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f926778b1727ed403f4bdf919418a34fe6945ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
