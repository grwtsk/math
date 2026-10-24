# nontrivial_bcubes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02060e1f-06b8-0e0b-8730-fcb8a132135c",
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
  "slug": "nontrivial-bcubes--a91cef779365c088dedc39eb",
  "source": {
    "blob": "665ab04f8dd696df288baad6819bd671f1607043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a91cef779365c088dedc39ebb8dc16d8e13192a992bbecd90e903f3606c10a87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02060e1f-06b8-0e0b-8730-fcb8a132135c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–313.

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
    · simp only [p, ite_eq_right hj]
    intro j'; simp only [tail, side_tail]
    by_cases hj' : j'.succ = j
    · simp [p, ite_eq_left, side, hj', hw', w_lt_w h v h2i]
    · simp [p, ite_eq_right hj']
  rcases v.1 hp with ⟨_, ⟨i', rfl⟩, hi'⟩
  have h2i' : i' ∈ bcubes cs c := ⟨hi'.1.symm, v.2.1 i' hi'.1.symm ⟨tail p, hi'.2, hp.2⟩⟩
  refine ⟨i, h2i, i', h2i', ?_⟩
  rintro rfl
  apply not_le_of_gt (hi'.2 ⟨1, Nat.le_of_succ_le_succ h.three_le⟩).2
  simp only [tail, Cube.tail, p]
  rw [ite_eq_left]
  · gcongr
    exact (hi.2 _).1
  simp [j]

/-- There is a cube in the valley -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665ab04f8dd696df288baad6819bd671f1607043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
