# linearIndependent_iff_eq_zero_of_smul_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 796,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5144af0-bd80-2403-ce6c-e8224209698d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ac69b3d-f1ff-1b1d-5dd3-dbd06618f332",
  "kind": "theorem",
  "lexical_name": "linearIndependent_iff_eq_zero_of_smul_mem_span",
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
  "slug": "linearindependent-iff-eq-zero-of-smul-mem-span--583d4c4fcc87519433f9323c",
  "source": {
    "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 827,
    "line": 796,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:583d4c4fcc87519433f9323c7391c7dca53953642fa4e8672fd3b2541ec23c20",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac69b3d-f1ff-1b1d-5dd3-dbd06618f332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_iff_eq_zero_of_smul_mem_span :
    LinearIndependent R v ↔ ∀ (i : ι) (a : R), a • v i ∈ span R (v '' (univ \ {i})) → a = 0 :=
  ⟨fun hv ↦ hv.eq_zero_of_smul_mem_span, fun H =>
    linearIndependent_iff.2 fun l hl => by
      ext i; simp only [Finsupp.zero_apply]
      by_contra hn
      refine hn (H i _ ?_)
      refine (Finsupp.mem_span_image_iff_linearCombination R).2 ⟨Finsupp.single i (l i) - l, ?_, ?_⟩
      · rw [Finsupp.mem_supported']
        intro j hj
        have hij : j = i :=
          Classical.not_not.1 fun hij : j ≠ i =>
            hj ((mem_diff _).2 ⟨mem_univ _, fun h => hij (eq_of_mem_singleton h)⟩)
        simp [hij]
      · simp [hl]⟩

end Module

/-!
### Properties which require `DivisionRing K`

These can be considered generalizations of properties of linear independence in vector spaces.
-/


section Module

variable [DivisionRing K] [AddCommGroup V] [Module K V]
variable {v : ι → V} {s t : Set ι} {x y : V}

open Submodule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c0f70672df92efe72305f67e696fb08b3d81a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
