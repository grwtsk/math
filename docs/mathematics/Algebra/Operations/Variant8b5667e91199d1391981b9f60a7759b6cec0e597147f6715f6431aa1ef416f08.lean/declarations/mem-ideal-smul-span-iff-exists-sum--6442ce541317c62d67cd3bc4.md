# mem_ideal_smul_span_iff_exists_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "499b320f9e65958ff3b7591df57348f9eecbe7fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f433a51-f7f5-888b-306b-2292d63de1f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00e9e339-6d46-c77a-6820-ce1f78fd94ec",
  "kind": "theorem",
  "lexical_name": "mem_ideal_smul_span_iff_exists_sum",
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
  "slug": "mem-ideal-smul-span-iff-exists-sum--6442ce541317c62d67cd3bc4",
  "source": {
    "blob": "499b320f9e65958ff3b7591df57348f9eecbe7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 182,
    "path": "GRWTSK/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6442ce541317c62d67cd3bc40b5978fa126287c1316fe5cb14d24250fd5f8c3e",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e9e339-6d46-c77a-6820-ce1f78fd94ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_ideal_smul_span_iff_exists_sum {ι : Type*} (f : ι → M) (x : M) :
    x ∈ I • span R (Set.range f) ↔
      ∃ (a : ι →₀ R) (_ : ∀ i, a i ∈ I), (a.sum fun i c => c • f i) = x := by
  constructor; swap
  · rintro ⟨a, ha, rfl⟩
    exact Submodule.sum_mem _ fun c _ => smul_mem_smul (ha c) <| subset_span <| Set.mem_range_self _
  refine fun hx => span_induction ?_ ?_ ?_ ?_ (mem_smul_span.mp hx)
  · simp only [Set.mem_iUnion, Set.mem_range, Set.mem_singleton_iff]
    rintro x ⟨y, hy, x, ⟨i, rfl⟩, rfl⟩
    refine ⟨Finsupp.single i y, fun j => ?_, ?_⟩
    · letI := Classical.decEq ι
      rw [Finsupp.single_apply]
      split_ifs
      · assumption
      · exact I.zero_mem
    refine @Finsupp.sum_single_index ι R M _ _ i _ (fun i y => y • f i) ?_
    simp
  · exact ⟨0, fun _ => I.zero_mem, Finsupp.sum_zero_index⟩
  · rintro x y - - ⟨ax, hax, rfl⟩ ⟨ay, hay, rfl⟩
    refine ⟨ax + ay, fun i => I.add_mem (hax i) (hay i), Finsupp.sum_add_index' ?_ ?_⟩ <;>
      intros <;> simp only [zero_smul, add_smul]
  · rintro c x - ⟨a, ha, rfl⟩
    refine ⟨c • a, fun i => I.mul_mem_left c (ha i), ?_⟩
    rw [Finsupp.sum_smul_index, Finsupp.smul_sum] <;> intros <;> simp only [zero_smul, mul_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499b320f9e65958ff3b7591df57348f9eecbe7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
