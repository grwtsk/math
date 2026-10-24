# thetaTailPairIntegrand_integral_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04172fb7-44e5-b8d6-32b2-13f97224fcf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e55bb7b3-bae4-9161-26ff-bb2c4a7d0747",
  "kind": "theorem",
  "lexical_name": "thetaTailPairIntegrand_integral_right",
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
  "slug": "thetatailpairintegrand-integral-right--eaf980d21d4a0fcd5d51e7e0",
  "source": {
    "blob": "1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf980d21d4a0fcd5d51e7e062b4199f7b6bfbb766d8062b7704476f6c284541",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55bb7b3-bae4-9161-26ff-bb2c4a7d0747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailPairIntegrand_integral_right (m q : ℕ) (t : ℝ) :
    (∫ u, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator
        (fun t => thetaTail (2 * (q + 1)) t * evenBasis m t) t := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integral_indicator measurableSet_Ici,
      indicator_of_mem (show t ∈ Ici (0 : ℝ) from ht)]
    rw [show 2 * (q + 1) = (2 * q + 1) + 1 by omega, thetaTail]
    rw [← integral_mul_const]
    apply integral_congr_ae
    filter_upwards [] with u
    unfold thetaTailPairKernel
    ring
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    simp [indicator_of_notMem (show t ∉ Ici (0 : ℝ) from ht)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
