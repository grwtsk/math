# criticalWeightMass_both_exponential_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05c4d319-4af0-a69c-a5b3-398201e7a029",
  "kind": "theorem",
  "lexical_name": "criticalWeightMass_both_exponential_lower",
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
  "slug": "criticalweightmass-both-exponential-lower--bd3e4dab4bb8eca8c2718c48",
  "source": {
    "blob": "59ad713ddf2b56b3467cdcef42392ba92c722af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variant505d6c53016cd99892351408002038fdc1ad838d5927aec50b31794322612787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd3e4dab4bb8eca8c2718c48d89bfff80a4ac1c30e0b7d10f4be1cb1d25faeb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variant505d6c53016cd99892351408002038fdc1ad838d5927aec50b31794322612787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c4d319-4af0-a69c-a5b3-398201e7a029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeightMass_both_exponential_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 16 : ℝ) * (Real.exp (A / 80) - 1) - 1 / 2 <
        positiveCriticalWeightMass A ∧
      (5 / 16 : ℝ) * (Real.exp (A / 80) - 1) - 1 / 2 <
        negativeCriticalWeightMass A := by
  have hA1 : 1 ≤ A := by linarith
  rw [positiveCriticalWeightMass_eq hA1, negativeCriticalWeightMass_eq hA1]
  have hm := absoluteCriticalWeightMass_exponential_lower hA
  have hh := criticalContinuousMoment_strict_bounds hA1
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variant505d6c53016cd99892351408002038fdc1ad838d5927aec50b31794322612787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fbd942e3b17b87292d9aSourceCriticalSignedSectorMass/Variant505d6c53016cd99892351408002038fdc1ad838d5927aec50b31794322612787.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ad713ddf2b56b3467cdcef42392ba92c722af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
