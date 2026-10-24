# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9c2dd2d8318634915314ab28aa3c41ec1531d46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:163c0e29-1be0-7ff5-4737-513f5c2e9865",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10e560cf-371a-f33c-b53f-bf688e36546d",
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
  "slug": "epi-iff-surjective--1211214a9060f2b2fce2a631",
  "source": {
    "blob": "e9c2dd2d8318634915314ab28aa3c41ec1531d46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1211214a9060f2b2fce2a6317303a141ea07c039ffae0d904292ade193114622",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e560cf-371a-f33c-b53f-bf688e36546d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_surjective {X Y : CompHaus.{u}} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  constructor
  · dsimp [Function.Surjective]
    contrapose!
    rintro ⟨y, hy⟩ hf
    let C := Set.range f
    have hC : IsClosed C := (isCompact_range f.hom.continuous).isClosed
    let D := ({y} : Set Y)
    have hD : IsClosed D := isClosed_singleton
    have hCD : Disjoint C D := by
      rw [Set.disjoint_singleton_right]
      rintro ⟨y', hy'⟩
      exact hy y' hy'
    obtain ⟨φ, hφ0, hφ1, hφ01⟩ := exists_continuous_zero_one_of_isClosed hC hD hCD
    haveI : CompactSpace (ULift.{u} <| Set.Icc (0 : ℝ) 1) := Homeomorph.ulift.symm.compactSpace
    haveI : T2Space (ULift.{u} <| Set.Icc (0 : ℝ) 1) := Homeomorph.ulift.symm.t2Space
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
  · rw [← CategoryTheory.epi_iff_surjective]
    apply (forget CompHaus).epi_of_epi_map

end CompHaus

/-- Every `CompHausLike` admits a functor to `CompHaus`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c2dd2d8318634915314ab28aa3c41ec1531d46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
