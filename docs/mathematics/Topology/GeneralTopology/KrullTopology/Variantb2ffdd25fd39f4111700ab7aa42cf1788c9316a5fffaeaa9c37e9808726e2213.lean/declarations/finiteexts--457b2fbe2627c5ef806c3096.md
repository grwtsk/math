# finiteExts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f54a875c1e06b1132525c44d1742b9ef036ae510497a73e768c9df24b1ebbb2",
  "kind": "def",
  "lexical_name": "finiteExts",
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
  "slug": "finiteexts--457b2fbe2627c5ef806c3096",
  "source": {
    "blob": "7fa2e693e3125639c857d33a190d84f73a2d5559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457b2fbe2627c5ef806c3096827e252837dd1f9070740cea9c49533099e8d5e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f54a875c1e06b1132525c44d1742b9ef036ae510497a73e768c9df24b1ebbb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteExts (K : Type*) [Field K] (L : Type*) [Field L] [Algebra K L] :
    Set (IntermediateField K L) :=
  {E | FiniteDimensional K E}
#align finite_exts finiteExts

/-- Given a field extension `L/K`, `fixedByFinite K L` is the set of
subsets `Gal(L/E)` of `L ≃ₐ[K] L`, where `E/K` is finite -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa2e693e3125639c857d33a190d84f73a2d5559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
