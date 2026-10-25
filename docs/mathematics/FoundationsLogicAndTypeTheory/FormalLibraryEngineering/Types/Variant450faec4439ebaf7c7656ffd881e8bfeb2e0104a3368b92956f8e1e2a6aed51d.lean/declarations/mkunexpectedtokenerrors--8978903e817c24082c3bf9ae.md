# mkUnexpectedTokenErrors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d57f9f1469a569e3690f7bfc46fefeb68410f982930b82a66565932e04a2dc3d",
  "kind": "def",
  "lexical_name": "mkUnexpectedTokenErrors",
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
  "slug": "mkunexpectedtokenerrors--8978903e817c24082c3bf9ae",
  "source": {
    "blob": "2deef2d231abf7c0fddd4d3cc2a2eb70d7034704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 428,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8978903e817c24082c3bf9aef64d0d6ef40392bd7d35d4b4c5aa8fff4a0d4ea0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d57f9f1469a569e3690f7bfc46fefeb68410f982930b82a66565932e04a2dc3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnexpectedTokenErrors (s : ParserState) (ex : List String) (iniPos : String.Pos.Raw := 0) : ParserState :=
  let tk := s.stxStack.back
  let s := s.setPos (if iniPos > 0 then iniPos else tk.getPos?.get!)
  let s := s.setError { unexpectedTk := tk, expected := ex }
  s.popSyntax.pushSyntax .missing

/--
  Reports given 'expected' message at range of top stack element (assumed to be a single token).
  Replaces the element with `missing` and resets position to the token position.
  `iniPos` can be specified to avoid this position lookup but still must be identical to the token position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant450faec4439ebaf7c7656ffd881e8bfeb2e0104a3368b92956f8e1e2a6aed51d.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2deef2d231abf7c0fddd4d3cc2a2eb70d7034704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
