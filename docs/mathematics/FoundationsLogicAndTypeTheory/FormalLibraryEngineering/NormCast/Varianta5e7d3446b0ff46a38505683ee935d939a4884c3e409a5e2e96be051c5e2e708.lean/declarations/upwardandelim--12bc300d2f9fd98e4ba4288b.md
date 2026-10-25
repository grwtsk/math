# upwardAndElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97c4926c4e28f6794378822567d5bab02d5098489753f28dbb6cbbd23e01c386",
  "kind": "def",
  "lexical_name": "upwardAndElim",
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
  "slug": "upwardandelim--12bc300d2f9fd98e4ba4288b",
  "source": {
    "blob": "a2dfa2b9cb87567b69705c29c93b23f7b2344644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12bc300d2f9fd98e4ba4288b331d1d1ac5b6b759bc44fda40700674fdf8aee94",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97c4926c4e28f6794378822567d5bab02d5098489753f28dbb6cbbd23e01c386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def upwardAndElim (up : SimpTheorems) (e : Expr) : SimpM Simp.Step := do
  -- Remark: we set `wellBehavedDischarge := false` because `prove` may access arbitrary elements in the local context.
  -- See comment at `Methods.wellBehavedDischarge`
  let r ← withDischarger prove (wellBehavedDischarge := false) do
    Simp.rewrite? e up.post up.erased (tag := "squash") (rflOnly := false)
  let r := r.getD { expr := e }
  let r ← r.mkEqTrans (← splittingProcedure r.expr)
  if r.expr == e then return Simp.Step.done {expr := e}
  return Simp.Step.visit r

/--
If possible, rewrites `(n : α)` to `(Nat.cast n : α)` where `n` is a numeral and `α ≠ ℕ`.
Returns a pair of the new expression and proof that they are equal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Varianta5e7d3446b0ff46a38505683ee935d939a4884c3e409a5e2e96be051c5e2e708.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dfa2b9cb87567b69705c29c93b23f7b2344644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
