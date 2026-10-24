# subpolynomialCoreBoundarySignedPacket_of_quadraticEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6407da16-b27f-1133-64d2-7309fb674ed7",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreBoundarySignedPacket_of_quadraticEnergy",
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
  "slug": "subpolynomialcoreboundarysignedpacket-of-quadraticenergy--bbe0d55bf46e4fb8fcd87e66",
  "source": {
    "blob": "6c6cb8113f894dba1bd8cde4bc610e910f0c75a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe0d55bf46e4fb8fcd87e662b09791623fd333e925017fe393062411b55914a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6407da16-b27f-1133-64d2-7309fb674ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreBoundarySignedPacket_of_quadraticEnergy
    (hEnergy : SubpolynomialBoundaryQuadraticEnergyProduct) :
    SubpolynomialCoreBoundarySignedPacket := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hEnergy δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  have hsq :
      coreBoundarySignedPacket j ^ 2 ≤
        (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 :=
    le_trans (coreBoundarySignedPacket_sq_le_quadraticEnergy j)
      (hbound j)
  have hright :
      0 ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
    exact mul_nonneg hC (by positivity)
  have habs := sq_le_sq.mp hsq
  simpa [abs_of_nonneg hright] using habs

/-- Exact source-facing localization obligation for any proposed Weak-Mertens
or spectral supplier.  A named conjecture does not inhabit this record by
citation alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6cb8113f894dba1bd8cde4bc610e910f0c75a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
