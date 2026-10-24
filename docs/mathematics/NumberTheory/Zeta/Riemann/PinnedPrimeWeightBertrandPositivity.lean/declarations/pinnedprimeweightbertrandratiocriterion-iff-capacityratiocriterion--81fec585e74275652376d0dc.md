# pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd698cd5-9489-fba1-b4d0-c3aca748df57",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion",
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
  "slug": "pinnedprimeweightbertrandratiocriterion-iff-capacityratiocriterion--81fec585e74275652376d0dc",
  "source": {
    "blob": "003448db9457ab87d48b6e1288fca0d2a1bc34f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81fec585e74275652376d0dcd4870cd91fe379997b2973d1a9a42b434801eee6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd698cd5-9489-fba1-b4d0-c3aca748df57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion
    (ρ : ℝ) :
    PinnedPrimeWeightBertrandRatioCriterionAt ρ ↔
      PinnedPrimeWeightCapacityRatioCriterionAt ρ := by
  constructor
  · intro hbertrand η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
      hbertrand η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j))).2
        (hstages j hj v hv)
  · intro hratio η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
      hratio η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    exact
      (pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
        (Nat.ne_of_gt (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j))).1
        (hstages j hj v hv)

/-- The same exact equivalence for one budget fixed before `eta`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003448db9457ab87d48b6e1288fca0d2a1bc34f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
