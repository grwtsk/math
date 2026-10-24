# higherPrimePowerMoment_eq_atom_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c9325bf5af449a1242f97892fe957030625b577",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3203a1f3-6f97-2f14-c38f-c6b870d96541",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebbc8a71-77f2-3431-38d5-2100d12c87b5",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerMoment_eq_atom_sum",
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
  "slug": "higherprimepowermoment-eq-atom-sum--ef746039c7ab53ac9e915047",
  "source": {
    "blob": "6c9325bf5af449a1242f97892fe957030625b577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 202,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef746039c7ab53ac9e915047b6b6a5780852f8cca32b464eefdd7b985041bb66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebbc8a71-77f2-3431-38d5-2100d12c87b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerMoment_eq_atom_sum {A : ℝ} (hA : 0 < A) :
    higherPrimePowerMoment A = ∑ i ∈ higherAtomInventory A,
      higherAtomWeight i * (⟪originalSourceState A,
        translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re := by
  classical
  unfold higherPrimePowerMoment
  apply Finset.sum_bij (fun pk hp => higherInventoryIndex A ⟨pk, hp⟩)
  · intro pk hp
    exact Finset.mem_image.mpr ⟨⟨pk, hp⟩, Finset.mem_attach _ _, rfl⟩
  · intro pk hp qk hq he
    have hn := congrArg higherAtomCoordinates he
    simpa only [higherInventoryIndex_coordinates] using hn
  · intro i hi
    obtain ⟨pk, _, he⟩ := Finset.mem_image.mp hi
    exact ⟨pk.val, pk.property, he⟩
  · intro pk hp
    rw [higher_source_coefficient_eq hA]
    have h := higherInventoryIndex_coordinates A ⟨pk, hp⟩
    have hn : higherAtomNatural (higherInventoryIndex A ⟨pk, hp⟩) = pk.1 ^ pk.2 := by
      change ((higherAtomCoordinates (higherInventoryIndex A ⟨pk, hp⟩)).1 ^
        (higherAtomCoordinates (higherInventoryIndex A ⟨pk, hp⟩)).2) = _
      rw [h]
    rw [hn]

/-- The literal finite higher moment is the complete signed scalar coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV2Input/Variant854e91f574254bcfae897009cc316c0a31a24c72b3744161678ea1a88e4e7aab.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c9325bf5af449a1242f97892fe957030625b577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
