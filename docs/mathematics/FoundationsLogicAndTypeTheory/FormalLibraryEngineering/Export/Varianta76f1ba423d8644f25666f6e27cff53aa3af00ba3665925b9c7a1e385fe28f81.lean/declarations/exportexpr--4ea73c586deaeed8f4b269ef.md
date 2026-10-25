# exportExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:797961287ab20cec087bad64dfa5a148d653a9001f7759e15c2c2ef4b88c1872",
  "kind": "def",
  "lexical_name": "exportExpr",
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
  "slug": "exportexpr--4ea73c586deaeed8f4b269ef",
  "source": {
    "blob": "b8318e9ce47b56a3808f14944bbd305c150620e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ea73c586deaeed8f4b269ef96504f6c903a4974e9b9aa0fbd3f1793d18ae3a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:797961287ab20cec087bad64dfa5a148d653a9001f7759e15c2c2ef4b88c1872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exportExpr (E : Expr) : ExportM Nat := do
  match (← get).exprs.map[E]? with
  | some i => pure i
  | none => match E with
    | .bvar n => let i ← alloc E; IO.println s!"{i} #EV {n}"; pure i
    | .fvar _ => unreachable!
    | .mvar _ => unreachable!
    | .sort l => let i ← alloc E; IO.println s!"{i} #ES {← exportLevel l}"; pure i
    | .const n ls =>
      exportDef n
      let i ← alloc E
      let mut s := s!"{i} #EC {← exportName n}"
      for l in ls do s := s ++ s!" {← exportLevel l}"
      IO.println s; pure i
    | .app e₁ e₂ =>
      let i ← alloc E; IO.println s!"{i} #EA {← exportExpr e₁} {← exportExpr e₂}"; pure i
    | .lam _ e₁ e₂ d =>
      let i ← alloc E
      IO.println s!"{i} #EL {biStr d} {← exportExpr e₁} {← exportExpr e₂}"; pure i
    | .forallE _ e₁ e₂ d =>
      let i ← alloc E
      IO.println s!"{i} #EP {biStr d} {← exportExpr e₁} {← exportExpr e₂}"; pure i
    | .letE _ e₁ e₂ e₃ _ =>
      let i ← alloc E
      IO.println s!"{i} #EP {← exportExpr e₁} {← exportExpr e₂} {← exportExpr e₃}"; pure i
    | .lit (.natVal n) => let i ← alloc E; IO.println s!"{i} #EN {n}"; pure i
    | .lit (.strVal s) => let i ← alloc E; IO.println s!"{i} #ET {s}"; pure i
    | .mdata _ _ => unreachable!
    | .proj n k e =>
      let i ← alloc E; IO.println s!"{i} #EJ {← exportName n} {k} {← exportExpr e}"; pure i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8318e9ce47b56a3808f14944bbd305c150620e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
