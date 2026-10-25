# mkValueTypeClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aef5be70f22a8a5769e15c546b7a082bf86681f4cd642b2a5dc57cf761dbe3f0",
  "kind": "def",
  "lexical_name": "mkValueTypeClosure",
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
  "slug": "mkvaluetypeclosure--615029eec6271bbc25ddd087",
  "source": {
    "blob": "d5c6d4bf86de09eb83908509cbc19b387f8cdc38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:615029eec6271bbc25ddd087684d7a0ba3a0eb40ca11f8c1fe92bb1922b874a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aef5be70f22a8a5769e15c546b7a082bf86681f4cd642b2a5dc57cf761dbe3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkValueTypeClosure (type : Expr) (value : Expr) (zetaDelta : Bool) : MetaM MkValueTypeClosureResult := do
  let ((type, value), s) ← ((mkValueTypeClosureAux type value).run { zetaDelta }).run {}
  let (newLocalDecls, newArgs) ← sortDecls s.newLocalDecls.reverse s.exprFVarArgs.reverse
                                           s.newLocalDeclsForMVars s.exprMVarArgs
  let newLetDecls   := s.newLetDecls.reverse
  let type  := mkForall newLocalDecls (mkForall newLetDecls type)
  let value := mkLambda newLocalDecls (mkLambda newLetDecls value)
  assert! !value.hasFVar  -- In case https://github.com/leanprover/lean4/issues/10705 resurfaces in a new way
  pure {
    type        := type,
    value       := value,
    levelParams := s.levelParams,
    levelArgs   := s.levelArgs,
    exprArgs    := newArgs
  }

end Closure

/--
  Create an auxiliary definition with the given name, type and value.
  The parameters `type` and `value` may contain free and meta variables.
  A "closure" is computed, and a term of the form `name.{u_1 ... u_n} t_1 ... t_m` is
  returned where `u_i`s are universe parameters and metavariables `type` and `value` depend on,
  and `t_j`s are free and meta variables `type` and `value` depend on. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c6d4bf86de09eb83908509cbc19b387f8cdc38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
