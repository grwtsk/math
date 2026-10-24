# MeasureTheory.Measure.exists_measurable_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97a0b5c7-d0d4-ede4-226f-aba87fa21c2a",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.Measure.exists_measurable_map_eq",
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
  "slug": "measuretheory-measure-exists-measurable-map-eq--1ff782120049d8a2b8bee6f0",
  "source": {
    "blob": "efdba3d1226626136b1af1106c42d2bbc7799ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 134,
    "path": "GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ff782120049d8a2b8bee6f0274e5a4e6aa811b8a2dfa4b00875d0dcbd9670b9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97a0b5c7-d0d4-ede4-226f-aba87fa21c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.Measure.exists_measurable_map_eq (μ : Measure Y) [IsProbabilityMeasure μ] :
    ∃ (f : I → Y), Measurable f ∧ volume.map f = μ := by
  obtain ⟨f, hf_meas, hf_map⟩ := Kernel.exists_measurable_map_eq_unitInterval (Kernel.const Unit μ)
  specialize hf_map ()
  exact ⟨f (), by fun_prop, by simpa⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efdba3d1226626136b1af1106c42d2bbc7799ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
