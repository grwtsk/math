# coe_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc2396d-66d4-c578-afe6-5c29847e6194",
  "kind": "lemma",
  "lexical_name": "coe_disjoint",
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
  "slug": "coe-disjoint--fb45ae8a15796bdd2c708d7b",
  "source": {
    "blob": "d7a54c643bb78f8ced2299eba563fcc50d7cda48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 362,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb45ae8a15796bdd2c708d7b6e34426c35c77b1c606a447607fe9760f2e8c9e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc2396d-66d4-c578-afe6-5c29847e6194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_disjoint {s t : Clopens α} : Disjoint (s : Set α) t ↔ Disjoint s t := by
  simp [disjoint_iff, ← SetLike.coe_set_eq]

end Clopens

/-! ### Irreducible closed sets -/

/-- The type of irreducible closed subsets of a topological space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variantafa4775ebc0e4a01ca4c179bef69fdace6bba7e918a3a5e9d613fcdc32d6063b.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a54c643bb78f8ced2299eba563fcc50d7cda48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
