# continuous_right_toIcoMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0e2ec50-b64f-c5b2-cd0e-050f066a9bfe",
  "kind": "theorem",
  "lexical_name": "continuous_right_toIcoMod",
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
  "slug": "continuous-right-toicomod--1cb9446648fcbc3a07d17e6d",
  "source": {
    "blob": "f100dfac99db57c27650b5a343da01771e2a7417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cb9446648fcbc3a07d17e6db696076f8d7caa2ba1ee5e81c563f5b7d928ebcd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0e2ec50-b64f-c5b2-cd0e-050f066a9bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_right_toIcoMod : ContinuousWithinAt (toIcoMod hp a) (Ici x) x := by
  intro s h
  rw [Filter.mem_map, mem_nhdsWithin_iff_exists_mem_nhds_inter]
  haveI : Nontrivial 𝕜 := ⟨⟨0, p, hp.ne⟩⟩
  simp_rw [mem_nhds_iff_exists_Ioo_subset] at h ⊢
  obtain ⟨l, u, hxI, hIs⟩ := h
  let d := toIcoDiv hp a x • p
  have hd := toIcoMod_mem_Ico hp a x
  simp_rw [subset_def, mem_inter_iff]
  refine ⟨_, ⟨l + d, min (a + p) u + d, ?_, fun x => id⟩, fun y => ?_⟩ <;>
    simp_rw [← sub_mem_Ioo_iff_left, mem_Ioo, lt_min_iff]
  · exact ⟨hxI.1, hd.2, hxI.2⟩
  · rintro ⟨h, h'⟩
    apply hIs
    rw [← toIcoMod_sub_zsmul, (toIcoMod_eq_self _).2]
    exacts [⟨h.1, h.2.2⟩, ⟨hd.1.trans (sub_le_sub_right h' _), h.2.1⟩]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant41c4395b36fe09d75b53239c7b0c07ab7cb4a9c21043a9a0b4f164478f036dd9.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f100dfac99db57c27650b5a343da01771e2a7417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
