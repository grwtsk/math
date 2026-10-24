# _root_.GRWTSK.Topology.GeneralTopology.UnitInterval.Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.Set.abs_projIcc_sub_projIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:130d963d-0af7-479c-afd9-9f99e911438d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.UnitInterval.Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.Set.abs_projIcc_sub_projIcc",
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
  "slug": "root-grwtsk-topology-generaltopology-unitinterval-variantafaccfe8ef4d9ea--fb9c736bc6987cb9bfdcafc5",
  "source": {
    "blob": "5f8e5c219d30cfff66dcefb4bc75774560033326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb9c736bc6987cb9bfdcafc5763f2a46aef31bbdbfcc2b0cf7416dededc76f66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130d963d-0af7-479c-afd9-9f99e911438d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.UnitInterval.Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.Set.abs_projIcc_sub_projIcc : (|projIcc a b h c - projIcc a b h d| : α) ≤ |c - d| := by
  wlog hdc : d ≤ c generalizing c d
  · rw [abs_sub_comm, abs_sub_comm c]; exact this (le_of_not_ge hdc)
  rw [abs_eq_self.2 (sub_nonneg.2 hdc),
    abs_eq_self.2 (sub_nonneg.2 <| mod_cast monotone_projIcc h hdc)]
  rw [← sub_nonneg] at hdc
  refine (max_sub_max_le_max _ _ _ _).trans (max_le (by rwa [sub_self]) ?_)
  refine ((le_abs_self _).trans <| abs_min_sub_min_le_max _ _ _ _).trans (max_le ?_ ?_)
  · rwa [sub_self, abs_zero]
  · exact (abs_eq_self.mpr hdc).le

/-- When `h : a ≤ b` and `δ > 0`, `addNSMul h δ` is a sequence of points in the closed interval
`[a,b]`, which is initially equally spaced but eventually stays at the right endpoint `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f8e5c219d30cfff66dcefb4bc75774560033326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
