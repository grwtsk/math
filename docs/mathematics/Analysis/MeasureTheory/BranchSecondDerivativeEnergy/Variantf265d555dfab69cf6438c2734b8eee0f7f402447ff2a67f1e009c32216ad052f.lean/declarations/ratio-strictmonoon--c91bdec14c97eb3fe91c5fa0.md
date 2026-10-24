# ratio_strictMonoOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe204f15-cf14-9f88-b4a6-cf1888c152e5",
  "kind": "theorem",
  "lexical_name": "ratio_strictMonoOn",
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
  "slug": "ratio-strictmonoon--c91bdec14c97eb3fe91c5fa0",
  "source": {
    "blob": "14784bb6b9bf586b3dd01f08381ef3c6b68e8664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 294,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91bdec14c97eb3fe91c5fa097e6acc27a8889637246632c99875085d0e0238a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe204f15-cf14-9f88-b4a6-cf1888c152e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio_strictMonoOn : StrictMonoOn (fun s ↦ numerator s / denominator s) (Ici 0) := by
  intro s hs t ht hst
  apply (div_lt_div_iff₀ (denominator_pos hs) (denominator_pos ht)).2
  have hg : 0 < (t - s) *
      (1082016000 * t * s + 39511944 * (t + s) + 432072) := by
    apply mul_pos (sub_pos.mpr hst)
    have h0 : 0 ≤ t * s := mul_nonneg ht hs
    have h1 : 0 ≤ t + s := add_nonneg ht hs
    nlinarith
  rw [← ratio_cross_difference] at hg
  linarith

/-- The actual ordinary second derivative is an L² function, with no global C² source premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSecondDerivativeEnergy/Variantf265d555dfab69cf6438c2734b8eee0f7f402447ff2a67f1e009c32216ad052f.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14784bb6b9bf586b3dd01f08381ef3c6b68e8664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
