# centeredTypeTwoLogBlock_eq_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9a18fd9-ec9f-755b-cae9-48b98a9f4986",
  "kind": "theorem",
  "lexical_name": "centeredTypeTwoLogBlock_eq_rows",
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
  "slug": "centeredtypetwologblock-eq-rows--41067a7e8a8b8eaaf99f4ebb",
  "source": {
    "blob": "af553f689bf64423082d3c47bed3dcb1c5155b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41067a7e8a8b8eaaf99f4ebba97c7e95464e5e6fb7a6f0d37971ef02c02cde9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9a18fd9-ec9f-755b-cae9-48b98a9f4986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTypeTwoLogBlock_eq_rows (A : ℝ) (c : ℕ × ℕ) :
    centeredTypeTwoLogBlock A c = ∑ m ∈ logLongInventory A c.1, vonMangoldt m *
      ∑ n ∈ innerInventory A m c.2, centeredBeta (vaughanCutoff A) n *
        sourcePlainWeight A ((m*n : ℕ) : ℝ) := by
  classical
  have he : logBlockPairs A c =
      ((logLongInventory A c.1).product (logLongInventory A c.2)).filter
        (fun q ↦ q.2 ≠ q.1 ∧ q.1*q.2 ≤ sourceKernelCutoff A) := by
    rcases c with ⟨i,j⟩
    ext ⟨m,n⟩
    simp only [logBlockPairs, longOffDiagonalPairs, logLongInventory, logPairIndex,
      Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product, Prod.mk.injEq]
    tauto
  unfold centeredTypeTwoLogBlock innerInventory
  rw [he]
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> ring

/-- The actual signed mu-Lambda kernel after finite Abelization of both row pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af553f689bf64423082d3c47bed3dcb1c5155b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
