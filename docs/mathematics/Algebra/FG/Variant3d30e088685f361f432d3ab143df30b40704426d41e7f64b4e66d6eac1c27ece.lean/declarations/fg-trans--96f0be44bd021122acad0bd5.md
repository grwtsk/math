# fg_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcdae6af34e2cdd08315bbbfab6cbfb81b50021c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43d8c145-8a71-1b5f-3331-d6c62d61c84e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f25ece7-ec2f-bcff-ddbf-43db3368c1d4",
  "kind": "theorem",
  "lexical_name": "fg_trans",
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
  "slug": "fg-trans--96f0be44bd021122acad0bd5",
  "source": {
    "blob": "dcdae6af34e2cdd08315bbbfab6cbfb81b50021c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 44,
    "path": "GRWTSK/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96f0be44bd021122acad0bd5e6f1f2a7d72b07d960e1d2df7d17f809066ff10e",
  "verification": {
    "reference": "docs/verification/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f25ece7-ec2f-bcff-ddbf-43db3368c1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_trans (h1 : (adjoin R s).toSubmodule.FG) (h2 : (adjoin (adjoin R s) t).toSubmodule.FG) :
    (adjoin R (s ∪ t)).toSubmodule.FG := by
  rcases fg_def.1 h1 with ⟨p, hp, hp'⟩
  rcases fg_def.1 h2 with ⟨q, hq, hq'⟩
  refine fg_def.2 ⟨p * q, hp.mul hq, le_antisymm ?_ ?_⟩
  · rw [span_le, Set.mul_subset_iff]
    intro x hx y hy
    change x * y ∈ adjoin R (s ∪ t)
    refine Subalgebra.mul_mem _ ?_ ?_
    · have : x ∈ Subalgebra.toSubmodule (adjoin R s) := by
        rw [← hp']
        exact subset_span hx
      exact adjoin_mono Set.subset_union_left this
    have : y ∈ Subalgebra.toSubmodule (adjoin (adjoin R s) t) := by
      rw [← hq']
      exact subset_span hy
    change y ∈ adjoin R (s ∪ t)
    rwa [adjoin_union_eq_adjoin_adjoin]
  · intro r hr
    change r ∈ adjoin R (s ∪ t) at hr
    rw [adjoin_union_eq_adjoin_adjoin] at hr
    change r ∈ Subalgebra.toSubmodule (adjoin (adjoin R s) t) at hr
    rw [← hq', ← Set.image_id q, Finsupp.mem_span_image_iff_linearCombination (adjoin R s)] at hr
    rcases hr with ⟨l, hlq, rfl⟩
    have := @Finsupp.linearCombination_apply A A (adjoin R s)
    rw [this, Finsupp.sum]
    refine sum_mem ?_
    intro z hz
    change (l z).1 * _ ∈ _
    have : (l z).1 ∈ Subalgebra.toSubmodule (adjoin R s) := (l z).2
    rw [← hp', ← Set.image_id p, Finsupp.mem_span_image_iff_linearCombination R] at this
    rcases this with ⟨l2, hlp, hl⟩
    have := @Finsupp.linearCombination_apply A A R
    rw [this] at hl
    rw [← hl, Finsupp.sum_mul]
    refine sum_mem ?_
    intro t ht
    change _ * _ ∈ _
    rw [smul_mul_assoc]
    refine smul_mem _ _ ?_
    exact subset_span ⟨t, hlp ht, z, hlq hz, rfl⟩

end Algebra

namespace Subalgebra

variable {R : Type u} {A : Type v} {B : Type w}
variable [CommSemiring R] [Semiring A] [Algebra R A] [Semiring B] [Algebra R B]

/-- A subalgebra `S` is finitely generated if there exists `t : Finset A` such that
`Algebra.adjoin R t = S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdae6af34e2cdd08315bbbfab6cbfb81b50021c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
