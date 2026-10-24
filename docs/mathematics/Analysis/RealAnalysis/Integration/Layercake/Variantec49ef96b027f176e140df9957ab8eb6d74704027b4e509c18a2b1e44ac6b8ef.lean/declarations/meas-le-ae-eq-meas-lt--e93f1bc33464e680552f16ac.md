# meas_le_ae_eq_meas_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4d7fe45-4fed-cdc8-723b-f8b946c7bcb1",
  "kind": "theorem",
  "lexical_name": "meas_le_ae_eq_meas_lt",
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
  "slug": "meas-le-ae-eq-meas-lt--e93f1bc33464e680552f16ac",
  "source": {
    "blob": "18de3077a108c790d2b6c8addb314de87d5fb025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e93f1bc33464e680552f16ac2ffce5e458869b476b5ba0d1c0ad751ae37f3d4c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d7fe45-4fed-cdc8-723b-f8b946c7bcb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meas_le_ae_eq_meas_lt {R : Type*} [LinearOrder R] [MeasurableSpace R]
    (ν : Measure R) [NullSingletonClass ν] (g : α → R) :
    (fun t => μ {a : α | t ≤ g a}) =ᵐ[ν] fun t => μ {a : α | t < g a} :=
  Set.Countable.measure_zero (countable_meas_le_ne_meas_lt μ g) _

end

/-! ### Layercake formula -/


section Layercake

variable {α : Type*} [MeasurableSpace α] {f : α → ℝ} {g : ℝ → ℝ}

/-- An auxiliary version of the layer cake formula (Cavalieri's principle, tail probability
formula), with a measurability assumption that would also essentially follow from the
integrability assumptions, and a sigma-finiteness assumption.

See `MeasureTheory.lintegral_comp_eq_lintegral_meas_le_mul` and
`MeasureTheory.lintegral_comp_eq_lintegral_meas_lt_mul` for the main formulations of the layer
cake formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18de3077a108c790d2b6c8addb314de87d5fb025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
