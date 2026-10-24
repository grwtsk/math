# ContentRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e6bfb751e34e2cafdb1632372b35ac5ab1ed152bd950668d0c415712a730989",
  "kind": "def",
  "lexical_name": "ContentRegular",
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
  "slug": "contentregular--b1ad9cb6d5b4503e116eafc0",
  "source": {
    "blob": "d18908f2655b45a60cc7102558d0cfec5e8e920f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 398,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1ad9cb6d5b4503e116eafc08085eaf1730f356f2f352fdc23105c6c29fe1eb9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e6bfb751e34e2cafdb1632372b35ac5ab1ed152bd950668d0c415712a730989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContentRegular :=
  ∀ ⦃K : TopologicalSpace.Compacts G⦄,
    μ K = ⨅ (K' : TopologicalSpace.Compacts G) (_ : (K : Set G) ⊆ interior (K' : Set G)), μ K'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant8817e5ab8986c7e0d4cd9eb3f0d837be0ebc819b1cb4893cc1880ca86ddfea68.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18908f2655b45a60cc7102558d0cfec5e8e920f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
