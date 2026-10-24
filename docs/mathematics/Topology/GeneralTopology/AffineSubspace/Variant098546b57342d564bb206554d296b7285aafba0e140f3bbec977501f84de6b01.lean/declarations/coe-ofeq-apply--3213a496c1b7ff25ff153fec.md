# coe_ofEq_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac90f3ca6d1e35602e403dcfdf98a33f5fe6335c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbebd560-5d13-739b-fd9a-7fb924869e19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acf8803b-b474-8606-b312-36bef2280aac",
  "kind": "theorem",
  "lexical_name": "coe_ofEq_apply",
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
  "slug": "coe-ofeq-apply--3213a496c1b7ff25ff153fec",
  "source": {
    "blob": "ac90f3ca6d1e35602e403dcfdf98a33f5fe6335c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3213a496c1b7ff25ff153fec7ca8abf95d9e702d4db14d70195b52dad7b82280",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf8803b-b474-8606-b312-36bef2280aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_ofEq_apply {s t : AffineSubspace R P} [Nonempty s] [Nonempty t]
    (h : s = t) (x : s) : (ofEq h x : P) = x := AffineEquiv.coe_ofEq_apply s t h x

end AffineSubspace

namespace ContinuousAffineEquiv

variable {R V P W Q : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P] [AddCommGroup W] [Module R W] [TopologicalSpace Q] [AddTorsor W Q]

/-- A continuous affine equivalence restricts to a continuous affine equivalence between an affine
subspace and its image.

This is the continuous affine version of `AffineEquiv.affineSubspaceMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac90f3ca6d1e35602e403dcfdf98a33f5fe6335c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
