# AlgHom.eq_piEvalAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:639946e8-fae9-93ca-d05c-335ad6bc2ef8",
  "kind": "lemma",
  "lexical_name": "AlgHom.eq_piEvalAlgHom",
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
  "slug": "alghom-eq-pievalalghom--c5f579b32c407b840b4f4707",
  "source": {
    "blob": "6df0b372418e27fa701420f7e78ae47940dede3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5f579b32c407b840b4f470746b8d2b2bc45c9b0e702879c0390f01422d0b653",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:639946e8-fae9-93ca-d05c-335ad6bc2ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AlgHom.eq_piEvalAlgHom {k G : Type*} [CommSemiring k] [NoZeroDivisors k] [Nontrivial k]
    [Finite G] (φ : (G → k) →ₐ[k] k) : ∃ (s : G), φ = Pi.evalAlgHom _ _ s := by
  have h1 := map_one φ
  classical
  have := Fintype.ofFinite G
  simp only [← Finset.univ_sum_single (1 : G → k), Pi.one_apply, map_sum] at h1
  obtain ⟨s, hs⟩ : ∃ (s : G), φ (Pi.single s 1) ≠ 0 := by
    by_contra
    simp_all
  have h2 : ∀ t ≠ s, φ (Pi.single t 1) = 0 := by
    refine fun _ _ ↦ (eq_zero_or_eq_zero_of_mul_eq_zero ?_).resolve_left hs
    rw [← map_mul]
    convert map_zero φ
    ext u
    by_cases u = s <;> simp_all
  have h3 : φ (Pi.single s 1) = 1 := by
    rwa [Fintype.sum_eq_single s h2] at h1
  use s
  refine AlgHom.toLinearMap_injective ((Pi.basisFun k G).ext fun t ↦ ?_)
  by_cases t = s <;> simp_all

@[deprecated (since := "2025-04-15")] alias eval_of_algHom := AlgHom.eq_piEvalAlgHom

namespace Module

variable (ι R M N : Type*) [Finite ι] [CommSemiring R]
  [AddCommMonoid M] [AddCommMonoid N] [Module R M] [Module R N]

/-- The natural linear equivalence: `Mⁱ ≃ Hom(Rⁱ, M)` for an `R`-module `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantdf8dcfaf56c87835e6c271549d70038f14cba05902e88a4913d3430bd3a383d3.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df0b372418e27fa701420f7e78ae47940dede3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
