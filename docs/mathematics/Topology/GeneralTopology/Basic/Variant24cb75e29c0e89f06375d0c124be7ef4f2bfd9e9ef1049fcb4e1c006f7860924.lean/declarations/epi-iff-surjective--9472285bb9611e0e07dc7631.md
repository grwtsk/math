# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:273a7f79-6dfe-ce8d-2c68-a40c6e57eeec",
  "kind": "theorem",
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
  "slug": "epi-iff-surjective--9472285bb9611e0e07dc7631",
  "source": {
    "blob": "cd447770f4719f122b9a505735c7166d27100cef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9472285bb9611e0e07dc7631d17a5252a365535f134b16603a23485f2de72d44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:273a7f79-6dfe-ce8d-2c68-a40c6e57eeec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_surjective {X Y : CompHaus.{u}} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  constructor
  · dsimp [Function.Surjective]
    contrapose!
    rintro ⟨y, hy⟩ hf
    let C := Set.range f
    have hC : IsClosed C := (isCompact_range f.hom.hom.continuous).isClosed
    let D := ({y} : Set Y)
    have hD : IsClosed D := isClosed_singleton
    have hCD : Disjoint C D := by
      rw [Set.disjoint_singleton_right]
      rintro ⟨y', hy'⟩
      exact hy y' hy'
    obtain ⟨φ, hφ0, hφ1, hφ01⟩ := exists_continuous_zero_one_of_isClosed hC hD hCD
    have : CompactSpace (ULift.{u} <| Set.Icc (0 : ℝ) 1) := Homeomorph.ulift.symm.compactSpace
    have : T2Space (ULift.{u} <| Set.Icc (0 : ℝ) 1) := Homeomorph.ulift.symm.t2Space
    let Z := of (ULift.{u} <| Set.Icc (0 : ℝ) 1)
    let g : Y ⟶ Z := ofHom _
      ⟨fun y' => ⟨⟨φ y', hφ01 y'⟩⟩,
        continuous_uliftUp.comp (φ.continuous.subtype_mk fun y' => hφ01 y')⟩
    let h : Y ⟶ Z := ofHom _
      ⟨fun _ => ⟨⟨0, Set.left_mem_Icc.mpr zero_le_one⟩⟩, continuous_const⟩
    have H : h = g := by
      rw [← cancel_epi f]
      ext x : 4
      simp [g, h, Z, hφ0 (Set.mem_range_self x)]
    apply_fun fun e => (e y).down.1 at H
    dsimp [g, h, Z] at H
    simp only [hφ1 (Set.mem_singleton y), Pi.one_apply] at H
    exact zero_ne_one H
  · rw [← CategoryTheory.ofHom_epi_iff_surjective]
    apply (forget CompHaus).epi_of_epi_map

end CompHaus

/-- Every `CompHausLike` admits a functor to `CompHaus`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd447770f4719f122b9a505735c7166d27100cef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
