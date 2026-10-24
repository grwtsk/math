# preimage_smul_setₛₗ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0afef05ba6c69b59f230bc8f2c5490fd450f4d92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7036c3b294aa2bfce87e0ab30ec633ae397e08be668f0fdc35812d9dae3933b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b6fc4ac-6f7c-ddfe-469b-6b63280f895e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:016ee554-8709-6267-54b5-17c39e1b8f01",
  "kind": "theorem",
  "lexical_name": "preimage_smul_setₛₗ'",
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
  "slug": "preimage-smul-set--1d20d48e46a5666fb239a5c7",
  "source": {
    "blob": "0afef05ba6c69b59f230bc8f2c5490fd450f4d92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantb7036c3b294aa2bfce87e0ab30ec633ae397e08be668f0fdc35812d9dae3933b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d20d48e46a5666fb239a5c7bd9cb21f563b0de8b58e0a43b388852cc6f4d349",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantb7036c3b294aa2bfce87e0ab30ec633ae397e08be668f0fdc35812d9dae3933b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:016ee554-8709-6267-54b5-17c39e1b8f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_smul_setₛₗ' {c : M}
    (hc : Function.Surjective (fun (m : α) ↦ c • m))
    (hc' : Function.Injective (fun (n : β) ↦ σ c • n)) :
    f ⁻¹' (σ c • t) = c • f ⁻¹' t := by
  refine Subset.antisymm ?_ (smul_preimage_set_subsetₛₗ f c t)
  rw [subset_def, hc.forall]
  rintro x ⟨y, hy, hxy⟩
  rw [map_smulₛₗ, hc'.eq_iff] at hxy
  subst y
  exact smul_mem_smul_set hy

end SMul

section Monoid

variable {M N F : Type*} {α β : Type*} {σ : M → N} [Monoid M] [Monoid N]
  [MulAction M α] [MulAction N β] [FunLike F α β] [MulActionSemiHomClass F σ α β]
  {f : F} {t : Set β} {c : M}

/-- `preimage_smul_setₛₗ` when both scalars act by unit -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantb7036c3b294aa2bfce87e0ab30ec633ae397e08be668f0fdc35812d9dae3933b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantb7036c3b294aa2bfce87e0ab30ec633ae397e08be668f0fdc35812d9dae3933b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0afef05ba6c69b59f230bc8f2c5490fd450f4d92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
