# eraseUnivs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d80d1a5c36ac655ed16bedfca366c564ce124f119d946b7570bb63043b95b849",
  "kind": "def",
  "lexical_name": "eraseUnivs",
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
  "slug": "eraseunivs--c82bde08363c9379dfb089e6",
  "source": {
    "blob": "d7cd657d6afdfef62e6923d7b28db5d612e4b7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c82bde08363c9379dfb089e6c665e1ad850a580deaa02bbef9f6f0a713dc3ca5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d80d1a5c36ac655ed16bedfca366c564ce124f119d946b7570bb63043b95b849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eraseUnivs (e : Expr) : Expr :=
  match e with
  | .sort _ => .sort 0
  | .const declName _ => .const declName []
  | .app fn arg => e.updateApp! (eraseUnivs fn) (eraseUnivs arg)
  | .lam _ t b _ => e.updateLambdaE! (eraseUnivs t) (eraseUnivs b)
  | .forallE _ t b _ => e.updateForallE! (eraseUnivs t) (eraseUnivs b)
  | .letE _ t v b _ => e.updateLetE! (eraseUnivs t) (eraseUnivs v) (eraseUnivs b)
  | .mdata _ expr => e.updateMData! (eraseUnivs expr)
  | .proj _ _ s => e.updateProj! (eraseUnivs s)
  | e => e

/-- Sort the hypotheses in `e` into a normalized order by sorting their types.
Also replace universe levels with a default value.

TODO: When there are multiple variables of the same type, their order will not be changed.
This is a limitation of the current approach. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7cd657d6afdfef62e6923d7b28db5d612e4b7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
