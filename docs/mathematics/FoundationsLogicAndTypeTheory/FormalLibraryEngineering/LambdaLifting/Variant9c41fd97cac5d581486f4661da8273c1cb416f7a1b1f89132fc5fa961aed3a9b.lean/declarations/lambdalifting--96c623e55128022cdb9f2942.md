# lambdaLifting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ff3469efa431862709e89e2ab8b79d21537f19a2dd2d4c6b1c8b0c3e22d0bdd",
  "kind": "def",
  "lexical_name": "lambdaLifting",
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
  "slug": "lambdalifting--96c623e55128022cdb9f2942",
  "source": {
    "blob": "b7e83a06899c59c442d1c3c1746763ef0ed1505f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96c623e55128022cdb9f2942b1a9d42746f7a034fa7ecc0785c12929f8e2e934",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ff3469efa431862709e89e2ab8b79d21537f19a2dd2d4c6b1c8b0c3e22d0bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lambdaLifting : Pass where
  phase      := .mono
  phaseOut   := .mono
  name       := `lambdaLifting
  run        := fun decls => do
    decls.foldlM (init := #[]) fun decls decl =>
      return decls ++ (← decl.lambdaLifting false true (suffix := `_lam))

/--
During eager lambda lifting, we inspect declarations that are not inlineable or instances (doing it
everywhere can accidentally introduce mutual recursion which the compiler cannot handle well at the
moment). We then lift local function declarations that take local instances as parameters from
their body to ensure they are specialized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7e83a06899c59c442d1c3c1746763ef0ed1505f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
