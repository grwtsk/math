# nnnorm_sum_eq_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3b392572575c4fbb58bf5068d7c034a8fc156a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:129abd8d-b340-5ac4-9652-85cde6b62e13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7b93787-80c7-ff22-c583-a30a60634195",
  "kind": "lemma",
  "lexical_name": "nnnorm_sum_eq_sup",
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
  "slug": "nnnorm-sum-eq-sup--62c6b3e94bd0fb1d102efde7",
  "source": {
    "blob": "e3b392572575c4fbb58bf5068d7c034a8fc156a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 292,
    "path": "GRWTSK/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c6b3e94bd0fb1d102efde70f7bc67660c6c62a685834496582039f7bac8f25",
  "verification": {
    "reference": "docs/verification/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b93787-80c7-ff22-c583-a30a60634195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_sum_eq_sup {ι : Type*} {f : ι → A} (s : Finset ι)
    (h : ∀ i ∈ s, IsSelfAdjoint (f i)) (h0 : Pairwise ((· * · = 0) on f)) :
    ‖∑ i ∈ s, f i‖₊ = s.sup (‖f ·‖₊) := by
  classical
  induction s using Finset.induction with
  | empty => simp
  | insert j s hj ih =>
    suffices f j * ∑ i ∈ s, f i = 0 by
      simp_all [(h j (by simp)).nnnorm_add_eq_max (by cfc_tac) this]
    simpa [Finset.mul_sum] using Finset.sum_eq_zero fun i hi ↦ h0 (by grind)

end IsSelfAdjoint

end NonUnital

end ComplexCStarAlgebra

section Functoriality

namespace WeakDual

namespace CharacterSpace

variable {A B C 𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A] [StarRing A]
variable [NormedRing B] [NormedAlgebra 𝕜 B] [CompleteSpace B] [StarRing B]
variable [NormedRing C] [NormedAlgebra 𝕜 C] [CompleteSpace C] [StarRing C]

/-- The functorial map taking `ψ : A →⋆ₐ[ℂ] B` to a continuous function
`characterSpace ℂ B → characterSpace ℂ A` obtained by pre-composition with `ψ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GelfandDuality/Variantfdfb1aee3be9789350ebad994ba4e05a22e8a9a905bf5d6becb6009b9278e575.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b392572575c4fbb58bf5068d7c034a8fc156a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
