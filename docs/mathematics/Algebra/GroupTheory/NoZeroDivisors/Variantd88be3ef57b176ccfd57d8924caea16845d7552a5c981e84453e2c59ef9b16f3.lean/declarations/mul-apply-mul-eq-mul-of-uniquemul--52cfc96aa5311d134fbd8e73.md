# mul_apply_mul_eq_mul_of_uniqueMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:910969e5-02b8-af14-5875-15bc7d88b721",
  "kind": "theorem",
  "lexical_name": "mul_apply_mul_eq_mul_of_uniqueMul",
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
  "slug": "mul-apply-mul-eq-mul-of-uniquemul--52cfc96aa5311d134fbd8e73",
  "source": {
    "blob": "2799958949b23edc71e860cbdb351853532f2e24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52cfc96aa5311d134fbd8e73b5d7030d71eddb84b63c9bb36709f4ec3f70f71d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:910969e5-02b8-af14-5875-15bc7d88b721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_apply_mul_eq_mul_of_uniqueMul [Mul A] {f g : MonoidAlgebra R A} {a0 b0 : A}
    (h : UniqueMul f.support g.support a0 b0) :
    (f * g) (a0 * b0) = f a0 * g b0 := by
  classical
  simp_rw [mul_apply, sum, ← Finset.sum_product']
  refine (Finset.sum_eq_single (a0, b0) ?_ ?_).trans (if_pos rfl) <;> simp_rw [Finset.mem_product]
  · refine fun ab hab hne => if_neg (fun he => hne <| Prod.ext ?_ ?_)
    exacts [(h hab.1 hab.2 he).1, (h hab.1 hab.2 he).2]
  · refine fun hnotMem => ite_eq_right_iff.mpr (fun _ => ?_)
    rcases not_and_or.mp hnotMem with af | bg
    · rw [notMem_support_iff.mp af, zero_mul]
    · rw [notMem_support_iff.mp bg, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2799958949b23edc71e860cbdb351853532f2e24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
