# nCasesProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9026ba70982e6c02100024297a503d86e4e9d1758f7f3851f55dd067657e9e3f",
  "kind": "def",
  "lexical_name": "nCasesProd",
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
  "slug": "ncasesprod--f02d39f5ad61e5602cd2a1cd",
  "source": {
    "blob": "678f6cb477ddde135494471e1ae103f04b1b86ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f02d39f5ad61e5602cd2a1cd2907f7fb3269acb292f3c6af9d53dc9d3f6cfd3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9026ba70982e6c02100024297a503d86e4e9d1758f7f3851f55dd067657e9e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def nCasesProd (n : Nat) (mvar : MVarId) (h : FVarId) : MetaM (MVarId × List FVarId) :=
match n with
| 0 => pure (mvar, [h])
| n' + 1 => do
  let #[sg] ← mvar.cases h | throwError "expected one case subgoals"
  let #[Expr.fvar fvar1, Expr.fvar fvar2] ← pure sg.fields | throwError "expected fvar"
  let (mvar', rest) ← nCasesProd n' sg.mvarId fvar2
  pure (mvar', fvar1::rest)

/--
Iterate over two lists, if the first element of the first list is `false`, insert `none` into the
result and continue with the tail of first list. Otherwise, wrap the first element of the second
list with `some` and continue with the tails of both lists. Return when either list is empty.

Example:
```
listBoolMerge [false, true, false, true] [0, 1, 2, 3, 4] = [none, (some 0), none, (some 1)]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variante0fabaf3e5a0163dd92a931beaf7351a01d4509f65d771460f44719558f43ac2.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `678f6cb477ddde135494471e1ae103f04b1b86ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
