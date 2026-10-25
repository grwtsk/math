# filterByUnreach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05c3eeb83469fcf44e44ba0d96101455854797873b7adec565ec639665b00801",
  "kind": "def",
  "lexical_name": "filterByUnreach",
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
  "slug": "filterbyunreach--db37364b09202a33f0220a6e",
  "source": {
    "blob": "9e1292737799e09bfb85f114d9ff03b2c37f7a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant9995a04f652aaad83ef5d23d8bd056592a06f566ec21e163b237220be6d06171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db37364b09202a33f0220a6e3d6b9c197dc8f9c1e18c5e5292f41c36ffa1f343",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant9995a04f652aaad83ef5d23d8bd056592a06f566ec21e163b237220be6d06171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05c3eeb83469fcf44e44ba0d96101455854797873b7adec565ec639665b00801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def filterByUnreach (pu : Purity) (f : Expr → CompilerM Bool) : Probe (Decl pu) (Decl pu) :=
  filter (·.value.isCodeAndM go)
where
  go : Code pu → CompilerM Bool
  | .let _ k => go k
  | .fun decl k _ | .jp decl k => go decl.value <||> go k
  | .cases cs => cs.alts.anyM (go ·.getCode)
  | .jmp .. | .return .. => return false
  | .unreach typ  => f typ
  | .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) .. | .del (k := k) ..
  | .setTag (k := k) .. | .oset (k := k) .. => go k

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant9995a04f652aaad83ef5d23d8bd056592a06f566ec21e163b237220be6d06171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant9995a04f652aaad83ef5d23d8bd056592a06f566ec21e163b237220be6d06171.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1292737799e09bfb85f114d9ff03b2c37f7a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
