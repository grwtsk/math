# registerFailedToInferDefaultValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:228327dbd551c41383744dfd46bbda3206d7e010c901526f9456da856a13c493",
  "kind": "def",
  "lexical_name": "registerFailedToInferDefaultValue",
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
  "slug": "registerfailedtoinferdefaultvalue--6f84a8ec09250141c0af84da",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 959,
    "line": 925,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f84a8ec09250141c0af84dae08f4a67afde97d03bf0984c8622ade75a6522fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:228327dbd551c41383744dfd46bbda3206d7e010c901526f9456da856a13c493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–959.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def registerFailedToInferDefaultValue (fieldName : Name) (e : Expr) (ref : Syntax) : TermElabM Unit := do
  Term.registerCustomErrorIfMVar (← instantiateMVars e) ref m!"Failed to infer default value for field `{.ofConstName fieldName}`"
  Term.registerLevelMVarErrorExprInfo e ref m!"Failed to infer universe levels in default value for field `{.ofConstName fieldName}`"

/--
Goes through all the natural mvars appearing in `e`, assigning any whose type is one of the inherited parents.

Rationale 1: Structures can only extend a parent once.
There should be no other occurrences of a parent except for the parent itself.

Rationale 2: Consider the following code in the test `lean/run/balg.lean`:
```lean
structure Magma where
  α   : Type u
  mul : α → α → α

instance : CoeSort Magma (Type u) where
  coe s := s.α

abbrev mul {M : Magma} (a b : M) : M :=
  M.mul a b

infixl:70 (priority := high) "*" => mul

structure Semigroup extends Magma where
  mul_assoc (a b c : α) : a * b * c = a * (b * c)
```
When elaborating `*` in `mul_assoc`'s type, the `M` parameter of `mul` cannot be synthesized by unification.
Now `α` and `mul` are cdecls and `toMagma` is an ldecl,
but it used to be that `toMagma` was the cdecl and `α` and `mul` were projections of it,
which made it possible for unification to infer `toMagma` from `α`.
However, now `α` does not know its relationship to `toMagma`.

This was not robust, since in diamond inheritance `α` only remembered *one* of its parents in this indirect way.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
