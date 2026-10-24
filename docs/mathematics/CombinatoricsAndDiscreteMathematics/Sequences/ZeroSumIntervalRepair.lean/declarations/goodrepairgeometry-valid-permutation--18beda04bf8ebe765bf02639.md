# goodRepairGeometry_valid_permutation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85b341bc-834c-ac7b-67fe-b87cf008360d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ea97b42-e86c-34a0-bc1c-7d7d5eb20079",
  "kind": "theorem",
  "lexical_name": "goodRepairGeometry_valid_permutation",
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
  "slug": "goodrepairgeometry-valid-permutation--18beda04bf8ebe765bf02639",
  "source": {
    "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 348,
    "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18beda04bf8ebe765bf02639c528bfe1243bd7ebfe95edd4ff535e051fe33d50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea97b42-e86c-34a0-bc1c-7d7d5eb20079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodRepairGeometry_valid_permutation (σ : Fin n → G) (D : ℕ)
    (hn : ∀ i, σ i ≠ 0) (hg : GoodRepairGeometry σ D) :
    ∃ trace : SwapTrace n, SupportsDisjoint trace ∧ TraceBounded D trace ∧
      (List.ofFn (σ ∘ replayPermutation trace)).Perm (List.ofFn σ) ∧
      ValidPartialSumOrder (List.ofFn (σ ∘ replayPermutation trace)) := by
  obtain ⟨trace, hd, hb, hbad⟩ := goodRepairGeometry_exists_trace σ D hg
  refine ⟨trace, hd, hb, (replayPermutation trace).ofFn_comp_perm σ, ?_⟩
  apply (valid_ofFn_iff_no_zero_sum_Icc _ (fun i => hn _)).mpr
  intro a b ha hab hz
  have hm : b ∈ BadRightEndpoints (σ ∘ replayPermutation trace) :=
    (mem_badRightEndpoints _ _).mpr ⟨a, ha, hab, hz⟩
  simp [hbad] at hm

/-- A bounded local swap alone does not ensure successful repair: the
zero-based swap `(0,1)` creates the zero-sum interval `[2,3]` (one based). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e696666b5fcdb3d5a0493e2001361069a5209c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
