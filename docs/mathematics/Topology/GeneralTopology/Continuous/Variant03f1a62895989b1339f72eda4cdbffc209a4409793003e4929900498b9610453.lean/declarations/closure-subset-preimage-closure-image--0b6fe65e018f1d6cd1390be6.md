# closure_subset_preimage_closure_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adfe14a6-c12b-a13a-1bd9-03e508c0ffa6",
  "kind": "theorem",
  "lexical_name": "closure_subset_preimage_closure_image",
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
  "slug": "closure-subset-preimage-closure-image--0b6fe65e018f1d6cd1390be6",
  "source": {
    "blob": "1944ed7b3b9d6ff1052c8e78160b6c21d4f00bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b6fe65e018f1d6cd1390be6741c9bdd948959f21eb38f737dadd49e066b0ef1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adfe14a6-c12b-a13a-1bd9-03e508c0ffa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_subset_preimage_closure_image (h : Continuous f) :
    closure s ⊆ f ⁻¹' closure (f '' s) :=
  (mapsTo_image _ _).closure h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1944ed7b3b9d6ff1052c8e78160b6c21d4f00bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
