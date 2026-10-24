# _root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.tendsto_card_div_pow_atTop_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40002c36-b870-e759-bce8-dc34d8fd82a3",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.tendsto_card_div_pow_atTop_volume",
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
  "slug": "root-grwtsk-topology-generaltopology-boxintegralhasintegralvertices-vari--e6e18fe9bf02c32608b33b73",
  "source": {
    "blob": "3af570881246cfb1f2e43a1449c16fc587faac05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6e18fe9bf02c32608b33b73d143e6bd8fe5e2a171f4dfcd9a4fa190cbf8b4a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40002c36-b870-e759-bce8-dc34d8fd82a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.tendsto_card_div_pow_atTop_volume (hs₁ : IsBounded s)
    (hs₂ : MeasurableSet s) (hs₃ : volume (frontier s) = 0) :
    Tendsto (fun n : ℕ ↦ (Nat.card ↑(s ∩ (n : ℝ)⁻¹ • L) : ℝ) / n ^ card ι)
      atTop (𝓝 (volume.real s)) := by
  convert tendsto_tsum_div_pow_atTop_integral s (fun _ ↦ 1) continuous_const hs₁ hs₂ hs₃
  · rw [tsum_const, nsmul_eq_mul, mul_one, Nat.cast_inj]
  · rw [setIntegral_const, smul_eq_mul, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af570881246cfb1f2e43a1449c16fc587faac05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
