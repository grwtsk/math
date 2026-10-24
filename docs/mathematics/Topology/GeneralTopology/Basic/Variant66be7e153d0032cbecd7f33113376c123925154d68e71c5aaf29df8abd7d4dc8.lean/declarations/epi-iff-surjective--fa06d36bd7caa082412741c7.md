# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee7d2be152e0a98236de32759f80dc32363e90b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ace6541d-6375-56df-1278-513e4fdb929a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da7dd43a-6806-6e9f-eba4-357af1f4d32f",
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
  "slug": "epi-iff-surjective--fa06d36bd7caa082412741c7",
  "source": {
    "blob": "ee7d2be152e0a98236de32759f80dc32363e90b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa06d36bd7caa082412741c70cb59df49566d29800a7d85528b51662915f3e4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7dd43a-6806-6e9f-eba4-357af1f4d32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_iff_surjective {X Y : Stonean} (f : X ⟶ Y) :
    Epi f ↔ Function.Surjective f := by
  refine ⟨?_, fun h => ConcreteCategory.epi_of_surjective f h⟩
  dsimp [Function.Surjective]
  intro h y
  by_contra! hy
  let C := Set.range f
  have hC : IsClosed C := (isCompact_range f.hom.continuous).isClosed
  let U := Cᶜ
  have hUy : U ∈ 𝓝 y := by
    simp only [U, C, Set.mem_range, hy, exists_false, not_false_eq_true, hC.compl_mem_nhds]
  obtain ⟨V, hV, hyV, hVU⟩ := isTopologicalBasis_isClopen.mem_nhds_iff.mp hUy
  classical
  let g : Y ⟶ mkFinite (ULift (Fin 2)) := TopCat.ofHom
    ⟨(LocallyConstant.ofIsClopen hV).map ULift.up, LocallyConstant.continuous _⟩
  let h : Y ⟶ mkFinite (ULift (Fin 2)) := TopCat.ofHom ⟨fun _ => ⟨1⟩, continuous_const⟩
  have H : h = g := by
    rw [← cancel_epi f]
    ext x
    apply ULift.ext -- why is `ext` not doing this automatically?
    change 1 = ite _ _ _ -- why is `dsimp` not getting me here?
    rw [if_neg]
    refine mt (hVU ·) ?_ -- what would be an idiomatic tactic for this step?
    simpa only [U, Set.mem_compl_iff, Set.mem_range, not_exists, not_forall, not_not]
      using exists_apply_eq_apply f x
  apply_fun fun e => (e y).down at H
  change 1 = ite _ _ _ at H -- why is `dsimp at H` not getting me here?
  rw [if_pos hyV] at H
  exact one_ne_zero H

/-- Every Stonean space is projective in `CompHaus` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7d2be152e0a98236de32759f80dc32363e90b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
