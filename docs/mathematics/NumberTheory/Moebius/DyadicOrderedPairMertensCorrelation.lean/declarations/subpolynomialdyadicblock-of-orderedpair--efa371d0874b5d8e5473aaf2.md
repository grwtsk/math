# subpolynomialDyadicBlock_of_orderedPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00b6ec80-a985-b912-899d-cb18eede8bb2",
  "kind": "theorem",
  "lexical_name": "subpolynomialDyadicBlock_of_orderedPair",
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
  "slug": "subpolynomialdyadicblock-of-orderedpair--efa371d0874b5d8e5473aaf2",
  "source": {
    "blob": "00aa20b040a9182f002109f3c38484a941fb37e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 237,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efa371d0874b5d8e5473aaf22d2db3a0c455c14500dcb2ab0bf8a42f9a93b297",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b6ec80-a985-b912-899d-cb18eede8bb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialDyadicBlock_of_orderedPair
    (hpair : SubpolynomialDyadicOrderedPairMertensCorrelation) :
    SubpolynomialDyadicBlockWeightedMertensSquare := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hpair δ hδ
  refine ⟨C + 1, add_nonneg hC zero_le_one, ?_⟩
  intro j
  let S : ℝ := (((2 ^ j : ℕ) : ℝ) ^ δ)
  have hS : 1 ≤ S := by
    dsimp [S]
    exact one_le_dyadic_rpow hδ j
  calc
    weightedMertensDyadicBlock j =
        weightedMertensDyadicDiagonal j +
          weightedMertensDyadicOrderedPairCorrelation j :=
      weightedMertensDyadicBlock_eq_diagonal_add_orderedPair j
    _ ≤ 1 + C * S :=
      add_le_add (weightedMertensDyadicDiagonal_le_one j) (hbound j)
    _ ≤ S + C * S := add_le_add hS le_rfl
    _ = (C + 1) * S := by ring

/-- The individual positive block criterion and the signed ordered-pair
criterion are exactly equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00aa20b040a9182f002109f3c38484a941fb37e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
