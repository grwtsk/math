# mfderiv_prod_eq_add_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4822ae40b97223dacf9975a106111d64b0e7ef03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c38356c284a6588f6d1f3822a7ef07eb9f3eb36b5c9cfb0cafe5ba88ed056ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c5a3c3d-f2a8-7736-0b4a-73e002f588e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:144dc09c-ac82-4b71-61d1-6cdf54670daa",
  "kind": "theorem",
  "lexical_name": "mfderiv_prod_eq_add_comp",
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
  "slug": "mfderiv-prod-eq-add-comp--86d1388346eec2748d6d61c8",
  "source": {
    "blob": "4822ae40b97223dacf9975a106111d64b0e7ef03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 535,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpecificFunctions/Variant1c38356c284a6588f6d1f3822a7ef07eb9f3eb36b5c9cfb0cafe5ba88ed056ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d1388346eec2748d6d61c8943be472fcea7f4f897a3b41cd07bc0dd6807ab8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpecificFunctions/Variant1c38356c284a6588f6d1f3822a7ef07eb9f3eb36b5c9cfb0cafe5ba88ed056ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:144dc09c-ac82-4b71-61d1-6cdf54670daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mfderiv_prod_eq_add_comp {f : M × M' → M''} {p : M × M'}
    (hf : MDifferentiableAt (I.prod I') I'' f p) :
    mfderiv (I.prod I') I'' f p =
        (mfderiv I I'' (fun z : M => f (z, p.2)) p.1) ∘L (id (ContinuousLinearMap.fst 𝕜 E E') :
          (TangentSpace (I.prod I') p) →L[𝕜] (TangentSpace I p.1)) +
        (mfderiv I' I'' (fun z : M' => f (p.1, z)) p.2) ∘L (id (ContinuousLinearMap.snd 𝕜 E E') :
          (TangentSpace (I.prod I') p) →L[𝕜] (TangentSpace I' p.2)) := by
  rw [mfderiv_prod_eq_add hf]
  congr
  · have : (fun z : M × M' => f (z.1, p.2)) = (fun z : M => f (z, p.2)) ∘ Prod.fst := rfl
    rw [this, mfderiv_comp (I' := I)]
    · simp only [mfderiv_fst, id_eq]
      rfl
    · exact hf.comp _  (mdifferentiableAt_id.prodMk mdifferentiableAt_const)
    · exact mdifferentiableAt_fst
  · have : (fun z : M × M' => f (p.1, z.2)) = (fun z : M' => f (p.1, z)) ∘ Prod.snd := rfl
    rw [this, mfderiv_comp (I' := I')]
    · simp only [mfderiv_snd, id_eq]
      rfl
    · exact hf.comp _ (mdifferentiableAt_const.prodMk mdifferentiableAt_id)
    · exact mdifferentiableAt_snd

/-- The total derivative of a function in two variables is the sum of the partial derivatives.
  Note that to state this (without casts) we need to be able to see through the definition of
  `TangentSpace`. Version in terms of the one-variable derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpecificFunctions/Variant1c38356c284a6588f6d1f3822a7ef07eb9f3eb36b5c9cfb0cafe5ba88ed056ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpecificFunctions/Variant1c38356c284a6588f6d1f3822a7ef07eb9f3eb36b5c9cfb0cafe5ba88ed056ea.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4822ae40b97223dacf9975a106111d64b0e7ef03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
