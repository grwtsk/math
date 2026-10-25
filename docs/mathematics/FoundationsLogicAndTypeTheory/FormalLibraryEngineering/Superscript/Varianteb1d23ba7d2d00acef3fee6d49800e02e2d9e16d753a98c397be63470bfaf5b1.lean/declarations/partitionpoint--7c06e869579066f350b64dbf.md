# partitionPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d3caa9ac84b2051f1726fd47b88616007eb1d849c5142eb4024e38b2843d511",
  "kind": "def",
  "lexical_name": "partitionPoint",
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
  "slug": "partitionpoint--7c06e869579066f350b64dbf",
  "source": {
    "blob": "3bad3fa02a0a12d08c5b251021c5cf6c58482e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c06e869579066f350b64dbfa637f29fbdf4130930305667ee3f858d73e90f7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d3caa9ac84b2051f1726fd47b88616007eb1d849c5142eb4024e38b2843d511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partitionPoint (lo := 0) (hi := as.size) : Nat :=
  if lo < hi then
    let m := (lo + hi)/2
    let a := as[m]!
    if leftOfPartition a then
      partitionPoint (m+1) hi
    else
      partitionPoint lo m
  else lo
  termination_by hi - lo

/-- The core function for super/subscript parsing. It consists of three stages:

1. Parse a run of superscripted characters, skipping whitespace and stopping when we hit a
   non-superscript character.
2. Un-superscript the text and pass the body to the inner parser (usually `term`).
3. Take the resulting `Syntax` object and align all the positions to fit back into the original
   text (which as a side effect also rewrites all the substrings to be in subscript text).

If `many` is false, then whitespace (and comments) are not allowed inside the superscript.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bad3fa02a0a12d08c5b251021c5cf6c58482e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
