# translationPhase_half_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a56c160-9357-2b3e-347c-204cd45ff0a8",
  "kind": "theorem",
  "lexical_name": "translationPhase_half_sum",
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
  "slug": "translationphase-half-sum--e7bd18e1f24b6c0c84b25ada",
  "source": {
    "blob": "0721fbb44305b24863c8f32f4befbb1b6e57ece2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variant9bc096f881a4c04ff4a9f0f2fcd8091a0154946ff7166e98c705adc50ef89eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7bd18e1f24b6c0c84b25adaf19be5782a32916ea1617bea66941f2472203351",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variant9bc096f881a4c04ff4a9f0f2fcd8091a0154946ff7166e98c705adc50ef89eab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a56c160-9357-2b3e-347c-204cd45ff0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translationPhase_half_sum (s ξ : ℝ) :
    (1 / 2 : ℂ) * (translationPhase s ξ + translationPhase (-s) ξ) =
      (Real.cos (2 * Real.pi * ξ * s) : ℂ) := by
  have hn : 2 * Real.pi * (-s * ξ) = -(2 * Real.pi * ξ * s) := by ring
  have hp : 2 * Real.pi * (-(-s) * ξ) = 2 * Real.pi * ξ * s := by ring
  simp only [translationPhase, Real.fourierChar_apply, hn, hp, Complex.ofReal_neg]
  rw [add_comm, ← Complex.two_cos, ← Complex.ofReal_cos]
  ring

/-- The actual frequency CLM acts almost everywhere by its real cosine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variant9bc096f881a4c04ff4a9f0f2fcd8091a0154946ff7166e98c705adc50ef89eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV2Prebytes/Variant9bc096f881a4c04ff4a9f0f2fcd8091a0154946ff7166e98c705adc50ef89eab.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0721fbb44305b24863c8f32f4befbb1b6e57ece2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
