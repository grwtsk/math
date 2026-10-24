# diagonal_density_active

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1370951a-3906-267d-c16a-11d3e5f7163e",
  "kind": "theorem",
  "lexical_name": "diagonal_density_active",
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
  "slug": "diagonal-density-active--8f5d0ccc15886086a1d0a28e",
  "source": {
    "blob": "2a2dcb692aca52f506e6375dcd47d714990ed8e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f5d0ccc15886086a1d0a28e221323dd0dccbd607fd3b50c88a1c4f1aa863a0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1370951a-3906-267d-c16a-11d3e5f7163e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_density_active {u T : ℝ} (hut : u ≤ T) :
    diagonalDensity T u = diagonalDensity u u := by
  unfold diagonalDensity
  symm
  apply Finset.sum_subset (inventory_mono hut)
  intro n hn hnot
  have hnOne := (Finset.mem_Icc.mp hn).1
  have hnotArrived : ¬ Real.log (n : ℝ) ≤ u := by
    intro harrived
    exact hnot ((admitted_iff_arrived hnOne).mpr harrived)
  rw [response_of_not_arrived hnotArrived]
  simp

/-- Harmonic majorization is taken only after retaining each literal diagonal
response; it does not estimate the signed cross contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DiagonalEnergyBounds.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2dcb692aca52f506e6375dcd47d714990ed8e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
