# hasExt_of_enoughProjectives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0323645c30f5b045835c2a465f8fc89ea6b18dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d784d63e-86bd-6b9e-6559-30c722c8621b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33026eb2-87c0-865e-59be-1c5c293f6655",
  "kind": "lemma",
  "lexical_name": "hasExt_of_enoughProjectives",
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
  "slug": "hasext-of-enoughprojectives--d1b2e7a3e0fb213b7202faaa",
  "source": {
    "blob": "d0323645c30f5b045835c2a465f8fc89ea6b18dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b2e7a3e0fb213b7202faaad9aec306ec7a8467511a835df1cb82896a4fe139",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33026eb2-87c0-865e-59be-1c5c293f6655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasExt_of_enoughProjectives [LocallySmall.{w} C] [EnoughProjectives C] :
  HasExt.{w} C := by
    letI := HasDerivedCategory.standard C
    have := hasExt_of_hasDerivedCategory C
    rw [hasExt_iff_small_ext.{w}]
    intro X Y n
    induction n generalizing X Y with
    | zero =>
      rw [small_congr Ext.homEquiv₀]
      infer_instance
    | succ n hn =>
      let S := ShortComplex.mk _ _ (kernel.condition (Projective.π X))
      have hS : S.ShortExact :=
        { exact := ShortComplex.exact_of_f_is_kernel _ (kernelIsKernel S.g) }
      have : Function.Surjective (Ext.precomp hS.extClass Y (add_comm 1 n)) := fun x₃ ↦
        Ext.contravariant_sequence_exact₃ hS Y x₃
          (Ext.eq_zero_of_projective _) (by omega)
      exact small_of_surjective.{w} this

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0323645c30f5b045835c2a465f8fc89ea6b18dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
