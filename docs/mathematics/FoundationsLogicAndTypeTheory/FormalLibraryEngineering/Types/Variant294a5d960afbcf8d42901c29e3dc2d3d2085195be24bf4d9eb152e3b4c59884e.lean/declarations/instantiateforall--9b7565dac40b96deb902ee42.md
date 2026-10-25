# instantiateForall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:931ba512023b78877659a4e5b879e728f2bddd270e763629e272c744de46e1c0",
  "kind": "def",
  "lexical_name": "instantiateForall",
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
  "slug": "instantiateforall--9b7565dac40b96deb902ee42",
  "source": {
    "blob": "c0b10aedb80d8760a87cf5375eaa4e0aea15f74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b7565dac40b96deb902ee429da649c63183492565c9986a90d25919c9da933c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:931ba512023b78877659a4e5b879e728f2bddd270e763629e272c744de46e1c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instantiateForall (type : Expr) (ps : Array Expr) : CoreM Expr :=
  go 0 type
where
  go (i : Nat) (type : Expr) : CoreM Expr :=
    if h : i < ps.size then
      if let .forallE _ _ b _ := type.headBeta then
        go (i+1) (b.instantiate1 ps[i])
      else
        throwError "invalid instantiateForall, too many parameters"
    else
      return type
  termination_by ps.size - i

/--
Return `true` if `type` is a predicate.
Examples: `Nat → Prop`, `Prop`, `Int → Bool → Prop`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b10aedb80d8760a87cf5375eaa4e0aea15f74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
