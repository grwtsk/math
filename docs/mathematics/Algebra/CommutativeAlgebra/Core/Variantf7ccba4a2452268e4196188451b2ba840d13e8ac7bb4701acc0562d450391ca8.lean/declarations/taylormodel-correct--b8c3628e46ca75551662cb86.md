# taylorModel_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d29e5f28-8541-2289-a75c-956474731d45",
  "kind": "theorem",
  "lexical_name": "taylorModel_correct",
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
  "slug": "taylormodel-correct--b8c3628e46ca75551662cb86",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1083,
    "line": 1061,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8c3628e46ca75551662cb86ca1b090d4a5d3eb9cfb3e46c8da82b94c112ab2e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29e5f28-8541-2289-a75c-956474731d45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1061–1083.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylorModel_correct (tm : TaylorModel) (f : ℝ → ℝ)
    (hf : ∀ x ∈ tm.domain, f x ∈ tm.evalSet x) :
    ∀ x ∈ tm.domain, f x ∈ tm.bound := by
  intro x hx
  have hfx := hf x hx
  simp only [TaylorModel.evalSet, Set.mem_setOf_eq] at hfx
  obtain ⟨r, hr_mem, hr_eq⟩ := hfx
  -- Use Bernstein bounds (via the correctness theorem)
  have hpoly : tm.evalPoly x ∈ tm.polyBoundIntervalBernstein := by
    simp only [TaylorModel.evalPoly, TaylorModel.polyBoundIntervalBernstein]
    exact poly_eval_mem_boundPolyBernstein tm.poly tm.domain tm.center x hx
  have hr : r ∈ tm.remainder := hr_mem
  have hsum : tm.evalPoly x + r ∈ IntervalRat.add tm.polyBoundIntervalBernstein tm.remainder :=
    IntervalRat.mem_add hpoly hr
  simp only [TaylorModel.bound]
  rw [hr_eq]
  exact hsum

/-! ### Local evalSet correctness lemmas -/

namespace TaylorModel

/-- Constant TM correctness for evalSet: q ∈ const(q).evalSet x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L1061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
