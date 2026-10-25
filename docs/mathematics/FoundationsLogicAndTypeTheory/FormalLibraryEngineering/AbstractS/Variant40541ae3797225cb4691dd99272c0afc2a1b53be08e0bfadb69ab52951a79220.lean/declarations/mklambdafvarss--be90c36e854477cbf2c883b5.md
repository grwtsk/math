# mkLambdaFVarsS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48c9fde882545b0d6f27312565771787e2e4dc1f7de02cc7a9dbd1b4ffa2e95c",
  "kind": "def",
  "lexical_name": "mkLambdaFVarsS",
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
  "slug": "mklambdafvarss--be90c36e854477cbf2c883b5",
  "source": {
    "blob": "3f8f33bd00a0f8a442b33eca5b229fcd423a2530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be90c36e854477cbf2c883b5a32401bcb2c0dfed830a194eb3c80fe9a3969e82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48c9fde882545b0d6f27312565771787e2e4dc1f7de02cc7a9dbd1b4ffa2e95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkLambdaFVarsS (xs : Array Expr) (e : Expr) : SymM Expr := do
  let b ← abstractFVars e xs
  xs.size.foldRevM (init := b) fun i _ b => do
    let x := xs[i]
    let decl ← x.fvarId!.getDecl
    let type ← abstractFVarsRange decl.type i xs
    mkLambdaS decl.userName decl.binderInfo type b

/--
Similar to `mkForallFVars`, but uses the more efficient `abstractFVars` and `abstractFVarsRange`,
and makes the same assumption made by these functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f8f33bd00a0f8a442b33eca5b229fcd423a2530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
