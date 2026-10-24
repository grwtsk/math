# coreGrowingShiftQuarticDiagonalEnergy_eq_endpointActiveCells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:503d2948-5318-6153-5307-51994acd46fc",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticDiagonalEnergy_eq_endpointActiveCells",
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
  "slug": "coregrowingshiftquarticdiagonalenergy-eq-endpointactivecells--ad0cf174a306fd97cfd0846b",
  "source": {
    "blob": "b1bfa84eb99b3829a02980495e11decb5c0cf75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 119,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0cf174a306fd97cfd0846bdec6d6751f9d5b14259d07db4c4e26412a486727",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:503d2948-5318-6153-5307-51994acd46fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticDiagonalEnergy_eq_endpointActiveCells
    (j : ℕ) :
    coreGrowingShiftQuarticDiagonalEnergy j =
      coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy j := by
  unfold coreGrowingShiftQuarticDiagonalEnergy
    coreGrowingShiftQuarticEndpointActiveCellDiagonalEnergy
    coreGrowingShiftQuarticEndpointActiveCells
  simp only [Finset.sum_sigma]
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  unfold mertensTwoPointQuarticDiagonal
  apply Finset.sum_congr rfl
  intro b _hb
  rw [mertensTwoPointQuarticCell_diagonal_eq_sq]
  rfl

/-- Grouping the diagonal endpoint cells by `(h,b)` introduces their literal
depth multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfa84eb99b3829a02980495e11decb5c0cf75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
