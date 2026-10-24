# prod_mem_ideal_map_of_mem_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12577f8b7e47b53b0c01c02c003ea6e02db78377",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce1b5f4e-f043-791f-bbae-376100fb4e3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76de0e97-d840-08b4-3367-b83ac7d8c28f",
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
  "slug": "prod-mem-ideal-map-of-mem-conductor--7ba09ad8d6ebcf8b23111c9d",
  "source": {
    "blob": "12577f8b7e47b53b0c01c02c003ea6e02db78377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 112,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba09ad8d6ebcf8b23111c9dd881a70997edb289a739f90b24fa9de414b73872",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76de0e97-d840-08b4-3367-b83ac7d8c28f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–143.

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
    rw [Algebra.id.smul_eq_mul, mul_assoc, mul_comm, mul_assoc, Set.mem_image]
    refine Exists.intro
        (algebraMap R R<x> a * ⟨l a * algebraMap R S p,
          show l a * algebraMap R S p ∈ R<x> from ?h⟩) ?_
    case h =>
      rw [mul_comm]
      exact mem_conductor_iff.mp (Ideal.mem_comap.mp hp) _
    · refine ⟨?_, ?_⟩
      · rw [mul_comm]
        apply Ideal.mul_mem_left (I.map (algebraMap R R<x>)) _ (Ideal.mem_map_of_mem _ ha)
      · simp only [RingHom.map_mul, mul_comm (algebraMap R S p) (l a)]
        rfl
  refine Finset.sum_induction _ (fun u => u ∈ algebraMap R<x> S '' I.map (algebraMap R R<x>))
      (fun a b => ?_) ?_ ?_
  · rintro ⟨z, hz, rfl⟩ ⟨y, hy, rfl⟩
    rw [← RingHom.map_add]
    exact ⟨z + y, Ideal.add_mem _ (SetLike.mem_coe.mp hz) hy, rfl⟩
  · exact ⟨0, SetLike.mem_coe.mpr <| Ideal.zero_mem _, RingHom.map_zero _⟩
  · intro y hy
    exact lem ((Finsupp.mem_supported _ l).mp H hy)

/-- A technical result telling us that `(I * S) ∩ R<x> = I * R<x>` for any ideal `I` of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12577f8b7e47b53b0c01c02c003ea6e02db78377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
