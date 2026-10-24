# actualCarrierMellin_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e80240b8-bf0e-d5ed-1cad-3932e56e6d65",
  "kind": "theorem",
  "lexical_name": "actualCarrierMellin_scaled_tendsto_zero",
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
  "slug": "actualcarriermellin-scaled-tendsto-zero--44f3a35cb49f71a41e76c7ba",
  "source": {
    "blob": "0fbb2ff4ed91bc50e6b9be940c98589464b24e77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant2f38b29b1ab9954ad5b6e80a4b34d686cc2475f0b9343551b2e23a0a4ce006b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f3a35cb49f71a41e76c7baba9c6ae24854d5d66010dac94cde5f2121ffb2c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant2f38b29b1ab9954ad5b6e80a4b34d686cc2475f0b9343551b2e23a0a4ce006b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80240b8-bf0e-d5ed-1cad-3932e56e6d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCarrierMellin_scaled_tendsto_zero (rho : (zetaZeros zetaSeam).carrier) :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      actualInitialPrimeMellin A rho) atTop (𝓝 0) := by
  have hn : (rho : ℂ) ≠ 1 / 2 := by
    intro h
    have hz : riemannZeta (rho : ℂ) = 0 := rho.2.1
    exact actual_zeta_half_ne_zero (h ▸ hz)
  exact actualInitialPrimeMellin_scaled_tendsto_zero rho rho.2.2.1 rho.2.2.2 hn

end
end FormalResearch.RiemannHypothesis.SourceActualZeroNormalizedCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant2f38b29b1ab9954ad5b6e80a4b34d686cc2475f0b9343551b2e23a0a4ce006b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant2f38b29b1ab9954ad5b6e80a4b34d686cc2475f0b9343551b2e23a0a4ce006b6.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbb2ff4ed91bc50e6b9be940c98589464b24e77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
