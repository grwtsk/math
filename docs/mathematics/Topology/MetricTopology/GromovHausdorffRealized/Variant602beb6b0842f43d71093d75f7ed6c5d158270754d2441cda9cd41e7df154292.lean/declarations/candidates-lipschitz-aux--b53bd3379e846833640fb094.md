# candidates_lipschitz_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d4d1010-1ca2-651b-cab6-f1ac6ed96669",
  "kind": "theorem",
  "lexical_name": "candidates_lipschitz_aux",
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
  "slug": "candidates-lipschitz-aux--b53bd3379e846833640fb094",
  "source": {
    "blob": "67f72d8b0c77b568d35ae990958bc3d1839de598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 179,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53bd3379e846833640fb0945b5740d2a893eac527d0d41b3292e91c75f6a929",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4d1010-1ca2-651b-cab6-f1ac6ed96669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem candidates_lipschitz_aux (fA : f ∈ candidates X Y) :
    f (x, y) - f (z, t) ≤ 2 * maxVar X Y * dist (x, y) (z, t) :=
  calc
    f (x, y) - f (z, t) ≤ f (x, t) + f (t, y) - f (z, t) := by gcongr; exact candidates_triangle fA
    _ ≤ f (x, z) + f (z, t) + f (t, y) - f (z, t) := by gcongr; exact candidates_triangle fA
    _ = f (x, z) + f (t, y) := by simp [sub_eq_add_neg, add_assoc]
    _ ≤ maxVar X Y * dist x z + maxVar X Y * dist t y := by
      gcongr <;> apply candidates_dist_bound fA
    _ ≤ maxVar X Y * max (dist x z) (dist t y) + maxVar X Y * max (dist x z) (dist t y) := by
      gcongr
      · apply le_max_left
      · apply le_max_right
    _ = 2 * maxVar X Y * max (dist x z) (dist y t) := by
      rw [dist_comm t y]
      ring
    _ = 2 * maxVar X Y * dist (x, y) (z, t) := rfl

/-- Candidates are Lipschitz -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f72d8b0c77b568d35ae990958bc3d1839de598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
