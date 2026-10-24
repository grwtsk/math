# prime_smooth_defect_checkpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:223c6db1-267f-b1bb-19de-3a9e77b339af",
  "kind": "theorem",
  "lexical_name": "prime_smooth_defect_checkpoint",
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
  "slug": "prime-smooth-defect-checkpoint--193b4585e728028e12efcaae",
  "source": {
    "blob": "25e8d649ff602dbefe763805fae3b26b6d41bb9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 176,
    "path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193b4585e728028e12efcaaee2f1a6c92b68f77e65e17eb0f0904b05534a8e74",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:223c6db1-267f-b1bb-19de-3a9e77b339af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_smooth_defect_checkpoint :
    PrimeSmoothDefectCheckpoint :=
  ⟨signedPairing_eq_endpoint_sub_defect,
    endpointMoment_abs_le,
    signed_pairing_tail_iff_prime_smooth_defect_tail,
    estimate_of_prime_smooth_defect_tail⟩

end
end EstimatePrimeSmoothDefect
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25e8d649ff602dbefe763805fae3b26b6d41bb9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
