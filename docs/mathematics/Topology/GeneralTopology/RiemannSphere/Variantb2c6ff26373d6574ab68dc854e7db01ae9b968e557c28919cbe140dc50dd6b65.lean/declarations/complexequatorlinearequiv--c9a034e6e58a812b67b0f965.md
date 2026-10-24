# complexEquatorLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca5e1de93a52f9ad631bc00940aed36876977f0115fe97bdc4d4d958e208a924",
  "kind": "def",
  "lexical_name": "complexEquatorLinearEquiv",
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
  "slug": "complexequatorlinearequiv--c9a034e6e58a812b67b0f965",
  "source": {
    "blob": "583606b8698fbd1d87bbdf97ead5c08a98845262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9a034e6e58a812b67b0f9653e258d1ec79c73410786380eb81b5ddd6c35ba7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca5e1de93a52f9ad631bc00940aed36876977f0115fe97bdc4d4d958e208a924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def complexEquatorLinearEquiv : ℂ ≃ₗ[ℝ] EquatorPlane where
  toFun := planePoint
  invFun w := (1 / 2 : ℝ) • w.1.ofLp.1
  left_inv z := by
    simp [planePoint]
  right_inv w := by
    apply Subtype.ext
    apply WithLp.ofLp_injective 2
    apply Prod.ext
    · change (2 : ℝ) • ((1 / 2 : ℝ) • w.1.ofLp.1) = w.1.ofLp.1
      module
    · change 0 = w.1.ofLp.2
      exact (equator_second_eq_zero w).symm
  map_add' z w := by
    apply Subtype.ext
    apply WithLp.ofLp_injective 2
    change ((2 : ℝ) • (z + w), 0) =
      ((2 : ℝ) • z + (2 : ℝ) • w, 0 + 0)
    simp only [smul_add, add_zero]
  map_smul' r z := by
    apply Subtype.ext
    apply WithLp.ofLp_injective 2
    change ((2 : ℝ) • (r • z), 0) = (r • ((2 : ℝ) • z), r • 0)
    apply Prod.ext
    · simp only [smul_smul]
      congr 1
      ring
    · simp

/-- The coordinate equivalence is a homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583606b8698fbd1d87bbdf97ead5c08a98845262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
