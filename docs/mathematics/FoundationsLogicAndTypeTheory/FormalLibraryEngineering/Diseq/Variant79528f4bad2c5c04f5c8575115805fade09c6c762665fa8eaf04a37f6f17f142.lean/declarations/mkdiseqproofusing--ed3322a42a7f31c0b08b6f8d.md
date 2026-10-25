# mkDiseqProofUsing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbe40d59750950bbd6edc62844d8f94689624d8a222f10283b93740b333790a8",
  "kind": "def",
  "lexical_name": "mkDiseqProofUsing",
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
  "slug": "mkdiseqproofusing--ed3322a42a7f31c0b08b6f8d",
  "source": {
    "blob": "6624e8b2327606b94bc9310c48e94907bcde150a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variant79528f4bad2c5c04f5c8575115805fade09c6c762665fa8eaf04a37f6f17f142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed3322a42a7f31c0b08b6f8ddf6c68bba33020e3c35474195752d7ed88ba78df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variant79528f4bad2c5c04f5c8575115805fade09c6c762665fa8eaf04a37f6f17f142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbe40d59750950bbd6edc62844d8f94689624d8a222f10283b93740b333790a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDiseqProofUsing (a b : Expr) (eq : Expr) : GoalM Expr := do
  let_expr f@Eq α c d := eq | unreachable!
  let u := f.constLevels!
  let h := mkOfEqFalseCore eq (← mkEqFalseProof eq)
  let (c, d, h) ← if (← isEqv a c <&&> isEqv b d) then
    pure (c, d, h)
  else
    pure (d, c, mkApp4 (mkConst ``Ne.symm u) α c d h)
  -- We have `a = c` and `b = d`
  let h ← if isSameExpr a c then
    pure h
  else
    pure <| mkApp6 (mkConst ``Grind.ne_of_ne_of_eq_left u) α a c d (← mkEqProof a c) h
  -- `h : a ≠ d
  if isSameExpr b d then
    return h
  else
    return mkApp6 (mkConst ``Grind.ne_of_ne_of_eq_right u) α b a d (← mkEqProof b d) h

/--
Returns a proof for `true` if `a` and `b` are known to be disequal.
See `getDiseqFor?`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variant79528f4bad2c5c04f5c8575115805fade09c6c762665fa8eaf04a37f6f17f142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diseq/Variant79528f4bad2c5c04f5c8575115805fade09c6c762665fa8eaf04a37f6f17f142.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6624e8b2327606b94bc9310c48e94907bcde150a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
