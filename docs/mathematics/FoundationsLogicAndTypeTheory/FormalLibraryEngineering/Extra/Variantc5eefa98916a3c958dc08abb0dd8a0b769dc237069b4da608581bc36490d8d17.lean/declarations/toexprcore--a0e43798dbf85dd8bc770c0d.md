# toExprCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75c186b2a93c1dc9e81183780263233cfff69dd38857c9e7e843e6df7957104e",
  "kind": "def",
  "lexical_name": "toExprCore",
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
  "slug": "toexprcore--a0e43798dbf85dd8bc770c0d",
  "source": {
    "blob": "375749812ea7bd835d5a3ce0fae993d9fc5888f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0e43798dbf85dd8bc770c0dc055ad43666457450fc141c34c2a1706c2d12c3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75c186b2a93c1dc9e81183780263233cfff69dd38857c9e7e843e6df7957104e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def toExprCore (t : Tree) : TermElabM Expr := do
  match t with
  | .term _ trees e =>
    modifyInfoState (fun s => { s with trees := s.trees ++ trees }); return e
  | .binop ref kind f lhs rhs =>
    withRef ref <|
      withTermInfoContext' .anonymous ref do
        mkBinOp (kind == .lazy) f (← toExprCore lhs) (← toExprCore rhs)
  | .unop ref f arg =>
    withRef ref <|
      withTermInfoContext' .anonymous ref do
        mkUnOp f (← toExprCore arg)
  | .macroExpansion macroName stx stx' nested =>
    withRef stx <|
      withTermInfoContext' macroName stx <|
        withMacroExpansion stx stx' <|
          toExprCore nested

/--
  Auxiliary function to decide whether we should coerce `f`'s argument to `maxType` or not.
  - `f` is a binary operator.
  - `lhs == true` (`lhs == false`) if are trying to coerce the left-argument (right-argument).
  This function assumes `f` is a heterogeneous operator (e.g., `HAdd.hAdd`, `HMul.hMul`, etc).
  It returns true IF
  - `f` is a constant of the form `Cls.op` where `Cls` is a class name, and
  - `maxType` is of the form `C ...` where `C` is a constant, and
  - There are more than one default instance. That is, it assumes the class `Cls` for the heterogeneous operator `f`, and
    always has the monomorphic instance. (e.g., for `HAdd`, we have `instance [Add α] : HAdd α α α`), and
  - If `lhs == true`, then there is a default instance of the form `Cls _ (C ..) _`, and
  - If `lhs == false`, then there is a default instance of the form `Cls (C ..) _ _`.

  The motivation is to support default instances such as
  ```
  @[default_instance high]
  instance [Mul α] : HMul α (Array α) (Array α) where
    hMul a as := as.map (a * ·)

  #eval 2 * #[3, 4, 5]
  ```
  If the type of an argument is unknown we should not coerce it to `maxType` because it would prevent
  the default instance above from being even tried.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375749812ea7bd835d5a3ce0fae993d9fc5888f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
