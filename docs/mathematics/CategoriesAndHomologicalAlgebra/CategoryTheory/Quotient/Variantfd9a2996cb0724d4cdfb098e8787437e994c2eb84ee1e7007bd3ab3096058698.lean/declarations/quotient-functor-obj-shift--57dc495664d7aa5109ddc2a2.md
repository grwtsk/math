# Quotient.functor_obj_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40fcad54992337349b62c55c74a4c451198569fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9392eea-e3e1-a958-4e7a-14789f9ddd08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8abc65f3-703b-b72e-d071-7cecc6a33f02",
  "kind": "lemma",
  "lexical_name": "Quotient.functor_obj_shift",
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
  "slug": "quotient-functor-obj-shift--57dc495664d7aa5109ddc2a2",
  "source": {
    "blob": "40fcad54992337349b62c55c74a4c451198569fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57dc495664d7aa5109ddc2a25d5f78dbd76d8112115ed1d2c51c496b9d975634",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abc65f3-703b-b72e-d071-7cecc6a33f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Quotient.functor_obj_shift [r.IsCompatibleWithShift A] (X : C) (n : A) :
    ((Quotient.functor r).obj X)⟦n⟧ = (Quotient.functor r).obj (X⟦n⟧) := rfl

-- the construction is made irreducible in order to prevent timeouts and abuse of defeq
attribute [irreducible] HasShift.quotient Quotient.functor_commShift

namespace Quotient

variable [r.IsCompatibleWithShift A] [F.CommShift A]
    (hF : ∀ (x y : C) (f₁ f₂ : x ⟶ y), r f₁ f₂ → F.map f₁ = F.map f₂)

namespace LiftCommShift

variable {A}

/-- Auxiliary definition for `Quotient.liftCommShift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantfd9a2996cb0724d4cdfb098e8787437e994c2eb84ee1e7007bd3ab3096058698.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fcad54992337349b62c55c74a4c451198569fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
