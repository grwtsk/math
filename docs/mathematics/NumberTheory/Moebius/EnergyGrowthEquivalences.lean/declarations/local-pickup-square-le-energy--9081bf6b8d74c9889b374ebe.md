# local_pickup_square_le_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:226f2ce7-5c49-7434-bc12-fc9a06aac94a",
  "kind": "theorem",
  "lexical_name": "local_pickup_square_le_energy",
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
  "slug": "local-pickup-square-le-energy--9081bf6b8d74c9889b374ebe",
  "source": {
    "blob": "8334ab2bdf2b2b40366934bcfc5d46fa935c6e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9081bf6b8d74c9889b374ebe9ded4341968f800898499f2ac1f7afade435a4b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:226f2ce7-5c49-7434-bc12-fc9a06aac94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_pickup_square_le_energy (T : ℝ) :
    (∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2) ≤ energy T := by
  have hsubset : Ioc (max 0 (T - 1)) T ⊆ Ioc 0 T := by
    intro u hu
    exact ⟨lt_of_le_of_lt (le_max_left _ _) hu.1, hu.2⟩
  unfold energy
  exact setIntegral_mono_set (pickup_square_integrable T)
    (Filter.Eventually.of_forall (fun u ↦ sq_nonneg |pickup u|))
    (Filter.Eventually.of_forall (fun u hu ↦ hsubset hu))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8334ab2bdf2b2b40366934bcfc5d46fa935c6e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
