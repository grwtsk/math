# SeminormedGroup.ofMulDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe01cb84d3273734ad5d3d8bd2225e1218942169ed258482ad130136a2266673",
  "kind": "def",
  "lexical_name": "SeminormedGroup.ofMulDist",
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
  "slug": "seminormedgroup-ofmuldist--ba55520fbc9a8666e997cfe7",
  "source": {
    "blob": "11333086a01308793fd4e828669c952f211ad1e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba55520fbc9a8666e997cfe74ea93426bc0fdce33337aeef4375e72ef487bda8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe01cb84d3273734ad5d3d8bd2225e1218942169ed258482ad130136a2266673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SeminormedGroup.ofMulDist [Norm E] [Group E] [PseudoMetricSpace E]
    (h₁ : ∀ x : E, ‖x‖ = dist x 1) (h₂ : ∀ x y z : E, dist x y ≤ dist (x * z) (y * z)) :
    SeminormedGroup E where
  dist_eq x y := by
    rw [h₁]; apply le_antisymm
    · simpa only [div_eq_mul_inv, ← mul_right_inv y] using h₂ _ _ _
    · simpa only [div_mul_cancel', one_mul] using h₂ (x / y) 1 y
#align seminormed_group.of_mul_dist SeminormedGroup.ofMulDist
#align seminormed_add_group.of_add_dist SeminormedAddGroup.ofAddDist

/-- Construct a seminormed group from a multiplication-invariant pseudodistance. -/
@[to_additive "Construct a seminormed group from a translation-invariant pseudodistance."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11333086a01308793fd4e828669c952f211ad1e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
