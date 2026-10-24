# coe_iSup_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cfadcf41987d9cac83486d0e01ca63167277732",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:988c5ae9-9b67-16c9-df83-f357c7af45fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad2996db-563b-4e12-eb35-8ac857475d11",
  "kind": "theorem",
  "lexical_name": "coe_iSup_of_directed",
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
  "slug": "coe-isup-of-directed--7671e299e031cfb7ff55af87",
  "source": {
    "blob": "5cfadcf41987d9cac83486d0e01ca63167277732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1182,
    "line": 1152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7671e299e031cfb7ff55af8722e7673ad5e131f8f2103bf225a0843435341d29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad2996db-563b-4e12-eb35-8ac857475d11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1152–1182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_iSup_of_directed [Nonempty ι] {S : ι → Subalgebra R A} (dir : Directed (· ≤ ·) S) :
    ↑(iSup S) = ⋃ i, (S i : Set A) :=
  -- Porting note: moved up the `let i` to use it in `zero_mem'` and `one_mem'`
  let i := @Nonempty.some ι inferInstance
  let K : Subalgebra R A :=
    { carrier := ⋃ i, S i
      -- Porting note: auto_params failing, need to provide these explicitly
      zero_mem' := by simp only [Set.mem_iUnion, SetLike.mem_coe]; exact ⟨i, zero_mem _⟩
      one_mem' := by simp only [Set.mem_iUnion, SetLike.mem_coe]; exact ⟨i, one_mem _⟩
      mul_mem' := fun hx hy =>
        let ⟨i, hi⟩ := Set.mem_iUnion.1 hx
        let ⟨j, hj⟩ := Set.mem_iUnion.1 hy
        let ⟨k, hik, hjk⟩ := dir i j
        Set.mem_iUnion.2 ⟨k, Subalgebra.mul_mem (S k) (hik hi) (hjk hj)⟩
      add_mem' := fun hx hy =>
        let ⟨i, hi⟩ := Set.mem_iUnion.1 hx
        let ⟨j, hj⟩ := Set.mem_iUnion.1 hy
        let ⟨k, hik, hjk⟩ := dir i j
        Set.mem_iUnion.2 ⟨k, Subalgebra.add_mem (S k) (hik hi) (hjk hj)⟩
      algebraMap_mem' := fun _ ↦
        Set.mem_iUnion.2 ⟨i, Subalgebra.algebraMap_mem _ _⟩ }
  have : iSup S = K :=
    le_antisymm (iSup_le fun i => Set.subset_iUnion (fun i => (↑(S i) : Set A)) i)
      (SetLike.coe_subset_coe.1 (Set.iUnion_subset fun i => SetLike.coe_subset_coe.2 (le_iSup _ _)))
  this.symm ▸ rfl
#align subalgebra.coe_supr_of_directed Subalgebra.coe_iSup_of_directed

-- Porting note: TODO: turn `hT` into an assumption `T ≤ iSup K`. That's what `Set.iUnionLift` needs
-- Porting note: the proofs of `map_{zero,one,add,mul}` got a bit uglier, probably unification trbls
/-- Define an algebra homomorphism on a directed supremum of subalgebras by defining
it on each subalgebra, and proving that it agrees on the intersection of subalgebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean#L1152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cfadcf41987d9cac83486d0e01ca63167277732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
