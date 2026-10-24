# narrow_certificate_transport

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
      "line": 284,
      "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:103e9133-478a-588c-64c2-df644999909d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b7a10cc-c77d-178b-332c-40336ad3cdce",
  "kind": "theorem",
  "lexical_name": "narrow_certificate_transport",
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
  "slug": "narrow-certificate-transport--69059b0b164ba1715f0b828b",
  "source": {
    "blob": "88c1adb0a7f624bbed177fc2fa521c4ba469c626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 284,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69059b0b164ba1715f0b828bb3976efa954f8b93a2055df4441375e20b384fda",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b7a10cc-c77d-178b-332c-40336ad3cdce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem narrow_certificate_transport {b T : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) :
    packetEnergy parent ≤ 2*cert.transport*packetEnergy cert.child+2*cert.residualBudget := by
  let pulled : ℝ → ℝ := fun u => cert.amplitude*(maturePacket cert.child
    (cert.scale*u+cert.offset)+horizonPacket cert.child (cert.scale*u+cert.offset))
  let residual : ℝ → ℝ := fun u => cert.residualMature u+cert.residualHorizon u
  have hi := cert.pulled_integrable
  have hr := (narrow_residual_integrable cert).restrict (s := Icc (T-b) T)
  have hpoint : ∀ u ∈ Icc (T-b) T,
      (maturePacket parent u+horizonPacket parent u)^2 ≤ 2*pulled u^2+2*residual u^2 := by
    intro u hu
    rw [cert.mature_reconstruction u hu,cert.horizon_reconstruction u hu]
    dsimp [pulled,residual]
    nlinarith [sq_nonneg (cert.amplitude*(maturePacket cert.child (cert.scale*u+cert.offset)+
      horizonPacket cert.child (cert.scale*u+cert.offset))-
      (cert.residualMature u+cert.residualHorizon u))]
  have hmono := setIntegral_mono_on (packet_sum_square_integrable parent).restrict
    ((hi.const_mul 2).add (hr.const_mul 2)) measurableSet_Icc hpoint
  unfold packetEnergy
  apply hmono.trans
  have h_add := integral_add (hi.const_mul 2) (hr.const_mul 2)
  simp only [Pi.add_apply] at h_add ⊢
  rw [h_add, integral_const_mul, integral_const_mul]
  have ht := cert.transport_bound
  have hb := cert.residual_bound
  dsimp [pulled,residual] at *
  unfold packetEnergy at ht
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88c1adb0a7f624bbed177fc2fa521c4ba469c626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
