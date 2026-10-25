# RestrictsToBitMaskCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b0e3984113a2c16b56e7420c1b13450a0ca7cde8f7569fc37a5c3360de52e81",
  "kind": "def",
  "lexical_name": "RestrictsToBitMaskCover",
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
  "slug": "restrictstobitmaskcover--2e368e9ab6c74e9bab0ef87c",
  "source": {
    "blob": "d4efa27058028a2cbaf9ec3f26208c00dfd1dbca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e368e9ab6c74e9bab0ef87c425d12fd711c0dd9e09be051d25eb2fcb4c65472",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b0e3984113a2c16b56e7420c1b13450a0ca7cde8f7569fc37a5c3360de52e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RestrictsToBitMaskCover
    {M : BitMatrix} {cover : BitMaskCover M}
    (global : BitMaskLookupSection M cover)
    (family : CompatibleBitMaskFamily M cover) : Prop :=
  ∀ (mask : BitMask M) (hmask : mask ∈ cover.masks)
    (i : Fin (M.rows * M.cols))
    (hmaskContains : mask.contains i = true)
    (hcoverContains :
      (cover.masks.any (fun coverMask => coverMask.contains i)) = true),
    global i hcoverContains =
      family.sectionAt mask hmask i hmaskContains

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4efa27058028a2cbaf9ec3f26208c00dfd1dbca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
