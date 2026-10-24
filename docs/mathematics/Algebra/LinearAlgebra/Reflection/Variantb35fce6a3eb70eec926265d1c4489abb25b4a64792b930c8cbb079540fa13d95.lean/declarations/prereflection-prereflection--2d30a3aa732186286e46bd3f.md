# preReflection_preReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b71055d-28b9-1f5e-e2ed-d6bc685584ae",
  "kind": "lemma",
  "lexical_name": "preReflection_preReflection",
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
  "slug": "prereflection-prereflection--2d30a3aa732186286e46bd3f",
  "source": {
    "blob": "4285bfd5ff07b7aa7a53fe270ced2a2bb057ea0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d30a3aa732186286e46bd3fff60894977d9244acb338fb4fe74b645dcd1f240",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b71055d-28b9-1f5e-e2ed-d6bc685584ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preReflection_preReflection (g : Dual R M) (h : f x = 2) :
    preReflection (preReflection x f y) (preReflection f (Dual.eval R M x) g) =
    (preReflection x f) ∘ₗ (preReflection y g) ∘ₗ (preReflection x f) := by
  ext m
  simp only [h, preReflection_apply, mul_comm (g x) (f m), mul_two, mul_assoc, Dual.eval_apply,
    LinearMap.sub_apply, LinearMap.coe_comp, LinearMap.smul_apply, smul_eq_mul, smul_sub, sub_smul,
    smul_smul, sub_mul, comp_apply, map_sub, map_smul, add_smul]
  abel

/-- Given an element `x` in a module `M` and a linear form `f` on `M` for which `f x = 2`, we define
the endomorphism of `M` for which `y ↦ y - (f y) • x`.

It is an involutive endomorphism of `M` fixing the kernel of `f` for which `x ↦ -x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4285bfd5ff07b7aa7a53fe270ced2a2bb057ea0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
