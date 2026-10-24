# parityCenteredAffineFourMobiusDegenerateAtCenterLag_eq_threeWeightedBinary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fc1a5b0-cd58-1060-1840-9e8cf8e9ead2",
  "kind": "theorem",
  "lexical_name": "parityCenteredAffineFourMobiusDegenerateAtCenterLag_eq_threeWeightedBinary",
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
  "slug": "paritycenteredaffinefourmobiusdegenerateatcenterlag-eq-threeweightedbina--234070a77ad65d5afdb204a6",
  "source": {
    "blob": "c03ff73a0056db019c6da682fd50a851e7128ba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234070a77ad65d5afdb204a666d61703a2b7ffdb9c00475df0765521fc69cfe5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fc1a5b0-cd58-1060-1840-9e8cf8e9ead2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityCenteredAffineFourMobiusDegenerateAtCenterLag_eq_threeWeightedBinary
    (b r c ell : ℕ)
    (H : Finset ℕ)
    (hell : 0 < ell)
    (hHpos : ∀ h ∈ H, 0 < h) :
    parityCenteredAffineFourMobiusDegenerateAtCenterLag b r c ell H =
      parityCenteredAffineWeightedBinarySumCollision b r c ell H +
      parityCenteredAffineWeightedBinaryRightDifferenceCollision b r c ell H +
      parityCenteredAffineWeightedBinaryLeftDifferenceCollision b r c ell H := by
  classical
  unfold parityCenteredAffineFourMobiusDegenerateAtCenterLag
    centeredAffineFourMobiusDegenerateShiftPairs
    parityCenteredAffineWeightedBinarySumCollision
    parityCenteredAffineWeightedBinaryRightDifferenceCollision
    parityCenteredAffineWeightedBinaryLeftDifferenceCollision
    centeredAffineCollisionShiftPairs
    centeredAffineWeightedBinaryCollisionCoefficient
    centeredAffineFourMobiusDegenerate
    centeredAffineCollisionTypeHolds
  -- Partition the filtered product by the three mutually exclusive relations.
  rw [← Finset.sum_filter_add_sum_filter_neg_eq]
  -- The remaining finite Boolean partition is elementary on positive shifts.
  apply Finset.sum_congr
  · ext p
    simp only [Finset.mem_filter, Finset.mem_product]
    constructor
    · intro hp
      exact hp
    · intro hp
      exact hp
  · intro p hp
    obtain ⟨hpH, hpG⟩ := Finset.mem_product.mp hp
    have hh : 0 < p.1 := hHpos p.1
      ((Finset.mem_filter.mp hpH).1)
    have hg : 0 < p.2 := hHpos p.2
      ((Finset.mem_filter.mp hpG).1)
    have hexcl :=
      centeredAffineCollisionRelations_pairwiseExclusive hell hh hg
    simp [hexcl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c03ff73a0056db019c6da682fd50a851e7128ba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
