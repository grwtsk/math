# mono_of_injective_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c01bdcefde8d40d47586c3fe09320442e5848071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84d6672d-ac9e-78b5-ca31-39c6a96d8363",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91e3dc27-7158-c8b8-072f-e9536478fb64",
  "kind": "lemma",
  "lexical_name": "mono_of_injective_aux",
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
  "slug": "mono-of-injective-aux--36aee38045a9bdaacdb36570",
  "source": {
    "blob": "c01bdcefde8d40d47586c3fe09320442e5848071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36aee38045a9bdaacdb3657058487d2229fb132f4190d6345b74f11302378b4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e3dc27-7158-c8b8-072f-e9536478fb64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_of_injective_aux (hι : Function.Injective ι) (c : Cofan X) (c₁ : Cofan (X ∘ ι))
    (hc : IsColimit c) (hc₁ : IsColimit c₁)
    (c₂ : Cofan (fun (k : ((Set.range ι)ᶜ : Set I)) => X k.1))
    (hc₂ : IsColimit c₂) : Mono (Cofan.IsColimit.desc hc₁ (fun i => c.inj (ι i))) := by
  classical
  let e := ((Equiv.ofInjective ι hι).sumCongr (Equiv.refl _)).trans (Equiv.Set.sumCompl _)
  refine mono_binaryCofanSum_inl' (Cofan.mk c.pt (fun i' => c.inj (e i'))) _ _ ?_
    hc₁ hc₂ _ (by simp [e])
  exact IsColimit.ofIsoColimit ((IsColimit.ofCoconeEquiv (Cocones.equivalenceOfReindexing
    (Discrete.equivalence e) (Iso.refl _))).symm hc) (Cocones.ext (Iso.refl _))

variable (hι : Function.Injective ι) (c : Cofan X) (c₁ : Cofan (X ∘ ι))
  (hc : IsColimit c) (hc₁ : IsColimit c₁)
include hι

include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01bdcefde8d40d47586c3fe09320442e5848071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
