# ConvexCone.innerDualCone_of_innerDualCone_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a3d1078-bf25-8a72-0ffa-fadd4deb15fa",
  "kind": "theorem",
  "lexical_name": "ConvexCone.innerDualCone_of_innerDualCone_eq_self",
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
  "slug": "convexcone-innerdualcone-of-innerdualcone-eq-self--3781ac6ff4d3fbdb721f9377",
  "source": {
    "blob": "b00e0c7bc1353fa77366e141115051560074f50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3781ac6ff4d3fbdb721f93773fefdc48efc5940b728374d958cf4a54d5b9eecc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a3d1078-bf25-8a72-0ffa-fadd4deb15fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexCone.innerDualCone_of_innerDualCone_eq_self (K : ConvexCone ℝ H)
    (ne : (K : Set H).Nonempty) (hc : IsClosed (K : Set H)) :
    ((K : Set H).innerDualCone : Set H).innerDualCone = K := by
  ext x
  constructor
  · rw [mem_innerDualCone, ← SetLike.mem_coe]
    contrapose!
    exact K.hyperplane_separation_of_nonempty_of_isClosed_of_notMem ne hc
  · rintro hxK y h
    specialize h x hxK
    rwa [real_inner_comm]

end CompleteSpace

end Dual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/InnerDual/Variant9b83723434341fb0dc2eac1fc25d98db4bb0695d36fbeffbd291847d7099bc20.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00e0c7bc1353fa77366e141115051560074f50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
