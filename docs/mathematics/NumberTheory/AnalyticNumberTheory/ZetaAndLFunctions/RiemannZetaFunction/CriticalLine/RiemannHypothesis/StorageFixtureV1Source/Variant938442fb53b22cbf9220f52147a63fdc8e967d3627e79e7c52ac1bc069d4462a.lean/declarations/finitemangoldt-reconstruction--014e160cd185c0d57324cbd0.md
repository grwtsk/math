# finiteMangoldt_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:038abea3-0db7-68b6-7e49-abf361dabb09",
  "kind": "theorem",
  "lexical_name": "finiteMangoldt_reconstruction",
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
  "slug": "finitemangoldt-reconstruction--014e160cd185c0d57324cbd0",
  "source": {
    "blob": "841b69a74f7f3683524ef61829558b8e354a8336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant938442fb53b22cbf9220f52147a63fdc8e967d3627e79e7c52ac1bc069d4462a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:014e160cd185c0d57324cbd04f9b3fd47bc1c4ed4d6b3ef4fb4ed824a1a53fa1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant938442fb53b22cbf9220f52147a63fdc8e967d3627e79e7c52ac1bc069d4462a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:038abea3-0db7-68b6-7e49-abf361dabb09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMangoldt_reconstruction (S : Finset ℕ) (f : ComplexL2) :
    (∑ n ∈ S, mangoldtCoefficient n * (⟪f, translation (Real.log n) f⟫_ℂ).re) =
      finiteMangoldtBaseline S * ‖f‖ ^ 2 - finiteMangoldtStorage S f := by
  simp only [finiteMangoldtBaseline, finiteMangoldtStorage, Finset.sum_mul,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [translationStorage_eq]
  ring

/-- Complete actual closed inventory, including every prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant938442fb53b22cbf9220f52147a63fdc8e967d3627e79e7c52ac1bc069d4462a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant938442fb53b22cbf9220f52147a63fdc8e967d3627e79e7c52ac1bc069d4462a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841b69a74f7f3683524ef61829558b8e354a8336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
