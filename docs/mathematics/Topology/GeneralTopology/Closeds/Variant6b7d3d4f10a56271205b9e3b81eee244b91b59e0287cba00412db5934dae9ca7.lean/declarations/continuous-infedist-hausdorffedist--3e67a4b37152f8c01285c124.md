# continuous_infEdist_hausdorffEdist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bd399c1-f7e9-aabe-cdd4-c813fb22cca4",
  "kind": "theorem",
  "lexical_name": "continuous_infEdist_hausdorffEdist",
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
  "slug": "continuous-infedist-hausdorffedist--3e67a4b37152f8c01285c124",
  "source": {
    "blob": "7994cce4e7da61c05119b1266e0fd9ed6f629fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e67a4b37152f8c01285c12435897c581f70a74fc9dd5d062e17764456cdaab7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bd399c1-f7e9-aabe-cdd4-c813fb22cca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_infEdist_hausdorffEdist :
    Continuous fun p : α × Closeds α => infEdist p.1 p.2 := by
  refine' continuous_of_le_add_edist 2 (by simp) _
  rintro ⟨x, s⟩ ⟨y, t⟩
  calc
    infEdist x s ≤ infEdist x t + hausdorffEdist (t : Set α) s :=
      infEdist_le_infEdist_add_hausdorffEdist
    _ ≤ infEdist y t + edist x y + hausdorffEdist (t : Set α) s :=
      (add_le_add_right infEdist_le_infEdist_add_edist _)
    _ = infEdist y t + (edist x y + hausdorffEdist (s : Set α) t) := by
      rw [add_assoc, hausdorffEdist_comm]
    _ ≤ infEdist y t + (edist (x, s) (y, t) + edist (x, s) (y, t)) :=
      (add_le_add_left (add_le_add (le_max_left _ _) (le_max_right _ _)) _)
    _ = infEdist y t + 2 * edist (x, s) (y, t) := by rw [← mul_two, mul_comm]
set_option linter.uppercaseLean3 false in
#align emetric.continuous_infEdist_hausdorffEdist EMetric.continuous_infEdist_hausdorffEdist

/-- Subsets of a given closed subset form a closed set -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7994cce4e7da61c05119b1266e0fd9ed6f629fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
