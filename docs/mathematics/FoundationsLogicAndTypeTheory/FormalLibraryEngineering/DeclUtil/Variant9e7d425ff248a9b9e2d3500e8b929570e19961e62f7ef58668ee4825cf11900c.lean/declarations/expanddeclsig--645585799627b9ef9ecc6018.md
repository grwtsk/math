# expandDeclSig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c501779ce64c029c18c0d1867fcc303de3016addf93d96446c248adcf31d069",
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
  "slug": "expanddeclsig--645585799627b9ef9ecc6018",
  "source": {
    "blob": "991c08ff590fce375638e8e8ece2a68bda7c0a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant9e7d425ff248a9b9e2d3500e8b929570e19961e62f7ef58668ee4825cf11900c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:645585799627b9ef9ecc6018ef4a55be7464a5d4c6a51616d9ef71c39a431a66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant9e7d425ff248a9b9e2d3500e8b929570e19961e62f7ef58668ee4825cf11900c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c501779ce64c029c18c0d1867fcc303de3016addf93d96446c248adcf31d069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–78.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant9e7d425ff248a9b9e2d3500e8b929570e19961e62f7ef58668ee4825cf11900c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant9e7d425ff248a9b9e2d3500e8b929570e19961e62f7ef58668ee4825cf11900c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991c08ff590fce375638e8e8ece2a68bda7c0a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
