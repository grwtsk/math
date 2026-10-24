# le_convexComb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17adb262-a421-1b46-2d29-d8c8f07f9d81",
  "kind": "theorem",
  "lexical_name": "le_convexComb",
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
  "slug": "le-convexcomb--3ff1c0ddef8403c929690b73",
  "source": {
    "blob": "5f8e5c219d30cfff66dcefb4bc75774560033326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff1c0ddef8403c929690b73fd15cbe1cd04f7e4a02596a99976180ed4981475",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17adb262-a421-1b46-2d29-d8c8f07f9d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_convexComb {a b : ℝ} {x y : Icc a b} (h : x ≤ y) (t : unitInterval) :
    x ≤ convexComb x y t := by
  rw [← Subtype.coe_le_coe] at h ⊢
  simp
  nlinarith [t.2.1, t.2.2]

@[grind .]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f8e5c219d30cfff66dcefb4bc75774560033326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
