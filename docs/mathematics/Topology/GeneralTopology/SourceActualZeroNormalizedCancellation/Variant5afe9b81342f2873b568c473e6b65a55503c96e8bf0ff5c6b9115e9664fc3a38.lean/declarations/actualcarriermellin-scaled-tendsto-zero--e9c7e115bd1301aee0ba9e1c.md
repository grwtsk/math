# actualCarrierMellin_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18fda8f8-0156-eeb7-66e3-acd530f5450d",
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
  "slug": "actualcarriermellin-scaled-tendsto-zero--e9c7e115bd1301aee0ba9e1c",
  "source": {
    "blob": "09d5cc78e08e285224056295f7fd15d2073fb970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9c7e115bd1301aee0ba9e1c830029fda0b19444b33a30c1f791d01638b107cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18fda8f8-0156-eeb7-66e3-acd530f5450d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant5afe9b81342f2873b568c473e6b65a55503c96e8bf0ff5c6b9115e9664fc3a38.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d5cc78e08e285224056295f7fd15d2073fb970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
