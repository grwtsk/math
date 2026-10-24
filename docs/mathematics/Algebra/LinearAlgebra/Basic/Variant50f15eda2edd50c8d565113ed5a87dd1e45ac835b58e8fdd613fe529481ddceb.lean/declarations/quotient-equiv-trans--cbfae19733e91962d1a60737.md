# Quotient.equiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6d0aa96-df52-6a41-d76f-2a19bfdb75b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb61427b-4f8d-ab92-5c1e-1fa23fc9b54a",
  "kind": "theorem",
  "lexical_name": "Quotient.equiv_trans",
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
  "slug": "quotient-equiv-trans--cbfae19733e91962d1a60737",
  "source": {
    "blob": "4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 345,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbfae19733e91962d1a607378bad8e11608518ef2690f0eb75e099b35df003bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb61427b-4f8d-ab92-5c1e-1fa23fc9b54a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Quotient.equiv_trans {N O : Type*} [AddCommGroup N] [Module R N] [AddCommGroup O]
    [Module R O] (P : Submodule R M) (Q : Submodule R N) (S : Submodule R O) (e : M ≃ₗ[R] N)
    (f : N ≃ₗ[R] O) (he : P.map e = Q) (hf : Q.map f = S) (hef : P.map (e.trans f) = S) :
    Quotient.equiv P S (e.trans f) hef =
      (Quotient.equiv P Q e he).trans (Quotient.equiv Q S f hf) := by
  ext
  -- `simp` can deal with `hef` depending on `e` and `f`
  simp only [Quotient.equiv_apply, LinearEquiv.trans_apply, LinearEquiv.coe_trans]
  -- `rw` can deal with `mapQ_comp` needing extra hypotheses coming from the RHS
  rw [mapQ_comp, LinearMap.comp_apply]

end Submodule

open Submodule

namespace LinearMap

section Ring

variable {R M R₂ M₂ R₃ M₃ : Type*}
variable [Ring R] [Ring R₂] [Ring R₃]
variable [AddCommMonoid M] [AddCommGroup M₂] [AddCommMonoid M₃]
variable [Module R M] [Module R₂ M₂] [Module R₃ M₃]
variable {τ₁₂ : R →+* R₂} {τ₂₃ : R₂ →+* R₃} {τ₁₃ : R →+* R₃}
variable [RingHomCompTriple τ₁₂ τ₂₃ τ₁₃] [RingHomSurjective τ₁₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
