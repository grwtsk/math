# finiteProfile_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:213ddbc3-1272-da1b-248b-86151103239e",
  "kind": "theorem",
  "lexical_name": "finiteProfile_continuousOn",
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
  "slug": "finiteprofile-continuouson--454be39bbc34dc3abda7b15b",
  "source": {
    "blob": "5cf3a4fde7875928a189b4c3629e147c9b7daffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant6f64c259c0a6a6f4217a724d4ae4d684ef407ae6e0fa81a7232c196b16177892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454be39bbc34dc3abda7b15bfaaf64f12f08946d9eb975dfa3a97a96df2c87c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant6f64c259c0a6a6f4217a724d4ae4d684ef407ae6e0fa81a7232c196b16177892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:213ddbc3-1272-da1b-248b-86151103239e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteProfile_continuousOn (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    ContinuousOn (fun A => SourceArithmeticOrbit.finiteProfile (originalSourceState A) I ε δ c)
      (Ici 1) := by
  unfold SourceArithmeticOrbit.finiteProfile
  exact continuousOn_finsetSum I fun m _ =>
    (continuous_const : Continuous (fun _ : ℝ => c m)).continuousOn.smul
      (orbitAtom_continuousOn ε δ m)

end FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant6f64c259c0a6a6f4217a724d4ae4d684ef407ae6e0fa81a7232c196b16177892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/116FormalResearchRiemannHypothesisSourceScaleL2Continuity/Variant6f64c259c0a6a6f4217a724d4ae4d684ef407ae6e0fa81a7232c196b16177892.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf3a4fde7875928a189b4c3629e147c9b7daffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
