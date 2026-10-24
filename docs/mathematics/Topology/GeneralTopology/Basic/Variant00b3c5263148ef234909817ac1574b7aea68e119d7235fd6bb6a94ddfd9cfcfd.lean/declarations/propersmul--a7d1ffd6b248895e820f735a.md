# ProperSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfb496a26a82105b3a2083f3d8d2ad82e2502fae6603e1eaee2923144efa6f5f",
  "kind": "class",
  "lexical_name": "ProperSMul",
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
  "slug": "propersmul--a7d1ffd6b248895e820f735a",
  "source": {
    "blob": "47fd39ea3d4f5931c87219cb28766b65076f3078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7d1ffd6b248895e820f735afd87d82dc0c3bc8f5f6011bcb01e5fd943c09925",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfb496a26a82105b3a2083f3d8d2ad82e2502fae6603e1eaee2923144efa6f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ProperSMul (G X : Type*) [TopologicalSpace G] [TopologicalSpace X] [Group G]
    [MulAction G X] : Prop where
  /-- Proper group action in the sense of Bourbaki:
  the map `G × X → X × X` is a proper map (see `IsProperMap`). -/
  isProperMap_smul_pair : IsProperMap (fun gx ↦ (gx.1 • gx.2, gx.2) : G × X → X × X)

attribute [to_additive existing] properSMul_iff

variable {G X : Type*} [Group G] [MulAction G X]
variable [TopologicalSpace G] [TopologicalSpace X]

/-- If a group acts properly then in particular it acts continuously. -/
@[to_additive /-- If a group acts properly then in particular it acts continuously. -/]
-- See note [lower instance property]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47fd39ea3d4f5931c87219cb28766b65076f3078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
