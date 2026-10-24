# nontrivial_bcubes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfceb266043fe08b1c284f313ffd529fdd6a6fc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ce17497-d27a-d131-4402-eca0ec8070f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62738e67-d656-a325-df88-10cfdab95167",
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
  "slug": "nontrivial-bcubes--6aca366ee717ead6a8d0a738",
  "source": {
    "blob": "bfceb266043fe08b1c284f313ffd529fdd6a6fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 275,
    "path": "GRWTSK/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aca366ee717ead6a8d0a73890916a1af390642e10e0b6114c6da59cc0c8b28f",
  "verification": {
    "reference": "docs/verification/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62738e67-d656-a325-df88-10cfdab95167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_bcubes : (bcubes cs c).Nontrivial := by
  rcases v.1 c.b_mem_bottom with ⟨_, ⟨i, rfl⟩, hi⟩
  have h2i : i ∈ bcubes cs c :=
    ⟨hi.1.symm, v.2.1 i hi.1.symm ⟨tail c.b, hi.2, fun j => c.b_mem_side j.succ⟩⟩
  let j : Fin (n + 1) := ⟨2, h.three_le⟩
  have hj : 0 ≠ j := by simp only [j, Fin.ext_iff, Ne]; norm_num
  let p : Fin (n + 1) → ℝ := fun j' => if j' = j then c.b j + (cs i).w else c.b j'
  have hp : p ∈ c.bottom := by
    constructor
    · simp only [p, bottom, if_neg hj]
    intro j'; simp only [tail, side_tail]
    by_cases hj' : j'.succ = j
    · simp [p, if_pos, side, hj', hw', w_lt_w h v h2i]
    · simp [p, if_neg hj']
  rcases v.1 hp with ⟨_, ⟨i', rfl⟩, hi'⟩
  have h2i' : i' ∈ bcubes cs c := ⟨hi'.1.symm, v.2.1 i' hi'.1.symm ⟨tail p, hi'.2, hp.2⟩⟩
  refine ⟨i, h2i, i', h2i', ?_⟩
  rintro rfl
  apply not_le_of_lt (hi'.2 ⟨1, Nat.le_of_succ_le_succ h.three_le⟩).2
  simp only [tail, Cube.tail, p]
  rw [if_pos, add_le_add_iff_right]
  · exact (hi.2 _).1
  rfl

/-- There is a cube in the valley -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfceb266043fe08b1c284f313ffd529fdd6a6fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
