# propagateLt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a033f7cd296df083ea820cda01a9e32dc9ac5cac39d46bd9b9bc6f5117781459",
  "kind": "def",
  "lexical_name": "propagateLt",
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
  "slug": "propagatelt--534ec84e26487693ba68ed44",
  "source": {
    "blob": "2a5accc7848eccf91fdde5bb792b38f049012fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:534ec84e26487693ba68ed443b4f879faf3d1f08baae0833097f6d567a785aff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a033f7cd296df083ea820cda01a9e32dc9ac5cac39d46bd9b9bc6f5117781459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateLt (e : Expr) (eqTrue : Bool) : GoalM Unit := do
  unless (← getConfig).lia do return ()
  let_expr LT.lt α _ a b := e | return ()
  ToIntM.run α do
    let some thm ← if eqTrue then getOfLT? else getOfNotLT? | return ()
    let gen ← getGeneration e
    let (a', h₁) ← toInt a
    let (b', h₂) ← toInt b
    let thm := mkApp6 thm a b a' b' h₁ h₂
    let (a', b') := if eqTrue then (mkIntAdd a' (mkIntLit 1), b') else (b', a')
    let lhs ← toLinearExpr a' gen
    let rhs ← toLinearExpr b' gen
    let p := lhs.sub rhs |>.norm
    let c := { p, h := .coreToInt e eqTrue thm lhs rhs : LeCnstr }
    c.assert

end Lean.Meta.Grind.Arith.Cutsat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a5accc7848eccf91fdde5bb792b38f049012fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
