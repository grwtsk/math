# surjective_restrictDomain_of_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcf3681f6bda45a3b6925916728ab1c7234fc630",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb3c52d7-4b79-8e2b-2261-15e4eb925f3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73d5103a-da24-c814-e493-a62de26b9793",
  "kind": "theorem",
  "lexical_name": "surjective_restrictDomain_of_isSeparable",
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
  "slug": "surjective-restrictdomain-of-isseparable--e6258ccdae5792fe10a3f2b6",
  "source": {
    "blob": "bcf3681f6bda45a3b6925916728ab1c7234fc630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 272,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6258ccdae5792fe10a3f2b6c0876e7e7ad0edfec038f03359bf15dca8fd980c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d5103a-da24-c814-e493-a62de26b9793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_restrictDomain_of_isSeparable {E : Type*}
    [Field E] [Algebra K E] [Algebra L E] [IsScalarTower K L E] [Algebra.IsSeparable L E] :
    Function.Surjective fun φ : E →ₐ[K] M ↦ φ.restrictDomain L :=
  fun f ↦ IntermediateField.exists_algHom_of_splits' (E := E) f
    fun s ↦ ⟨Algebra.IsSeparable.isIntegral L s,
      IsSepClosed.splits_codomain _ <| Algebra.IsSeparable.isSeparable L s⟩

@[deprecated (since := "2024-11-15")]
alias surjective_comp_algebraMap_of_isSeparable := surjective_restrictDomain_of_isSeparable

variable [Algebra.IsSeparable K L] {L}

/-- A (random) homomorphism from a separable extension L of K into a separably
  closed extension M of K. -/
noncomputable irreducible_def lift : L →ₐ[K] M :=
  Classical.choice <| IntermediateField.nonempty_algHom_of_adjoin_splits
    (fun x _ ↦ ⟨Algebra.IsSeparable.isIntegral K x,
      splits_codomain _ (Algebra.IsSeparable.isSeparable K x)⟩)
    (IntermediateField.adjoin_univ K L)

end IsSepClosed

namespace IsSepClosure

variable (K : Type u) [Field K] (L : Type v) (M : Type w) [Field L] [Field M]
variable [Algebra K M] [IsSepClosure K M]
variable [Algebra K L] [IsSepClosure K L]

attribute [local instance] IsSepClosure.sep_closed in
/-- A (random) isomorphism between two separable closures of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf3681f6bda45a3b6925916728ab1c7234fc630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
