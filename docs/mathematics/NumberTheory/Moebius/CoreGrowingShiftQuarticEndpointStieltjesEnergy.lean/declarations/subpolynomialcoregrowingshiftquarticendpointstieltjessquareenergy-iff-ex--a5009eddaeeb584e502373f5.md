# subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_explicitCompensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:482e6799-de2c-cb47-6586-c951158c2e22",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_explicitCompensation",
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
  "slug": "subpolynomialcoregrowingshiftquarticendpointstieltjessquareenergy-iff-ex--a5009eddaeeb584e502373f5",
  "source": {
    "blob": "b1bfa84eb99b3829a02980495e11decb5c0cf75b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 340,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5009eddaeeb584e502373f5c63d7508b5335b21e513e0292d30fcad75a137f6",
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

Occurrence: `result:482e6799-de2c-cb47-6586-c951158c2e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy_iff_explicitCompensation :
    SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy ↔
      SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation := by
  constructor
  · intro hStieltjes δ hδ
    obtain ⟨C, hC, hbound⟩ := hStieltjes δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have h := hbound j
    rw [← coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes] at h
    linarith
  · intro hExplicit δ hδ
    obtain ⟨C, hC, hbound⟩ := hExplicit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have h := hbound j
    rw [← coreGrowingShiftQuarticDiagonal_add_two_endpointExplicitInterval_eq_stieltjes]
    linarith

/-- Exact equivalence with the inherited active binary-prefix square-energy
source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfa84eb99b3829a02980495e11decb5c0cf75b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
