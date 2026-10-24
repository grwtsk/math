# sourcePlainSamplingMainTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80ecbc1aa6cf3432cf61ca4d7880c34c42967259b090d7194caa9c0e91591c7e",
  "kind": "def",
  "lexical_name": "sourcePlainSamplingMainTerm",
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
  "slug": "sourceplainsamplingmainterm--7447b6e1d1bc880025101256",
  "source": {
    "blob": "35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7447b6e1d1bc88002510125605e4faa3701daa6a0685a907e4f8b65d46730cea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80ecbc1aa6cf3432cf61ca4d7880c34c42967259b090d7194caa9c0e91591c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sourcePlainSamplingMainTerm (A k : ℝ) : ℝ :=
  (samplingAlpha0 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
    samplingAlpha1 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) /
      Real.sqrt k

/-- The retained actual logarithmic sampling main term uses the shifted signed coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35512ae9b5d1f4fed0fd6e97d30d4a92d8f66787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
