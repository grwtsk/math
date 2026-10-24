# exists_rightBoundaryCollar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5551a70-eba5-33d9-2716-1fc4b6d60408",
  "kind": "theorem",
  "lexical_name": "exists_rightBoundaryCollar",
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
  "slug": "exists-rightboundarycollar--aca49852def6993d35fa5b49",
  "source": {
    "blob": "0cde97b4d3760c0ab2de7c0e653442de3c15fc55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aca49852def6993d35fa5b499b240789ad68d3d27c8f0dad24144b460c4a4a88",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5551a70-eba5-33d9-2716-1fc4b6d60408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rightBoundaryCollar (N : ℕ) : Nonempty (RightBoundaryCollar N) := by
  obtain ⟨δ, b, hδ, hcap, hb, hlower⟩ := exists_rightBoundary_norm_collar N
  have hne : ∀ z ∈ rightClosedBand N δ, poleNormalizedZeta z ≠ 0 := by
    intro z hz hzero
    have hbound := hlower z hz
    rw [hzero, norm_zero] at hbound
    exact (not_le_of_gt hb) hbound
  obtain ⟨cover⟩ := exists_finiteVariationCover_of_compact (rightClosedBand_isCompact N δ)
    (fun z _ => (differentiable_poleNormalizedZeta z).continuousAt) hne
  exact ⟨{ width := δ, lower := b, width_pos := hδ, width_le_quarter := hcap,
    lower_pos := hb, norm_lower := hlower, cover := cover }⟩

namespace RightBoundaryCollar

/-- The exact source-zero implication, not equality of unrelated coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cde97b4d3760c0ab2de7c0e653442de3c15fc55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
