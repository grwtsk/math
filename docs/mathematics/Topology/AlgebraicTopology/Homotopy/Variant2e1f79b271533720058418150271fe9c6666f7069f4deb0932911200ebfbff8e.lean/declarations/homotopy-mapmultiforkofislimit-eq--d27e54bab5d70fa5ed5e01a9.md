# Homotopy.mapMultiforkOfIsLimit_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef603bf4-6334-5665-19fb-7069b71062bd",
  "kind": "lemma",
  "lexical_name": "Homotopy.mapMultiforkOfIsLimit_eq",
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
  "slug": "homotopy-mapmultiforkofislimit-eq--d27e54bab5d70fa5ed5e01a9",
  "source": {
    "blob": "abeb7be41df0bc98254793490384f02e7ef78783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d27e54bab5d70fa5ed5e01a9907682618ff619ba8fd761abb074ed70bdef5540",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef603bf4-6334-5665-19fb-7069b71062bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Homotopy.mapMultiforkOfIsLimit_eq
    {E F : PreOneHypercover.{w} S} {f g : E.Hom F} (H : Homotopy f g)
    (P : Cᵒᵖ ⥤ A) {c : Multifork (E.multicospanIndex P)} (hc : IsLimit c)
    (d : Multifork (F.multicospanIndex P)) :
    f.mapMultiforkOfIsLimit P hc d = g.mapMultiforkOfIsLimit P hc d := by
  refine Multifork.IsLimit.hom_ext hc fun a ↦ ?_
  have heq := d.condition ⟨⟨(f.s₀ a), (g.s₀ a)⟩, H.H a⟩
  simp only [multicospanIndex_right, multicospanShape_fst, multicospanIndex_left,
    multicospanIndex_fst, multicospanShape_snd, multicospanIndex_snd] at heq
  simp [-Homotopy.wl, -Homotopy.wr, ← H.wl, ← H.wr, reassoc_of% heq]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `f : E ⟶ F` and `g : F ⟶ E` are refinement morphisms of pre-`1`-hypercovers such that
the composition `g ≫ f` is homotopic to the identity, then if the multifork associated
to `E` is exact also the multifork associated to `F` is exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abeb7be41df0bc98254793490384f02e7ef78783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
