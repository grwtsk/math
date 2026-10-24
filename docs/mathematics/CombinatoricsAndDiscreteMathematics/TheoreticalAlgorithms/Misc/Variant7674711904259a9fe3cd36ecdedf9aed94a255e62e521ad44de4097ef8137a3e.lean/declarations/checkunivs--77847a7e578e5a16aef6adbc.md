# checkUnivs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:472b47fd040faf790a86c3d60b2b616f8f5dc2e3b31acc92c550526dcff3d957",
  "kind": "def",
  "lexical_name": "checkUnivs",
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
  "slug": "checkunivs--77847a7e578e5a16aef6adbc",
  "source": {
    "blob": "a84cfcb8e97c6f01740e7b182c3dca355da637d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77847a7e578e5a16aef6adbc669d00a9973507590472cb49891e301204e64786",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:472b47fd040faf790a86c3d60b2b616f8f5dc2e3b31acc92c550526dcff3d957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[std_linter] def checkUnivs : Linter where
  noErrorsFound :=
    "All declarations have good universe levels."
  errorsFound := "THE STATEMENTS OF THE FOLLOWING DECLARATIONS HAVE BAD UNIVERSE LEVELS. " ++
"This usually means that there is a `max u v` in the type where neither `u` nor `v` " ++
"occur by themselves. Solution: Find the type (or type bundled with data) that has this " ++
"universe argument and provide the universe level explicitly. If this happens in an implicit " ++
"argument of the declaration, a better solution is to move this argument to a `variables` " ++
"command (then it's not necessary to provide the universe level).
It is possible that this linter gives a false positive on definitions where the value of the " ++
"definition has the universes occur separately, and the definition will usually be used with " ++
"explicit universe arguments. In this case, feel free to add `@[nolint checkUnivs]`."
  isFast := true
  test declName := do
    if ← isAutoDecl declName then return none
    let bad := badParams (univParamsGrouped (← getConstInfo declName).type declName).toArray
    if bad.isEmpty then return none
    return m!"universes {bad} only occur together."

/-- A linter for checking that declarations aren't syntactic tautologies.
Checks whether a lemma is a declaration of the form `∀ a b ... z, e₁ = e₂`
where `e₁` and `e₂` are identical exprs.
We call declarations of this form syntactic tautologies.
Such lemmas are (mostly) useless and sometimes introduced unintentionally when proving basic facts
with rfl when elaboration results in a different term than the user intended. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a84cfcb8e97c6f01740e7b182c3dca355da637d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
