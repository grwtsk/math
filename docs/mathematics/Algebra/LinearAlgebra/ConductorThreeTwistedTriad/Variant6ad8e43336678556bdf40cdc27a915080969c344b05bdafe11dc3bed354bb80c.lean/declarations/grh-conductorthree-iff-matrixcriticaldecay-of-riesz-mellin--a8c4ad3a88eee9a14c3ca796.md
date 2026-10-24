# grh_conductorThree_iff_matrixCriticalDecay_of_riesz_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9919caa349e2a7f48e0ed06c9a8f93d090945017",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b659cdcb-93ce-5fb4-c828-d04691ffef15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f2ab98a-e8c2-3c8e-846e-a609b716bf5f",
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
  "slug": "grh-conductorthree-iff-matrixcriticaldecay-of-riesz-mellin--a8c4ad3a88eee9a14c3ca796",
  "source": {
    "blob": "9919caa349e2a7f48e0ed06c9a8f93d090945017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/ConductorThreeTwistedTriad/Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8c4ad3a88eee9a14c3ca7967efd01b821e2993ef43a615e9b68616516713a92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ConductorThreeTwistedTriad/Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f2ab98a-e8c2-3c8e-846e-a609b716bf5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_conductorThree_iff_matrixCriticalDecay_of_riesz_mellin
    (hRiesz : GRHRieszFiniteDifferenceEstimate)
    (hContinuation : HalfPlusEpsilonMellinContinuation)
    (hZeroExclusion : MellinContinuationZeroExclusion) :
    GRHForConductorThreeCharacter ↔
      MatrixCriticalDecay actualResidueSixCounts := by
  constructor
  · intro hGRH
    exact twistedPsiCriticalBound_iff_matrixCriticalDecay.mp (hRiesz hGRH)
  · intro hMatrix
    have hCritical :=
      twistedPsiCriticalBound_iff_matrixCriticalDecay.mpr hMatrix
    have hHalf := twistedPsiCriticalBound_implies_halfPlusEpsilon hCritical
    exact halfPlusEpsilon_implies_grh_of_mellin
      hContinuation hZeroExclusion hHalf

/-- Checked composition from the smooth packet target to conductor-three GRH. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ConductorThreeTwistedTriad/Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ConductorThreeTwistedTriad/Variant6ad8e43336678556bdf40cdc27a915080969c344b05bdafe11dc3bed354bb80c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9919caa349e2a7f48e0ed06c9a8f93d090945017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
