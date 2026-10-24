# hasMFDerivWithinAt_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e114405e3e3ef1ec7390e69425e52924716f306c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 708,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20985d79-3d08-91d9-b52f-175f888ce1b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d267950d-e47a-233e-a9b5-7f4c9c9e64ae",
  "kind": "theorem",
  "lexical_name": "hasMFDerivWithinAt_insert",
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
  "slug": "hasmfderivwithinat-insert--2093920f74f398d8b2cd5eaf",
  "source": {
    "blob": "e114405e3e3ef1ec7390e69425e52924716f306c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 708,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2093920f74f398d8b2cd5eaf49cc4777e237f3b567d48fb3bb58f7a14e8ec276",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d267950d-e47a-233e-a9b5-7f4c9c9e64ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasMFDerivWithinAt_insert {y : M} :
    HasMFDerivAt[insert y s] f x f' ↔ HasMFDerivAt[s] f x f' := by
  have : T1Space M := I.t1Space M
  refine ⟨fun h => h.mono <| subset_insert y s, fun hf ↦ ?_⟩
  rcases eq_or_ne x y with rfl | h
  · rw [HasMFDerivWithinAt] at hf ⊢
    refine ⟨hf.1.insert, ?_⟩
    have : (extChartAt I x).target ∈
        𝓝[(extChartAt I x).symm ⁻¹' insert x s ∩ range I] (extChartAt I x) x :=
      nhdsWithin_mono _ inter_subset_right (extChartAt_target_mem_nhdsWithin x)
    rw [← hasFDerivWithinAt_inter' this]
    apply hf.2.insert.mono
    rintro z ⟨⟨hz, h2z⟩, h'z⟩
    simp only [mem_inter_iff, mem_preimage, mem_insert_iff, mem_range] at hz h2z ⊢
    rcases hz with xz | h'z
    · left
      have : x ∈ (extChartAt I x).source := mem_extChartAt_source x
      exact (((extChartAt I x).eq_symm_apply this h'z).1 xz.symm).symm
    · exact Or.inr ⟨h'z, h2z⟩
  · apply hf.mono_of_mem_nhdsWithin ?_
    simp_rw [nhdsWithin_insert_of_ne h, self_mem_nhdsWithin]

alias ⟨HasMFDerivWithinAt.of_insert, HasMFDerivWithinAt.insert'⟩ := hasMFDerivWithinAt_insert

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e114405e3e3ef1ec7390e69425e52924716f306c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
