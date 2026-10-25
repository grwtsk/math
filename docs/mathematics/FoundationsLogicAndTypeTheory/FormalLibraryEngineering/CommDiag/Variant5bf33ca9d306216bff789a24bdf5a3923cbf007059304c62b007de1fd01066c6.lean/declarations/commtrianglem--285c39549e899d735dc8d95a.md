# commTriangleM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:413f0920ee9cbc15d28319d8fe510ac0212ce0bce4de2328951f207a7b6862ae",
  "kind": "def",
  "lexical_name": "commTriangleM?",
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
  "slug": "commtrianglem--285c39549e899d735dc8d95a",
  "source": {
    "blob": "abd2ed23e564526ffd971d06f1164962d4411fb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:285c39549e899d735dc8d95a0ca1e061dbd5ff3d450bfb21bdc7f454d0ce7e16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:413f0920ee9cbc15d28319d8fe510ac0212ce0bce4de2328951f207a7b6862ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commTriangleM? (e : Expr) : MetaM (Option Html) := do
  let e ← instantiateMVars e
  let some (_, lhs, rhs) := e.eq? | return none
  if let some (f, g) := homComp? lhs then
    let some (A, C) := homType? (← inferType rhs) | return none
    let some (_, B) := homType? (← inferType f) | return none
    return some <| ← mkCommDiag subTriangle
      #[("A", A), ("B", B), ("C", C),
        ("f", f), ("g", g), ("h", rhs)]
  let some (f, g) := homComp? rhs | return none
  let some (A, C) := homType? (← inferType lhs) | return none
  let some (_, B) := homType? (← inferType f) | return none
  return some <| ← mkCommDiag subTriangle
    #[("A", A), ("B", B), ("C", C),
      ("f", f), ("g", g), ("h", lhs)]

/-- Presenter for a commutative triangle -/
@[expr_presenter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd2ed23e564526ffd971d06f1164962d4411fb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
