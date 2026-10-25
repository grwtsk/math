# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8289db24f5ec360e1c419a1a7cf91a0d5fa17e9318bcd586e2f2bd8cf05088ee",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.replace",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--84d04bf36f5f5cf8daef0b41",
  "source": {
    "blob": "517be6718779b9d272de21916cdd7048579236fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84d04bf36f5f5cf8daef0b41606f61386f25f406a9c7ccc82e4b92ac8f16dd58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8289db24f5ec360e1c419a1a7cf91a0d5fa17e9318bcd586e2f2bd8cf05088ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.replace
    (mvarId : MVarId) (fvarId : FVarId) (val : Expr) (type? : Option Expr := none) (userName? : Option Name := none) :
    MetaM AssertAfterResult :=
  mvarId.withContext do
    let type ← type?.getDM (inferType val)
    let userName ← userName?.getDM (LocalDecl.userName <$> fvarId.getDecl)
    let result ← mvarId.assertAfter' fvarId userName type val
    let mvarId ← result.mvarId.tryClear fvarId
    return { result with mvarId }

/--
  Replace type of the local declaration with id `fvarId` with one with the same user-facing name, but with type `typeNew`.
  This method assumes `eqProof` is a proof that the type of `fvarId` is equal to `typeNew`.
  This tactic actually adds a new declaration and (tries to) clear the old one.
  If the old one cannot be cleared, then at least its user-facing name becomes inaccessible.

  The new local declaration is inserted at the soonest point after `fvarId` at which it is
  well-formed. That is, if `typeNew` involves declarations which occur later than `fvarId` in the
  local context, the new local declaration will be inserted immediately after the latest-occurring
  one. Otherwise, it will be inserted immediately after `fvarId`.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517be6718779b9d272de21916cdd7048579236fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
