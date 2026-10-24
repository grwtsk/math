# packet_cross_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88c1adb0a7f624bbed177fc2fa521c4ba469c626",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b02430ed-3b99-5f2e-ec70-f4c538129463",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4a6be5c-1ea2-6eac-3a5e-d2bac5594803",
  "kind": "lemma",
  "lexical_name": "packet_cross_integrable",
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
  "slug": "packet-cross-integrable--a53a0dcddb416947764bf097",
  "source": {
    "blob": "88c1adb0a7f624bbed177fc2fa521c4ba469c626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a53a0dcddb416947764bf09737d4a7257d7ba27fa47504e2be1c0f8927ddc52a",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4a6be5c-1ea2-6eac-3a5e-d2bac5594803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma packet_cross_integrable {b T : ℝ} (c : Chart b T) :
    Integrable (fun u => maturePacket c u*horizonPacket c u) := by
  have hg := mature_packet_square_integrable c
  have hh := horizon_packet_square_integrable c
  apply (hg.add hh).mono'
  · exact (c.continuous.aestronglyMeasurable.mul
      (matureWave_memLp_two b T).aestronglyMeasurable).mul
      (c.continuous.aestronglyMeasurable.mul
        (horizonWave_memLp_two b T).aestronglyMeasurable)
  · filter_upwards [] with u
    rw [Real.norm_eq_abs,abs_mul]
    change |maturePacket c u| * |horizonPacket c u| ≤
      maturePacket c u^2+horizonPacket c u^2
    nlinarith [sq_nonneg (|maturePacket c u|-|horizonPacket c u|),
      sq_abs (maturePacket c u),sq_abs (horizonPacket c u)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88c1adb0a7f624bbed177fc2fa521c4ba469c626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
