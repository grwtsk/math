# properSMul_iff_continuousSMul_ultrafilter_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c71d518-ba76-2f71-c71c-00b38bc61e44",
  "kind": "theorem",
  "lexical_name": "properSMul_iff_continuousSMul_ultrafilter_tendsto",
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
  "slug": "propersmul-iff-continuoussmul-ultrafilter-tendsto--94f84d4230aab1417e0c8d24",
  "source": {
    "blob": "3baa7160a63eee1e3ca419dc365ebafa4869d048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94f84d4230aab1417e0c8d24d78be1537b8e648aae437322671078dad1d16aef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c71d518-ba76-2f71-c71c-00b38bc61e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properSMul_iff_continuousSMul_ultrafilter_tendsto :
    ProperSMul G X ↔ ContinuousSMul G X ∧
      (∀ 𝒰 : Ultrafilter (G × X), ∀ x₁ x₂ : X,
        Tendsto (fun gx : G × X ↦ (gx.1 • gx.2, gx.2)) 𝒰 (𝓝 (x₁, x₂)) →
      ∃ g : G, g • x₂ = x₁ ∧ Tendsto (Prod.fst : G × X → G) 𝒰 (𝓝 g)) := by
  refine ⟨fun h ↦ ⟨inferInstance, fun 𝒰 x₁ x₂ h' ↦ ?_⟩, fun ⟨cont, h⟩ ↦ ?_⟩
  · rw [properSMul_iff, isProperMap_iff_ultrafilter] at h
    rcases h.2 h' with ⟨gx, hgx1, hgx2⟩
    refine ⟨gx.1, ?_, (continuous_fst.tendsto gx).mono_left hgx2⟩
    simp only [Prod.mk.injEq] at hgx1
    rw [← hgx1.2, hgx1.1]
  · rw [properSMul_iff, isProperMap_iff_ultrafilter]
    refine ⟨by fun_prop, fun 𝒰 (x₁, x₂) hxx ↦ ?_⟩
    rcases h 𝒰 x₁ x₂ hxx with ⟨g, hg1, hg2⟩
    refine ⟨(g, x₂), by simp_rw [hg1], ?_⟩
    rw [nhds_prod_eq, 𝒰.le_prod]
    exact ⟨hg2, (continuous_snd.tendsto _).comp hxx⟩

/-- A group `G` acts properly on a T2 topological space `X` if and only if for all ultrafilters
`𝒰` on `X × G`, if `𝒰` converges to `(x₁, x₂)` along the map `(g, x) ↦ (g • x, x)`,
then there exists `g : G` such that `𝒰.fst` converges to `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3baa7160a63eee1e3ca419dc365ebafa4869d048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
