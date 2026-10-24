# complete_tail_lower_of_complete_block_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:987a40c8-738a-1d65-5275-25577d8dd7a9",
  "kind": "theorem",
  "lexical_name": "complete_tail_lower_of_complete_block_at_radius",
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
  "slug": "complete-tail-lower-of-complete-block-at-radius--f1c16e40f58751a29bdba8a8",
  "source": {
    "blob": "32241eb4a5170462ea1e157eede71cf2350c502c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variantedec53957b4c3aa94bd8994e521be92cf60935b438610ea90db0fd49df501308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1c16e40f58751a29bdba8a8afd95b2c7ff3dfbf3de56e8963b7694f34e6b9b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variantedec53957b4c3aa94bd8994e521be92cf60935b438610ea90db0fd49df501308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987a40c8-738a-1d65-5275-25577d8dd7a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_lower_of_complete_block_at_radius (A DX R H G : ℝ)
    (hR : 40 ≤ R) (hA : R ≤ A) (hb : completeSignedSamplingBlock A ≤ DX)
    (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -radiusCompleteBlockTailBudget DX R G H ≤ completeXiTail A :=
  residual_upper_implies_complete_tail_lower A (DX + radiusSamplingBudget R) H G
    (hR.trans hA) (residual_upper_of_complete_block_at_radius A DX R (by linarith) hA hb)
    hH hG

/-- Direct #16 source return needs only the COMPLETE signed block arithmetic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variantedec53957b4c3aa94bd8994e521be92cf60935b438610ea90db0fd49df501308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variantedec53957b4c3aa94bd8994e521be92cf60935b438610ea90db0fd49df501308.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32241eb4a5170462ea1e157eede71cf2350c502c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
