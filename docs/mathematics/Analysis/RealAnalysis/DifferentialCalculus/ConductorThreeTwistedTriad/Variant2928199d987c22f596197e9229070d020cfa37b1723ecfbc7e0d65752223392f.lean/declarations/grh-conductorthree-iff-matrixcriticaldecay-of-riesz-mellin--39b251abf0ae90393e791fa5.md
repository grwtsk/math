# grh_conductorThree_iff_matrixCriticalDecay_of_riesz_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dd2a8a03cb45ed2041df4e9c0fa2ce0d2eab116",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20e8ca4a-70d3-576e-a9f1-1c1a4cf6ca7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8088401-3b29-60a7-dcff-2fe8030cc5be",
  "kind": "theorem",
  "lexical_name": "grh_conductorThree_iff_matrixCriticalDecay_of_riesz_mellin",
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
  "slug": "grh-conductorthree-iff-matrixcriticaldecay-of-riesz-mellin--39b251abf0ae90393e791fa5",
  "source": {
    "blob": "5dd2a8a03cb45ed2041df4e9c0fa2ce0d2eab116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39b251abf0ae90393e791fa52cbcbcb75d007306200a5e92a4790457060ff495",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8088401-3b29-60a7-dcff-2fe8030cc5be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_conductorThree_iff_matrixCriticalDecay_of_riesz_mellin
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  constructor
  · intro hGRH
    exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)
  · intro hMatrix
    have hCritical :=
      twistedPsiCriticalBound_iff_matrixCriticalDecay.mpr hMatrix
    have hHalf := twistedPsiCriticalBound_implies_halfPlusEpsilon hCritical
    exact halfPlusEpsilon_implies_grh hHalf

/-- The BV endpoint reaches conductor-three GRH through the fully checked
Mellin/logarithmic-derivative zero-exclusion theorem. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeTwistedTriad/Variant2928199d987c22f596197e9229070d020cfa37b1723ecfbc7e0d65752223392f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd2a8a03cb45ed2041df4e9c0fa2ce0d2eab116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
