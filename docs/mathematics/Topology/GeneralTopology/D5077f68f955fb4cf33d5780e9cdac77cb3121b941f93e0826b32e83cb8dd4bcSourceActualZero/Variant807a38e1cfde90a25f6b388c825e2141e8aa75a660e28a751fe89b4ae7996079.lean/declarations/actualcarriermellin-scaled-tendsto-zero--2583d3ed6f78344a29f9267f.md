# actualCarrierMellin_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1768ecef-f585-959e-b931-6d1b84a66d27",
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
  "slug": "actualcarriermellin-scaled-tendsto-zero--2583d3ed6f78344a29f9267f",
  "source": {
    "blob": "31f356a3d19e9531861e02499f6350e39b01efa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/D5077f68f955fb4cf33d5780e9cdac77cb3121b941f93e0826b32e83cb8dd4bcSourceActualZero/Variant807a38e1cfde90a25f6b388c825e2141e8aa75a660e28a751fe89b4ae7996079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2583d3ed6f78344a29f9267f26d73f544b76c3db283aff6eaa362961599ba920",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D5077f68f955fb4cf33d5780e9cdac77cb3121b941f93e0826b32e83cb8dd4bcSourceActualZero/Variant807a38e1cfde90a25f6b388c825e2141e8aa75a660e28a751fe89b4ae7996079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1768ecef-f585-959e-b931-6d1b84a66d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D5077f68f955fb4cf33d5780e9cdac77cb3121b941f93e0826b32e83cb8dd4bcSourceActualZero/Variant807a38e1cfde90a25f6b388c825e2141e8aa75a660e28a751fe89b4ae7996079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D5077f68f955fb4cf33d5780e9cdac77cb3121b941f93e0826b32e83cb8dd4bcSourceActualZero/Variant807a38e1cfde90a25f6b388c825e2141e8aa75a660e28a751fe89b4ae7996079.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f356a3d19e9531861e02499f6350e39b01efa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
