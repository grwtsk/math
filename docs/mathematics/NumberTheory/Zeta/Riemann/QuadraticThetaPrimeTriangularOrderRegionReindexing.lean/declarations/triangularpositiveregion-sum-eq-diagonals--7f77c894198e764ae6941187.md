# triangularPositiveRegion_sum_eq_diagonals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64310e8e-e05f-de16-b96c-e18e3919ef5a",
  "kind": "theorem",
  "lexical_name": "triangularPositiveRegion_sum_eq_diagonals",
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
  "slug": "triangularpositiveregion-sum-eq-diagonals--7f77c894198e764ae6941187",
  "source": {
    "blob": "fda3c14d19fd3d8c073df52a6e1562259e446227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f77c894198e764ae69411872020ccb795099c6a1a422bbdd7a9cbd6029d018b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64310e8e-e05f-de16-b96c-e18e3919ef5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangularPositiveRegion_sum_eq_diagonals
    (N : ℕ) (t : ℝ) :
    (∑ p ∈ triangularPositiveOffsetPairs N,
        triangularPairTerm t p) =
      ∑ d ∈ Finset.Ico 1 N,
        triangularPositiveDiagonal N d t := by
  rw [triangularPositiveOffsetPairs_eq_biUnion_diagonals]
  rw [Finset.sum_biUnion
    (triangularPositiveDiagonalPairs_pairwiseDisjoint N)]
  apply Finset.sum_congr rfl
  intro d hd
  unfold triangularPositiveDiagonal triangularPositiveDiagonalPairs
  rw [Finset.sum_image]
  · rfl
  · intro a ha b hb hab
    exact Nat.add_left_cancel (congrArg Prod.fst hab)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda3c14d19fd3d8c073df52a6e1562259e446227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
