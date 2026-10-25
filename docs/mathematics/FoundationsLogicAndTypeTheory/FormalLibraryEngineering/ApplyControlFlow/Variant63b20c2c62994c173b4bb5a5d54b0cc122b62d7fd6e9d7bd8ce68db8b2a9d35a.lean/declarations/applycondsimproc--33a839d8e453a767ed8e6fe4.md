# applyCondSimproc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c5864dc7584b8c1826529161271995fe690a2cf4c93681bb4b268497327bc0b",
  "kind": "def",
  "lexical_name": "applyCondSimproc",
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
  "slug": "applycondsimproc--33a839d8e453a767ed8e6fe4",
  "source": {
    "blob": "2658bc11d5cc67d33a6de88c728ec14221f01f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33a839d8e453a767ed8e6fe489db5446e4a09009d0f48a2b3fdc4d4ce167dca9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c5864dc7584b8c1826529161271995fe690a2cf4c93681bb4b268497327bc0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def applyCondSimproc : Simp.Simproc := fun e => e.withApp fun fn args => do
  if h : args.size ≠ 0 then
    let_expr cond α c t e := args.back | return .continue
    let params := args.pop
    let fnApp := mkAppN fn params
    let newT := mkApp fnApp t
    let newE := mkApp fnApp e
    let newCond ← mkAppOptM ``cond #[none, c, newT, newE]
    let proof ← mkAppOptM ``Bool.apply_cond #[α, none, fnApp, c, t, e]
    return .visit { expr := newCond, proof? := some proof }
  else
    return .continue

/--
For `Prod.fst` and `ite` this function creates the path: `Prod.fst (ite (Prod _ _) _ _ _ _)`.
This path can be used to match on applications of structure projections onto control flow primitives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2658bc11d5cc67d33a6de88c728ec14221f01f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
