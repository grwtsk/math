# synthIsAnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98c6d12a6a2ab58c7c756ac6ccaca18a252cd83e45514211fe55ccb8e9b3b797",
  "kind": "def",
  "lexical_name": "synthIsAnd",
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
  "slug": "synthisand--fb01e96621ac974d4276fd98",
  "source": {
    "blob": "6cd17f0696d12f4ff120b1fe46df7ad92833b3fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb01e96621ac974d4276fd986863a7e1640c7c5997ab4a9318f97d44117d803e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98c6d12a6a2ab58c7c756ac6ccaca18a252cd83e45514211fe55ccb8e9b3b797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def synthIsAnd (u : Level) (σs H : Expr) : OptionT MetaM (Expr × Expr × Expr) := do
  if let some (_u, _σs, H₁, H₂) := parseAnd? H.consumeMData then
    return (H₁, H₂, mkApp2 (mkConst ``SPred.bientails.refl [u]) σs H)
  try
    let H₁ ← mkFreshExprMVar (mkApp (mkConst ``SPred [u]) σs)
    let H₂ ← mkFreshExprMVar (mkApp (mkConst ``SPred [u]) σs)
    let inst ← synthInstance (mkApp4 (mkConst ``IsAnd [u]) σs H H₁ H₂)
    return (H₁, H₂, mkApp5 (mkConst ``IsAnd.to_and [u]) σs H H₁ H₂ inst)
  catch _ => failure

-- Produce a proof for Q ∧ H ⊢ₛ T by opening a new goal P ⊢ₛ T, where P ⊣⊢ₛ Q ∧ H.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant3af6fc1cc51ab67e1bb9f4398bb7584cb7e8b1fd48594cb9dfd96b11bd1f54c1.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd17f0696d12f4ff120b1fe46df7ad92833b3fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
