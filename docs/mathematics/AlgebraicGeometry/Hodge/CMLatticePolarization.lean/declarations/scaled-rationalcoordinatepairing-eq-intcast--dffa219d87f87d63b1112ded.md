# scaled_rationalCoordinatePairing_eq_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30efa03b-9815-98a1-06ed-ea96433c0305",
  "kind": "theorem",
  "lexical_name": "scaled_rationalCoordinatePairing_eq_intCast",
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
  "slug": "scaled-rationalcoordinatepairing-eq-intcast--dffa219d87f87d63b1112ded",
  "source": {
    "blob": "19e703009cbd6ce4e9005b05b735e9b806d9c3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 119,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dffa219d87f87d63b1112ded3918638e156269bb0e8bbb07c2d377587b42ecb6",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30efa03b-9815-98a1-06ed-ea96433c0305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_rationalCoordinatePairing_eq_intCast
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    (latticeScale E X : ℚ) * rationalCoordinatePairing E X a b =
      (integralPairing E X a b : ℚ) := by
  unfold rationalCoordinatePairing integralPairing
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  rw [show
      (latticeScale E X : ℚ) *
          ((a i : ℚ) * pairingMatrix E X i j * (b j : ℚ)) =
        (a i : ℚ) *
          ((latticeScale E X : ℚ) * pairingMatrix E X i j) *
          (b j : ℚ) by ring]
  rw [scaled_pairingMatrix_entry E X i j]
  norm_cast

/-- Expanding both lattice vectors in the chosen basis identifies the rational
trace pairing with the rational coordinate matrix form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e703009cbd6ce4e9005b05b735e9b806d9c3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
