# LratCert.toReflectionProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49635810a68f45d4b8b9938b6bda350e83a88839b6c04f6992fe607dd5c4393a",
  "kind": "def",
  "lexical_name": "LratCert.toReflectionProof",
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
  "slug": "lratcert-toreflectionproof--046338c2b4fcd55172a65103",
  "source": {
    "blob": "deb3c192d08f555c94eb4f621915c4a0212bbb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:046338c2b4fcd55172a65103c404b3cef70cd54b152270083796f9fe22ccce35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49635810a68f45d4b8b9938b6bda350e83a88839b6c04f6992fe607dd5c4393a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LratCert.toReflectionProof (cert : LratCert) (ctx : TacticContext)
    (reflectionResult : ReflectionResult) : MetaM Expr := do
  withTraceNode `Meta.Tactic.sat (fun _ => return "Compiling expr term") do
    mkAuxDecl ctx.exprDef reflectionResult.expr (mkConst ``BVLogicalExpr)

  withTraceNode `Meta.Tactic.sat (fun _ => return "Compiling proof certificate term") do
    mkAuxDecl ctx.certDef (toExpr cert) (mkConst ``String)

  let reflectedExpr := mkConst ctx.exprDef
  let certExpr := mkConst ctx.certDef
  let reflectionTerm := mkApp2 (mkConst ``verifyBVExpr) reflectedExpr certExpr

  withTraceNode `Meta.Tactic.sat (fun _ => return "Compiling and evaluating reflection proof term") do
    match (← nativeEqTrue `bv_decide reflectionTerm (axiomDeclRange? := (← getRef))) with
    | .notTrue =>
      throwError m!"Tactic `bv_decide` failed: The LRAT certificate could not be verified; \
        evaluating the following term returned `false`:{indentExpr reflectionTerm}"
    | .success auxProof =>
      return mkApp3 (mkConst ``unsat_of_verifyBVExpr_eq_true) reflectedExpr certExpr auxProof
where
  /--
  Add an auxiliary declaration. Only used to create constants that appear in our reflection proof.
  -/
  mkAuxDecl (name : Name) (value type : Expr) : CoreM Unit :=
    withOptions (fun opt => opt.set `compiler.extract_closed false) do
      addAndCompile <| .defnDecl {
        name := name,
        levelParams := [],
        type := type,
        value := value,
        hints := .abbrev,
        safety := .safe
      }

/--
Run a SAT solver to obtain an LRAT certificate and use it to produce a proof of UNSAT.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb3c192d08f555c94eb4f621915c4a0212bbb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
