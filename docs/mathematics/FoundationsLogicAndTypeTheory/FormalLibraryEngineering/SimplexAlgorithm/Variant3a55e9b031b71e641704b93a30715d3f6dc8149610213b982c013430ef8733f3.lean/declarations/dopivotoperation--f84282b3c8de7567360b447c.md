# doPivotOperation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:029941f74790879f1b0fd46c441b051ea9577dc5d6c72ba3fb6b8164da2cd63f",
  "kind": "def",
  "lexical_name": "doPivotOperation",
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
  "slug": "dopivotoperation--f84282b3c8de7567360b447c",
  "source": {
    "blob": "4ecfb36c3cab1580f9efa49bf7818f7f3ea60653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f84282b3c8de7567360b447c0a08315d2a33fc01ddd4dc5166deafb58ec638f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:029941f74790879f1b0fd46c441b051ea9577dc5d6c72ba3fb6b8164da2cd63f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doPivotOperation (exitIdx enterIdx : Nat) : SimplexAlgorithmM matType Unit :=
  modify fun s : Tableau matType => Id.run do
    let mut mat := s.mat
    let intersectCoef := mat[(exitIdx, enterIdx)]!

    for i in [:s.basic.size] do
      if i == exitIdx then
        continue
      let coef := mat[(i, enterIdx)]! / intersectCoef
      if coef != 0 then
        mat := subtractRow mat exitIdx i coef
      mat := setElem mat i enterIdx coef
    mat := setElem mat exitIdx enterIdx (-1)
    mat := divideRow mat exitIdx (-intersectCoef)

    let newBasic := s.basic.set! exitIdx s.free[enterIdx]!
    let newFree := s.free.set! enterIdx s.basic[exitIdx]!

    have hb : newBasic.size = s.basic.size := by apply Array.size_setIfInBounds
    have hf : newFree.size = s.free.size := by apply Array.size_setIfInBounds

    return (⟨newBasic, newFree, hb ▸ hf ▸ mat⟩ : Tableau matType)

/--
Check if the solution is found: the objective function is positive and all basic variables are
nonnegative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ecfb36c3cab1580f9efa49bf7818f7f3ea60653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
