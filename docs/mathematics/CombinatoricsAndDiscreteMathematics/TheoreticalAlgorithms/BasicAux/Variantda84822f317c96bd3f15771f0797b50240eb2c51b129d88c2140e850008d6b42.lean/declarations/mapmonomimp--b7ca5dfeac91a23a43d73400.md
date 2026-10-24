# mapMonoMImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:017f86a33d4b818cf9b2e5116154129d86120e9264da3ee728b1b5260f4d4409",
  "kind": "def",
  "lexical_name": "mapMonoMImp",
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
  "slug": "mapmonomimp--b7ca5dfeac91a23a43d73400",
  "source": {
    "blob": "0819358cba3f7614f488280698f66ae0a8c0181d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7ca5dfeac91a23a43d73400743e78454e6c5fcde51982043ca85a0a8dd14eb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:017f86a33d4b818cf9b2e5116154129d86120e9264da3ee728b1b5260f4d4409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private unsafe def mapMonoMImp [Monad m] (as : Array α) (f : α → m α) : m (Array α) :=
  go 0 as
where
  @[specialize] go (i : Nat) (as : Array α) : m (Array α) := do
    if h : i < as.size then
      let a := as[i]
      let b ← f a
      if ptrEq a b then
        go (i+1) as
      else
        go (i+1) (as.set i b h)
    else
      return as

/--
Applies a monadic function to each element of an array, returning the array of results. The function is
monomorphic: it is required to return a value of the same type. The internal implementation uses
pointer equality, and does not allocate a new array if the result of each function call is
pointer-equal to its argument.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variantda84822f317c96bd3f15771f0797b50240eb2c51b129d88c2140e850008d6b42.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0819358cba3f7614f488280698f66ae0a8c0181d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
