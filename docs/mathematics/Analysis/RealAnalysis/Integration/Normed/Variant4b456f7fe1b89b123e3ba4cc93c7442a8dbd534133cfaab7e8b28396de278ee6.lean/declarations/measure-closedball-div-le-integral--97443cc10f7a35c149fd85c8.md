# measure_closedBall_div_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8426243a8b556cc84511d1eacc240a612c0f661",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c500639c-19a0-0757-17d2-ce14a251ba5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27b8d4d8-41dc-e3d5-f2e6-043d9e2249cf",
  "kind": "theorem",
  "lexical_name": "measure_closedBall_div_le_integral",
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
  "slug": "measure-closedball-div-le-integral--97443cc10f7a35c149fd85c8",
  "source": {
    "blob": "b8426243a8b556cc84511d1eacc240a612c0f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97443cc10f7a35c149fd85c8b78a22624b0d3d15e1a39d6f71a47b311915dbf8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b8d4d8-41dc-e3d5-f2e6-043d9e2249cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_closedBall_div_le_integral [IsAddHaarMeasure μ] (K : ℝ) (h : f.rOut ≤ K * f.rIn) :
    μ.real (closedBall c f.rOut) / K ^ finrank ℝ E ≤ ∫ x, f x ∂μ := by
  have K_pos : 0 < K := by
    simpa [f.rIn_pos, not_lt.2 f.rIn_pos.le] using mul_pos_iff.1 (f.rOut_pos.trans_le h)
  apply le_trans _ (f.measure_closedBall_le_integral μ)
  rw [div_le_iff₀ (pow_pos K_pos _), addHaar_real_closedBall' _ _ f.rIn_pos.le,
    addHaar_real_closedBall' _ _ f.rOut_pos.le, mul_assoc, mul_comm _ (K ^ _), ← mul_assoc,
    ← mul_pow, mul_comm _ K]
  gcongr
  exact f.rOut_pos.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8426243a8b556cc84511d1eacc240a612c0f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
