# logDiffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:588d4e54625986aeff389ccc8868b0ddbb5418807ac06b4e77ae5d889245fc9c",
  "kind": "def",
  "lexical_name": "logDiffs",
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
  "slug": "logdiffs--5b98c77f20a5b8d337cb584f",
  "source": {
    "blob": "57e47d862869fc601ac3d5fcc7abca08df27cb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b98c77f20a5b8d337cb584fb7b13752df7788919d7bfbe2faab5aad0b1f3f3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:588d4e54625986aeff389ccc8868b0ddbb5418807ac06b4e77ae5d889245fc9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logDiffs (tk : Syntax) (e₁ e₂ : Expr) : StateT (Array (Unit → MessageData)) MetaM Bool := do
  withOptions (fun opts => opts.setBool `pp.analyze true) do
  if ← withReducible (isDefEq e₁ e₂) then
    verbose m!"{checkEmoji} at reducible transparency,\
      {indentD e₁}\nand{indentD e₂}\nare defeq."
    -- They agree at reducible transparency, we're done.
    return false
  else
    verbose m!"{crossEmoji} at reducible transparency,\
      {indentD e₁}\nand{indentD e₂}\nare not defeq."
    if ← isDefEq e₁ e₂ then
      match e₁, e₂ with
      | Expr.app f₁ a₁, Expr.app f₂ a₂ =>
        if ← logDiffs tk a₁ a₂ then
          return true
        else
          if ← logDiffs tk f₁ f₂ then
            return true
          else
            logInfoAt tk m!"{crossEmoji} at reducible transparency,\
              {indentD e₁}\nand{indentD e₂}\nare not defeq, but they are at default transparency."
            return true
      | Expr.const _ _, Expr.const _ _ =>
        logInfoAt tk m!"{crossEmoji} at reducible transparency,\
          {indentD e₁}\nand{indentD e₂}\nare not defeq, but they are at default transparency."
        return true
      | _, _ =>
        verbose
          m!"{crossEmoji}{indentD e₁}\nand{indentD e₂}\nare not both applications or constants."
        return false
    else
        verbose
          m!"{crossEmoji}{indentD e₁}\nand{indentD e₂}\nare not defeq at default transparency."
      return false

/--
Checks that the input `Expr` represents a proof produced by `(e)rw` and returns the types of the
LHS of the equality being written (one from the target, the other from the lemma used).
These will be defeq, but not necessarily reducibly so.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e47d862869fc601ac3d5fcc7abca08df27cb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
