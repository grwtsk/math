# Pi.instIsTopologicalSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83b2669f1504552a31d373999b2a8a9ac9c2554a860e418197dab224bc7d3d8b",
  "kind": "instance",
  "lexical_name": "Pi.instIsTopologicalSemiring",
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
  "slug": "pi-instistopologicalsemiring--82f9464767fb43dec7982b47",
  "source": {
    "blob": "b381e3e7d7e0ce805971183c733e534f797f5311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82f9464767fb43dec7982b47629edf7bd3f817a361d3b47054ac72b387cca757",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83b2669f1504552a31d373999b2a8a9ac9c2554a860e418197dab224bc7d3d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instIsTopologicalSemiring {ι : Type*} {R : ι → Type*} [∀ i, TopologicalSpace (R i)]
    [∀ i, NonUnitalNonAssocSemiring (R i)] [∀ i, IsTopologicalSemiring (R i)] :
    IsTopologicalSemiring (∀ i, R i) where

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b381e3e7d7e0ce805971183c733e534f797f5311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
