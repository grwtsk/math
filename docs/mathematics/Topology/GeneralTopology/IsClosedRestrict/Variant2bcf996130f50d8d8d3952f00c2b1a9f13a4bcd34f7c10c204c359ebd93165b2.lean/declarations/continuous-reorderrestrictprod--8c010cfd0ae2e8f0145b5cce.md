# continuous_reorderRestrictProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64d0e7f2-8ca2-8017-8da2-8f6686a7897a",
  "kind": "lemma",
  "lexical_name": "continuous_reorderRestrictProd",
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
  "slug": "continuous-reorderrestrictprod--8c010cfd0ae2e8f0145b5cce",
  "source": {
    "blob": "4e719fdceccfb76966755c22ccf2079c02686357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c010cfd0ae2e8f0145b5cce077e7504def6f3d0441cec92c1119ad3f3ba76a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d0e7f2-8ca2-8017-8da2-8f6686a7897a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_reorderRestrictProd [∀ i, TopologicalSpace (α i)] :
    Continuous (reorderRestrictProd S s) := by
  refine continuous_pi fun j ↦ ?_
  simp only [reorderRestrictProd]
  split_ifs with h
  · fun_prop
  · exact ((continuous_apply _).comp continuous_subtype_val).comp continuous_fst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variant2bcf996130f50d8d8d3952f00c2b1a9f13a4bcd34f7c10c204c359ebd93165b2.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e719fdceccfb76966755c22ccf2079c02686357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
