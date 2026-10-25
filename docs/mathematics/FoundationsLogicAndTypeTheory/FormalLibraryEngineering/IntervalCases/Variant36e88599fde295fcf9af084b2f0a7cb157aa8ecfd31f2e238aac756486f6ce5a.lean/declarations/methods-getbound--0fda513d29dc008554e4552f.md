# Methods.getBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f29279184d30a324b189edf76e6dda2747cd198a1bd9d84c21b2ed1221804751",
  "kind": "def",
  "lexical_name": "Methods.getBound",
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
  "slug": "methods-getbound--0fda513d29dc008554e4552f",
  "source": {
    "blob": "d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fda513d29dc008554e4552f47fd8cd3d3ccdb0aba186293ae8d6f5e1c049f2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f29279184d30a324b189edf76e6dda2747cd198a1bd9d84c21b2ed1221804751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Methods.getBound (m : Methods) (e : Expr) (pf : Expr) (lb : Bool) :
    MetaM (Bound × Expr × Expr) := do
  let (e', c) ← match ← parseBound (← inferType pf), lb with
    | (b, a, false, false), false =>
      let (z, a', eq) ← m.eval a; pure (b, .le z, a', ← mkAppM ``of_not_lt_left #[pf, eq])
    | (b, a, false, false), true =>
      let (z, b', eq) ← m.eval b; pure (a, .le z, b', ← mkAppM ``of_not_lt_right #[pf, eq])
    | (a, b, false, true), false =>
      let (z, b', eq) ← m.eval b; pure (a, .le z, b', ← mkAppM ``of_le_right #[pf, eq])
    | (a, b, false, true), true =>
      let (z, a', eq) ← m.eval a; pure (b, .le z, a', ← mkAppM ``of_le_left #[pf, eq])
    | (b, a, true, false), false =>
      let (z, a', eq) ← m.eval a; pure (b, .lt z, a', ← mkAppM ``of_not_le_left #[pf, eq])
    | (b, a, true, false), true =>
      let (z, b', eq) ← m.eval b; pure (a, .lt z, b', ← mkAppM ``of_not_le_right #[pf, eq])
    | (a, b, true, true), false =>
      let (z, b', eq) ← m.eval b; pure (a, .lt z, b', ← mkAppM ``of_lt_right #[pf, eq])
    | (a, b, true, true), true =>
      let (z, a', eq) ← m.eval a; pure (b, .lt z, a', ← mkAppM ``of_lt_left #[pf, eq])
  let .true ← withNewMCtxDepth <| withReducible <| isDefEq e e' | failure
  pure c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
