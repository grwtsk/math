# partialOddGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20eb0fd2-639e-76cf-1a26-bd98cb4050fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf8a7c39-57e3-e8cd-c28c-5b25492d1ba5",
  "kind": "theorem",
  "lexical_name": "partialOddGF_prop",
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
  "slug": "partialoddgf-prop--502d7f463aa65dfdfd0e77b0",
  "source": {
    "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 380,
    "path": "GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:502d7f463aa65dfdfd0e77b0eb32a9296416e1fd5437a2bd72138c731b72af8a",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8a7c39-57e3-e8cd-c28c-5b25492d1ba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialOddGF_prop [Field α] (n m : ℕ) :
    (Finset.card
          ((univ : Finset (Nat.Partition n)).filter fun p =>
            ∀ j ∈ p.parts, j ∈ (range m).map mkOdd) :
        α) =
      coeff α n (partialOddGF m) := by
  rw [partialOddGF]
  -- Porting note: `convert` timeouts. Please revert to `convert` when the performance of `convert`
  --               is improved.
  refine Eq.trans ?_
    (Eq.trans (partialGF_prop α n ((range m).map mkOdd) ?_ (fun _ => Set.univ) fun _ _ => trivial)
      (Eq.symm ?_))
  · congr
    simp only [true_and_iff, forall_const, Set.mem_univ]
  · intro i
    rw [mem_map]
    rintro ⟨a, -, rfl⟩
    exact Nat.succ_pos _
  · congr 1
    rw [Finset.prod_map]
    simp_rw [num_series']
    congr! 2 with x
    ext k
    constructor
    · rintro ⟨p, rfl⟩
      refine' ⟨p, ⟨⟩, _⟩
      apply mul_comm
    rintro ⟨a_w, -, rfl⟩
    apply Dvd.intro_left a_w rfl
#align theorems_100.partial_odd_gf_prop Theorems100.partialOddGF_prop

/-- If m is big enough, the partial product's coefficient counts the number of odd partitions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06eca4e9e8f5368c23adfa93631e01d414ce4755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
