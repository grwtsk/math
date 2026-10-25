# fromLRATAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2d443c9596e9e7b6f57a806b11f1da57863f3bc7c64a8b34f2367001e8bc924",
  "kind": "def",
  "lexical_name": "fromLRATAux",
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
  "slug": "fromlrataux--34ae6c03ba9140221b81d2bc",
  "source": {
    "blob": "b4ab0143bb599d2d5e7474dd92188f75f89c80e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34ae6c03ba9140221b81d2bcf6875f9283287372421f3f1d9e2ba9585b65601e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2d443c9596e9e7b6f57a806b11f1da57863f3bc7c64a8b34f2367001e8bc924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromLRATAux (cnf lrat : String) (name : Name) : MetaM (Nat × Expr × Expr × Expr) := do
  let Parsec.ParseResult.success _ (nvars, arr) := Parser.parseDimacs cnf.mkIterator
    | throwError "parse CNF failed"
  if arr.isEmpty then throwError "empty CNF"
  let ctx' := buildConj arr 0 arr.size
  let ctxName ← mkAuxName (name ++ `ctx) 1
  addDecl <| Declaration.defnDecl {
    name := ctxName
    levelParams := []
    type        := mkConst ``Sat.Fmla
    value       := ctx'
    hints       := ReducibilityHints.regular 0
    safety      := DefinitionSafety.safe
  }
  let ctx := mkConst ctxName
  let Parsec.ParseResult.success _ steps := Parser.parseLRAT lrat.mkIterator
    | throwError "parse LRAT failed"
  let proof ← buildProof arr ctx ctx' steps
  let declName ← mkAuxName (name ++ `proof) 1
  addDecl <| Declaration.thmDecl {
    name := declName
    levelParams := []
    type        := mkApp2 (mkConst ``Sat.Fmla.proof) ctx (buildClause #[])
    value       := proof
  }
  return (nvars, ctx, ctx', mkConst declName)

/-- Main entry point. Given strings `cnf` and `lrat` with unparsed file data, and a name `name`,
adds `theorem name : type := proof` where `type` is a propositional theorem like
`∀ (a a_1 : Prop), (¬a ∧ ¬a_1 ∨ a ∧ ¬a_1) ∨ ¬a ∧ a_1 ∨ a ∧ a_1`.

Also creates auxiliaries named `name.ctx_1` (for the CNF formula)
and `name.proof_1` (for the LRAT proof), with `name` itself containing the reification proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4ab0143bb599d2d5e7474dd92188f75f89c80e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
