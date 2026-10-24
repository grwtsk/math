# comap_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73094bd4-aa1e-c2c3-48d7-2d10442adc3d",
  "kind": "theorem",
  "lexical_name": "comap_injective",
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
  "slug": "comap-injective--27080d2e0c2cbab6c89fe51b",
  "source": {
    "blob": "bf43c31a5759a186aee318cbb709473b9d843936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 395,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27080d2e0c2cbab6c89fe51bf465f784e29d5a2ba35b215f9a96102bcb62114f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73094bd4-aa1e-c2c3-48d7-2d10442adc3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_injective [T0Space β] : Injective (comap : C(α, β) → FrameHom (Opens β) (Opens α)) :=
  fun f g h =>
  ContinuousMap.ext fun a =>
    Inseparable.eq <|
      inseparable_iff_forall_open.2 fun s hs =>
        have : comap f ⟨s, hs⟩ = comap g ⟨s, hs⟩ := FunLike.congr_fun h ⟨_, hs⟩
        show a ∈ f ⁻¹' s ↔ a ∈ g ⁻¹' s from Set.ext_iff.1 (coe_inj.2 this) a
#align topological_space.opens.comap_injective TopologicalSpace.Opens.comap_injective

/-- A homeomorphism induces an order-preserving equivalence on open sets, by taking comaps. -/
@[simps (config := { fullyApplied := false }) apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf43c31a5759a186aee318cbb709473b9d843936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
