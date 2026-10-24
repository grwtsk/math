# sum_map_tmul_tmul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:691e6bbb-75bb-6393-d687-0b0af0a0fb06",
  "kind": "theorem",
  "lexical_name": "sum_map_tmul_tmul_eq",
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
  "slug": "sum-map-tmul-tmul-eq--a51c472d76de3c8209af09a3",
  "source": {
    "blob": "0957870881e4684b7be373d0d6e1863cced976f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51c472d76de3c8209af09a368513258eae3f3b2171dab1ebcc063807d717232",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:691e6bbb-75bb-6393-d687-0b0af0a0fb06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_map_tmul_tmul_eq {B : Type*} [AddCommMonoid B] [Module R B]
    {F : Type*} [FunLike F A B] [LinearMapClass F R A B] (f g h : F) (a : A) {repr : Repr R a}
    {a₁ : (i : repr.ι) → Repr R (repr.left i)} {a₂ : (i : repr.ι) → Repr R (repr.right i)} :
    ∑ i ∈ repr.index, ∑ j ∈ (a₂ i).index,
      f (repr.left i) ⊗ₜ (g ((a₂ i).left j) ⊗ₜ h ((a₂ i).right j)) =
    ∑ i ∈ repr.index, ∑ j ∈ (a₁ i).index,
      f ((a₁ i).left j) ⊗ₜ[R] (g ((a₁ i).right j) ⊗ₜ[R] h (repr.right i)) := by
  have := sum_tmul_tmul_eq repr a₁ a₂
  apply_fun TensorProduct.map (f : A →ₗ[R] B)
    (TensorProduct.map (g : A →ₗ[R] B) (h : A →ₗ[R] B)) at this
  simp_all only [map_sum, TensorProduct.map_tmul, LinearMap.coe_coe]

end Coalgebra

open Coalgebra

namespace CommSemiring
variable (R : Type u) [CommSemiring R]

/-- Every commutative (semi)ring is a coalgebra over itself, with `Δ r = 1 ⊗ₜ r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0957870881e4684b7be373d0d6e1863cced976f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
