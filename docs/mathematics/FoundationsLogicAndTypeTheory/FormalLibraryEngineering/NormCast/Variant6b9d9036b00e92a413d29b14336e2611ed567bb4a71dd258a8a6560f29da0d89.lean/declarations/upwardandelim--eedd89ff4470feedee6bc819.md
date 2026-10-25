# upwardAndElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38570fd32b34d295c73393322a3539384af4b981c46460341faecc5490e1359a",
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
  "slug": "upwardandelim--eedd89ff4470feedee6bc819",
  "source": {
    "blob": "c05f016986b765249671b5ddf7bf4dd9f9a90b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eedd89ff4470feedee6bc819cb1071cf8483510696373694ae62a7a29ca8bdfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38570fd32b34d295c73393322a3539384af4b981c46460341faecc5490e1359a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–174.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variant6b9d9036b00e92a413d29b14336e2611ed567bb4a71dd258a8a6560f29da0d89.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05f016986b765249671b5ddf7bf4dd9f9a90b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
