# seval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5504d081967b1b9d8ca9e94d5f84ec14f64b18d12a3405b2d33b247ef18cd4a1",
  "kind": "def",
  "lexical_name": "seval",
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
  "slug": "seval--dcfe07fce7bf99c958d143b0",
  "source": {
    "blob": "3a827dc4563a3afaefd4e052606efc0d052a06e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 509,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcfe07fce7bf99c958d143b01cffa3caf70e45d151fc3ccd251d7209251a8988",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5504d081967b1b9d8ca9e94d5f84ec14f64b18d12a3405b2d33b247ef18cd4a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def seval (e : Expr) : SimpM Result := do
  let m ← mkSEvalMethods
  let ctx ← mkSEvalContext
  let cacheSaved := (← get).cache
  let usedTheoremsSaved := (← get).usedTheorems
  try
    withReader (fun _ => m.toMethodsRef) do
    withTheReader Simp.Context (fun _ => ctx) do
    modify fun s => { s with cache := {}, usedTheorems := {} }
    simp e
  finally
    modify fun s => { s with cache := cacheSaved, usedTheorems := usedTheoremsSaved }

/--
Try to unfold ground term in the ground/symbolic evaluator.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a827dc4563a3afaefd4e052606efc0d052a06e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
