# prod_mem_ideal_map_of_mem_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4f6381c-03c9-490f-d95c-cc188938fe13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2236a270-a9c6-3da7-94c2-82fce1a847eb",
  "kind": "theorem",
  "lexical_name": "prod_mem_ideal_map_of_mem_conductor",
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
  "slug": "prod-mem-ideal-map-of-mem-conductor--030d58805f08e1ba149972fd",
  "source": {
    "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 88,
    "path": "GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:030d58805f08e1ba149972fdfaec5fe0b17f55335253b75e2be871da8b7969f7",
  "verification": {
    "reference": "docs/verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2236a270-a9c6-3da7-94c2-82fce1a847eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_mem_ideal_map_of_mem_conductor {p : R} {z : S}
    (hp : p ∈ Ideal.comap (algebraMap R S) (conductor R x)) (hz' : z ∈ I.map (algebraMap R S)) :
    algebraMap R S p * z ∈ algebraMap R<x> S '' ↑(I.map (algebraMap R R<x>)) := by
  rw [Ideal.map, Ideal.span, Finsupp.mem_span_image_iff_linearCombination] at hz'
  obtain ⟨l, H, H'⟩ := hz'
  rw [Finsupp.linearCombination_apply] at H'
  rw [← H', mul_comm, Finsupp.sum_mul]
  have lem : ∀ {a : R}, a ∈ I → l a • algebraMap R S a * algebraMap R S p ∈
      algebraMap R<x> S '' I.map (algebraMap R R<x>) := by
    intro a ha
    rw [smul_eq_mul, mul_assoc, mul_comm, mul_assoc, Set.mem_image]
    refine Exists.intro
        (algebraMap R R<x> a * ⟨l a * algebraMap R S p,
          show l a * algebraMap R S p ∈ R<x> from ?h⟩) ?_
    case h =>
      rw [mul_comm]
      exact mem_conductor_iff.mp (Ideal.mem_comap.mp hp) _
    · refine ⟨?_, ?_⟩
      · rw [mul_comm]
        apply Ideal.mul_mem_left (I.map (algebraMap R R<x>)) _ (Ideal.mem_map_of_mem _ ha)
      · simp only [map_mul, mul_comm (algebraMap R S p) (l a)]
        rfl
  refine Finset.sum_induction _ (fun u => u ∈ algebraMap R<x> S '' I.map (algebraMap R R<x>))
      (fun a b => ?_) ?_ ?_
  · rintro ⟨z, hz, rfl⟩ ⟨y, hy, rfl⟩
    rw [← map_add]
    exact ⟨z + y, Ideal.add_mem _ (SetLike.mem_coe.mp hz) hy, rfl⟩
  · exact ⟨0, SetLike.mem_coe.mpr <| Ideal.zero_mem _, map_zero _⟩
  · intro y hy
    exact lem ((Finsupp.mem_supported _ l).mp H hy)

/-- A technical result telling us that `(I * S) ∩ R<x> = I * R<x>` for any ideal `I` of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a07561d840fab53bbcafae25f3cb79a86396ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
