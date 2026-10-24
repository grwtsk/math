# addedClaim_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4eb2831f018f2f4b2674dce246c28ec6f69ab6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/Interfaces/PortFiberAreaComplete.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:663e946a-3c8d-924e-7ad9-f1f31261d5bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be28216e-1330-9bd9-0863-92bacaebd3ab",
  "kind": "theorem",
  "lexical_name": "addedClaim_proof",
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
  "slug": "addedclaim-proof--dac4627dd639c2e68af8c505",
  "source": {
    "blob": "c4eb2831f018f2f4b2674dce246c28ec6f69ab6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 95,
    "path": "GRWTSK/Interfaces/PortFiberAreaComplete.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac4627dd639c2e68af8c505edd6b08bd3d9226e23013adb25c728dce80e9739",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaComplete.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be28216e-1330-9bd9-0863-92bacaebd3ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactEnergy => intro ι D hOpen q; exact scalarEnergy_realization hOpen q
  | lowerSemicontinuity => intro ι D hOpen F f hF; exact scalarEnergy_le_liminf hOpen F f hF
  | finiteLimit =>
      intro ι D hOpen F hF
      exact ⟨holomorphicLimit_finite hOpen F hF, realization_limitClass hOpen F hF⟩
  | tailControl => intro ι D hOpen F hF n ε hε h; exact distance_limit_le hOpen F hF n ε hε h
  | normConvergence =>
      intro ι D hOpen F hF
      exact ⟨limitClass_tendsto hOpen F hF, existsUnique_area_limit hOpen F hF⟩
  | quotientComplete =>
      intro ι D hOpen
      exact ⟨areaQuotient_complete hOpen, toCompletion_surjective hOpen⟩
  | completionBinding =>
      intro ι D hOpen
      exact ⟨fun q => ⟨areaCompletionEquiv_apply hOpen q, completedRealization_toCompletion hOpen q⟩,
        fun v => ⟨completedRealization_energy hOpen v, completedRealization_finite hOpen v⟩,
        completedRealization_injective hOpen⟩
  | failureBoundaries =>
      exact ⟨fun ι D hOpen q =>
          GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.constant_limitClass hOpen q,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse_pointwise,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse_integral,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse_strict_fatou⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaComplete.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaComplete.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4eb2831f018f2f4b2674dce246c28ec6f69ab6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
