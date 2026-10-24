# criticalWeightMass_both_exceed_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f08ce61b-3532-4e5d-c136-336e5c28708a",
  "kind": "theorem",
  "lexical_name": "criticalWeightMass_both_exceed_constant",
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
  "slug": "criticalweightmass-both-exceed-constant--3c77d647afc629f8954e91cf",
  "source": {
    "blob": "b30359d878a07a288dc8c2db2db438495fb1acee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant9c424bec66a4e1ab796cd4ca476f43ff8bd355aa1ea415580689205de14ecd86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c77d647afc629f8954e91cf41a68f977ba8930fa1aa9a5c111ef75dce70d7f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant9c424bec66a4e1ab796cd4ca476f43ff8bd355aa1ea415580689205de14ecd86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f08ce61b-3532-4e5d-c136-336e5c28708a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeightMass_both_exceed_constant (M R : ℝ) :
    ∃ A : ℝ, 40 ≤ A ∧ R ≤ A ∧ M < positiveCriticalWeightMass A ∧
      M < negativeCriticalWeightMass A := by
  let A : ℝ := max 40 (max R (256 * (M + 1)))
  have h40 : 40 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hM : 256 * (M + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := criticalWeightMass_both_linear_lower h40
  exact ⟨A, h40, hR, by linarith [hlo.1], by linarith [hlo.2]⟩

end FormalResearch.RiemannHypothesis.SourceCriticalSignedSectorMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant9c424bec66a4e1ab796cd4ca476f43ff8bd355aa1ea415580689205de14ecd86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant9c424bec66a4e1ab796cd4ca476f43ff8bd355aa1ea415580689205de14ecd86.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30359d878a07a288dc8c2db2db438495fb1acee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
