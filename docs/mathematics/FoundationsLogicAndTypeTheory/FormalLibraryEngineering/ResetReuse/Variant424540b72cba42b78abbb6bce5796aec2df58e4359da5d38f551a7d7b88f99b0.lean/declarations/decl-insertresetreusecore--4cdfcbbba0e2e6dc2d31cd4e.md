# Decl.insertResetReuseCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb105cb22c5c087d5a5cc2cfef4f751f125479df5662e8c8eba2edb3a182a5ad",
  "kind": "def",
  "lexical_name": "Decl.insertResetReuseCore",
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
  "slug": "decl-insertresetreusecore--4cdfcbbba0e2e6dc2d31cd4e",
  "source": {
    "blob": "fc120590a914feecdd6c12d15ea43cc4569732d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cdfcbbba0e2e6dc2d31cd4eba69ca5c331b6fffa33a3d2e02e146ba70359800",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb105cb22c5c087d5a5cc2cfef4f751f125479df5662e8c8eba2edb3a182a5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Decl.insertResetReuseCore (decl : Decl .impure) : ReuseM (Decl .impure) := do
  let value ← decl.value.mapCodeM fun code => do
    let alreadyFound ←
      if (← read).relaxedReuse then
        pure (← (collectResets code).run {}).snd
      else
        pure {}
    withReader (fun ctx => { ctx with alreadyFound }) do
      code.insertResetReuse
  return { decl with value }
where
  collectResets (c : Code .impure) : StateRefT (PersistentHashSet FVarId) CompilerM Unit := do
    match c with
    | .let decl k =>
      if let .reset _ var := decl.value then
        modify fun s => s.insert var
      collectResets k
    | .uset _ _ _ k _ | .sset _ _ _ _ _ k _ => collectResets k
    | .jp decl k => collectResets decl.value; collectResets k
    | .cases c => c.alts.forM (collectResets ·.getCode)
    | .unreach .. | .return .. | .jmp .. => return ()
    | .inc .. | .dec .. | .setTag .. | .oset .. | .del .. => unreachable!


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc120590a914feecdd6c12d15ea43cc4569732d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
