# integral_shift_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ced4f84565565f7a73de3fec7db6d91fe9e4a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39f6e2dd-6dae-c077-bfb7-00423a5c5d24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8761951-beb1-5f8d-b2ae-ac614e066b8c",
  "kind": "theorem",
  "lexical_name": "integral_shift_Ioi",
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
  "slug": "integral-shift-ioi--8c8f78e97ea95a4cb28e40e9",
  "source": {
    "blob": "41ced4f84565565f7a73de3fec7db6d91fe9e4a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c8f78e97ea95a4cb28e40e916bf095f1e22ccc3d27122983c6e5523fe0f4006",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8761951-beb1-5f8d-b2ae-ac614e066b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_shift_Ioi (f : ℝ → ℝ) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), f (s + r)) = ∫ t in Ioi s, f t := by
  have h := integral_add_left_eq_self ((Ioi s).indicator f) s (μ := volume)
  rw [integral_indicator measurableSet_Ioi] at h
  rw [← h, ← integral_indicator measurableSet_Ioi]
  apply integral_congr_ae
  filter_upwards [] with r
  simp only [indicator_apply, mem_Ioi, lt_add_iff_pos_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ced4f84565565f7a73de3fec7db6d91fe9e4a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
