# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7640504a-c73c-ebc1-63d9-2f8ab3880730",
  "kind": "lemma",
  "lexical_name": "epi_iff_surjective",
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
  "slug": "epi-iff-surjective--fdc3fe25797a38a2d012f13c",
  "source": {
    "blob": "461fd72c5b1f47060d4d0a83d78e7ed3261503fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc3fe25797a38a2d012f13ce341fbfccdc5c4b29c47de8c040ee5300706bdb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7640504a-c73c-ebc1-63d9-2f8ab3880730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_iff_surjective {X Y : Stonean} (f : X ⟶ Y) :
    Epi f ↔ Function.Surjective f := by
  refine ⟨?_, fun h => ConcreteCategory.epi_of_surjective f h⟩
  dsimp [Function.Surjective]
  intro h y
  by_contra! hy
  let C := Set.range f
  have hC : IsClosed C := (isCompact_range f.hom.hom.continuous).isClosed
  let U := Cᶜ
  have hUy : U ∈ 𝓝 y := by
    simp only [U, C, Set.mem_range, hy, exists_false, not_false_eq_true, hC.compl_mem_nhds]
  obtain ⟨V, hV, hyV, hVU⟩ := isTopologicalBasis_isClopen.mem_nhds_iff.mp hUy
  classical
  let g : Y ⟶ mkFinite (ULift (Fin 2)) := ConcreteCategory.ofHom
    ⟨(LocallyConstant.ofIsClopen hV).map ULift.up, LocallyConstant.continuous _⟩
  let h : Y ⟶ mkFinite (ULift (Fin 2)) := ConcreteCategory.ofHom ⟨fun _ => ⟨1⟩, continuous_const⟩
  have H : h = g := by
    rw [← cancel_epi f]
    ext x
    apply ULift.ext -- why is `ext` not doing this automatically?
    change 1 = ite _ _ _ -- why is `dsimp` not getting me here?
    rw [ite_eq_right]
    refine mt (hVU ·) ?_ -- what would be an idiomatic tactic for this step?
    simpa only [U, Set.mem_compl_iff, Set.mem_range, not_exists, not_forall, not_not]
      using! exists_apply_eq_apply f x
  apply_fun fun e => (e y).down at H
  change 1 = ite _ _ _ at H -- why is `dsimp at H` not getting me here?
  rw [ite_eq_left hyV] at H
  exact one_ne_zero H

/-- Every Stonean space is projective in `CompHaus` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `461fd72c5b1f47060d4d0a83d78e7ed3261503fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
