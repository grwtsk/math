# _root_.Equiv.Perm.prod_comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 413,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbdc85a6-96e9-27ad-d266-0f044265278e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e47f1f87-c519-9502-c8f9-26b617f1b1a5",
  "kind": "theorem",
  "lexical_name": "_root_.Equiv.Perm.prod_comp'",
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
  "slug": "root-equiv-perm-prod-comp--d8895161fff2781ff4f763a9",
  "source": {
    "blob": "a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 413,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8895161fff2781ff4f763a94252868fc6a986dc19b8621641e3f565757731af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e47f1f87-c519-9502-c8f9-26b617f1b1a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Equiv.Perm.prod_comp' (σ : Equiv.Perm α) (s : Finset α) (f : α → α → β)
    (hs : { a | σ a ≠ a } ⊆ s) : (∏ x ∈ s, f (σ x) x) = ∏ x ∈ s, f x (σ.symm x) := by
  convert σ.prod_comp s (fun x => f x (σ.symm x)) hs
  rw [Equiv.symm_apply_apply]

end CommMonoid

end Finset

namespace Finset

section CommMonoid

variable [CommMonoid β]

section bij
variable {ι κ α : Type*} [CommMonoid α] {s : Finset ι} {t : Finset κ} {f : ι → α} {g : κ → α}

/-- Reorder a product.

The difference with `Finset.prod_bij'` is that the bijection is specified as a surjective injection,
rather than by an inverse function.

The difference with `Finset.prod_nbij` is that the bijection is allowed to use membership of the
domain of the product, rather than being a non-dependent function. -/
@[to_additive "Reorder a sum.

The difference with `Finset.sum_bij'` is that the bijection is specified as a surjective injection,
rather than by an inverse function.

The difference with `Finset.sum_nbij` is that the bijection is allowed to use membership of the
domain of the sum, rather than being a non-dependent function."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
