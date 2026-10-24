# residual_upper_of_complete_block_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e3692c6-d4f7-4605-d36e-aedf3cdf0196",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_complete_block_at_radius",
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
  "slug": "residual-upper-of-complete-block-at-radius--f58e07c91df978ed2d0ffaf6",
  "source": {
    "blob": "9be981cb2de46ab35eb10841639a69d313bc26d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58e07c91df978ed2d0ffaf6ffc52f7868b90709d1c21cdbf913da43122107ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e3692c6-d4f7-4605-d36e-aedf3cdf0196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_complete_block_at_radius (A DX R : ℝ) (hR : 1 ≤ R)
    (hA : R ≤ A) (hb : completeSignedSamplingBlock A ≤ DX) :
    mertensResidual A ≤ DX + radiusSamplingBudget R := by
  rw [residual_eq_complete_block_add_signed_sampling A (hR.trans hA)]
  have he := (abs_le.mp (signed_sampling_correction_abs_le_at_radius A R hR hA)).2
  linarith only [hb, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be981cb2de46ab35eb10841639a69d313bc26d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
