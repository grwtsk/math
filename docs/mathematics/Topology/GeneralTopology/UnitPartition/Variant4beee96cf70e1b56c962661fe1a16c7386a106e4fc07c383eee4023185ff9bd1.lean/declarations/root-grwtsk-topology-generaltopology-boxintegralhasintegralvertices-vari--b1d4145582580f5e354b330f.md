# _root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.tendsto_card_div_pow_atTop_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73b6495c-39fc-7434-7305-87ea51c644bf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.tendsto_card_div_pow_atTop_volume",
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
  "slug": "root-grwtsk-topology-generaltopology-boxintegralhasintegralvertices-vari--b1d4145582580f5e354b330f",
  "source": {
    "blob": "8523ac5b697f244081cc7cc71dcd3632097616ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 466,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1d4145582580f5e354b330fe8b707b4c265b0e9da0bfb820bb0b667cbe90bd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73b6495c-39fc-7434-7305-87ea51c644bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.tendsto_card_div_pow_atTop_volume (hs₁ : IsBounded s)
    (hs₂ : MeasurableSet s) (hs₃ : volume (frontier s) = 0) :
    Tendsto (fun n : ℕ ↦ (Nat.card ↑(s ∩ (n : ℝ)⁻¹ • L) : ℝ) / n ^ card ι)
      atTop (𝓝 (volume.real s)) := by
  convert! tendsto_tsum_div_pow_atTop_integral s (fun _ ↦ 1) continuous_const hs₁ hs₂ hs₃
  · rw [tsum_const, nsmul_eq_mul, mul_one, Nat.cast_inj]
  · rw [setIntegral_const, smul_eq_mul, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant4beee96cf70e1b56c962661fe1a16c7386a106e4fc07c383eee4023185ff9bd1.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8523ac5b697f244081cc7cc71dcd3632097616ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
