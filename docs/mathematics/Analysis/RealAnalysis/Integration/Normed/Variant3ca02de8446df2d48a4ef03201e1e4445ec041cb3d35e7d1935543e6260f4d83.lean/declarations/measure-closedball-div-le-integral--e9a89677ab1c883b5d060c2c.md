# measure_closedBall_div_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a0690c2-6ef3-7916-eb5c-7a57987d6214",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bead6ef-836d-dcee-8ac1-0a1c6006b997",
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
  "slug": "measure-closedball-div-le-integral--e9a89677ab1c883b5d060c2c",
  "source": {
    "blob": "4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a89677ab1c883b5d060c2cdf99b12581e8c952d85cf37e8680486fbfab9c32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bead6ef-836d-dcee-8ac1-0a1c6006b997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_closedBall_div_le_integral [IsAddHaarMeasure μ] (K : ℝ) (h : f.rOut ≤ K * f.rIn) :
    (μ (closedBall c f.rOut)).toReal / K ^ finrank ℝ E ≤ ∫ x, f x ∂μ := by
  have K_pos : 0 < K := by
    simpa [f.rIn_pos, not_lt.2 f.rIn_pos.le] using mul_pos_iff.1 (f.rOut_pos.trans_le h)
  apply le_trans _ (f.measure_closedBall_le_integral μ)
  rw [div_le_iff (pow_pos K_pos _), addHaar_closedBall' _ _ f.rIn_pos.le,
    addHaar_closedBall' _ _ f.rOut_pos.le, ENNReal.toReal_mul, ENNReal.toReal_mul,
    ENNReal.toReal_ofReal (pow_nonneg f.rOut_pos.le _),
    ENNReal.toReal_ofReal (pow_nonneg f.rIn_pos.le _), mul_assoc, mul_comm _ (K ^ _), ← mul_assoc,
    ← mul_pow, mul_comm _ K]
  gcongr
  exact f.rOut_pos.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
