# Topology.isInducing_prod_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d9d4eb2-efd1-2de9-fd77-fd00ae272517",
  "kind": "lemma",
  "lexical_name": "Topology.isInducing_prod_const",
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
  "slug": "topology-isinducing-prod-const--cbbdac7990f2b3651e736635",
  "source": {
    "blob": "9ece8a13e38809536f1374d157bab315735015e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 591,
    "path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbbdac7990f2b3651e7366357a9ce9936cf8a8f0199ef874503deeabb5bb6638",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9d4eb2-efd1-2de9-fd77-fd00ae272517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.isInducing_prod_const {y : Y} {f : X → Z} :
    IsInducing (fun x => (f x, y)) ↔ IsInducing f := by
  simp_rw [isInducing_iff, instTopologicalSpaceProd, induced_inf, induced_compose,
    Function.comp_def, induced_const, inf_top_eq]

@[deprecated (since := "2024-10-28")] alias inducing_prod_const := isInducing_prod_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ece8a13e38809536f1374d157bab315735015e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
