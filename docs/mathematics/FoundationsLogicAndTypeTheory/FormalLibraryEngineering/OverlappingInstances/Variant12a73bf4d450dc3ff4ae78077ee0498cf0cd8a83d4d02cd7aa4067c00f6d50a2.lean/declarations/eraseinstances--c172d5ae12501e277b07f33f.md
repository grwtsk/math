# eraseInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9460455532ae8c01fae0e4b1d704d60e2b7ac92d8c3beea93fde6c979a74126",
  "kind": "def",
  "lexical_name": "eraseInstances",
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
  "slug": "eraseinstances--c172d5ae12501e277b07f33f",
  "source": {
    "blob": "4537705553edf48bcceecd2b5eec17511a5d0865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c172d5ae12501e277b07f33f98a720bca46c328b328a1d53cf9bc95a73a413b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9460455532ae8c01fae0e4b1d704d60e2b7ac92d8c3beea93fde6c979a74126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseInstances (e : Expr) : MetaM Expr := do
  e.withApp fun f args ↦ do
  let finfo ← getFunInfo f
  let mut args := args
  for param in finfo.paramInfo, i in *...args.size do
    if param.binderInfo.isInstImplicit then
      args := args.set! i default
  return mkAppN f args

/-- Compute the parent classes of `cls`, excluding parent classes that have a parent themselves.
The reason to exclude such classes is that if there is a duplication in such a class,
then there will necessarily also be a duplication in its parent.
If `cls` carries data, then only consider parents that carry data.
If `cls` is a non-structure class, this simply returns `#[cls]`.

The resulting expressions contain bound variables that correspond to the parameters of `cls`.
The universe levels and bound variables need to be instantiated to get concrete data projections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4537705553edf48bcceecd2b5eec17511a5d0865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
