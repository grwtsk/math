# nontrivial_bcubes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a31ba99a-0245-d6c4-4b59-37ef5c1bdc21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b06f228-5910-f7c3-2d43-6f0bf0df5546",
  "kind": "theorem",
  "lexical_name": "nontrivial_bcubes",
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
  "slug": "nontrivial-bcubes--f9fdfba0337a99eb3d4090c6",
  "source": {
    "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 304,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9fdfba0337a99eb3d4090c69ce63f16b0782b96c903b8658b8100d6defcab1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b06f228-5910-f7c3-2d43-6f0bf0df5546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_bcubes : (bcubes cs c).Nontrivial := by
  rcases v.1 c.b_mem_bottom with ⟨_, ⟨i, rfl⟩, hi⟩
  have h2i : i ∈ bcubes cs c :=
    ⟨hi.1.symm, v.2.1 i hi.1.symm ⟨tail c.b, hi.2, fun j => c.b_mem_side j.succ⟩⟩
  let j : Fin (n + 1) := ⟨2, h.three_le⟩
  have hj : 0 ≠ j := by simp only [Fin.ext_iff, Ne.def]; norm_num
  let p : Fin (n + 1) → ℝ := fun j' => if j' = j then c.b j + (cs i).w else c.b j'
  have hp : p ∈ c.bottom := by
    constructor
    · simp only [bottom, if_neg hj]
    intro j'; simp only [tail, side_tail]
    by_cases hj' : j'.succ = j
    · simp [if_pos, side, hj', hw', w_lt_w h v h2i]
    · simp [if_neg hj']
  rcases v.1 hp with ⟨_, ⟨i', rfl⟩, hi'⟩
  have h2i' : i' ∈ bcubes cs c := ⟨hi'.1.symm, v.2.1 i' hi'.1.symm ⟨tail p, hi'.2, hp.2⟩⟩
  refine' ⟨i, h2i, i', h2i', _⟩
  rintro rfl
  apply not_le_of_lt (hi'.2 ⟨1, Nat.le_of_succ_le_succ h.three_le⟩).2
  simp only [tail, Cube.tail]
  rw [if_pos, add_le_add_iff_right]
  · exact (hi.2 _).1
  rfl
#align theorems_100.«82».nontrivial_bcubes Theorems100.«82».nontrivial_bcubes

/-- There is a cube in the valley -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03113afd3a5aa9db01a9ed0588461d97d06d9e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
