# exists_polynomial_near_continuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14b5a528741abcaf924242b002ecf70cef82fb10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f6510c1-93da-e819-97b0-adbeac9cbcde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c376cd9-9fe6-d4a7-a3f6-8f32162841a0",
  "kind": "theorem",
  "lexical_name": "exists_polynomial_near_continuousMap",
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
  "slug": "exists-polynomial-near-continuousmap--3c057f4831fdeb8072bb554e",
  "source": {
    "blob": "14b5a528741abcaf924242b002ecf70cef82fb10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c057f4831fdeb8072bb554e4b19ac6964333d162b7acae4bb097cb6fe76a379",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c376cd9-9fe6-d4a7-a3f6-8f32162841a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_polynomial_near_continuousMap (a b : ℝ) (f : C(Set.Icc a b, ℝ)) (ε : ℝ)
    (pos : 0 < ε) : ∃ p : ℝ[X], ‖p.toContinuousMapOn _ - f‖ < ε := by
  have w := mem_closure_iff_frequently.mp (continuousMap_mem_polynomialFunctions_closure _ _ f)
  rw [Metric.nhds_basis_ball.frequently_iff] at w
  obtain ⟨-, H, ⟨m, ⟨-, rfl⟩⟩⟩ := w ε pos
  rw [Metric.mem_ball, dist_eq_norm] at H
  exact ⟨m, H⟩

/-- Another alternative statement of Weierstrass's theorem,
for those who like epsilons, but not bundled continuous functions.

Every real-valued function `ℝ → ℝ` which is continuous on `[a,b]`
can be approximated to within any `ε > 0` on `[a,b]` by some polynomial.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b5a528741abcaf924242b002ecf70cef82fb10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
