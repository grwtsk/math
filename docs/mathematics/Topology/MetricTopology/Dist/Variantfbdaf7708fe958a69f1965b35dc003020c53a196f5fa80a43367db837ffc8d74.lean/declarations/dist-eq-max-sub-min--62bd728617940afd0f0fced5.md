# dist_eq_max_sub_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d92a96f-d2ac-1ac5-2678-de7e3af39be5",
  "kind": "theorem",
  "lexical_name": "dist_eq_max_sub_min",
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
  "slug": "dist-eq-max-sub-min--62bd728617940afd0f0fced5",
  "source": {
    "blob": "3d7d0c4ce22e7087bcbf76c696cf34d2c5c70b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 92,
    "path": "GRWTSK/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62bd728617940afd0f0fced5b1d0ed465996c3d077826c35f8dc997c2ed59f8e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d92a96f-d2ac-1ac5-2678-de7e3af39be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_eq_max_sub_min {i j : ℕ} : dist i j = (max i j) - min i j :=
  Or.elim (lt_or_ge i j)
  (by intro h; rw [max_eq_right_of_lt h, min_eq_left_of_lt h, dist_eq_sub_of_le (Nat.le_of_lt h)])
  (by intro h; rw [max_eq_left h, min_eq_right h, dist_eq_sub_of_le_right h])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7d0c4ce22e7087bcbf76c696cf34d2c5c70b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
