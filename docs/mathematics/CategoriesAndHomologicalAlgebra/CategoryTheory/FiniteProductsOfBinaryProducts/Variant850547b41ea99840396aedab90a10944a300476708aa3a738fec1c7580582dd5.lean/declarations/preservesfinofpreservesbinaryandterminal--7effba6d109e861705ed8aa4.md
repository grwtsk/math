# preservesFinOfPreservesBinaryAndTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3c9e9ae-4747-3481-73e2-902460418b95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09bd5c1f-1071-8208-78c6-20e511ac1a3f",
  "kind": "lemma",
  "lexical_name": "preservesFinOfPreservesBinaryAndTerminal",
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
  "slug": "preservesfinofpreservesbinaryandterminal--7effba6d109e861705ed8aa4",
  "source": {
    "blob": "15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7effba6d109e861705ed8aa4b78a0b311819f77d1815c6f10a4a52a21a44c582",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09bd5c1f-1071-8208-78c6-20e511ac1a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFinOfPreservesBinaryAndTerminal :
    ∀ (n : ℕ) (f : Fin n → C), PreservesLimit (Discrete.functor f) F
  | 0 => fun f => by
    letI : PreservesLimitsOfShape (Discrete (Fin 0)) F :=
      preservesLimitsOfShape_of_equiv.{0, 0} (Discrete.equivalence finZeroEquiv'.symm) _
    infer_instance
  | n + 1 => by
    haveI := preservesFinOfPreservesBinaryAndTerminal n
    intro f
    apply
      preservesLimit_of_preserves_limit_cone
        (extendFanIsLimit f (limit.isLimit _) (limit.isLimit _)) _
    apply (isLimitMapConeFanMkEquiv _ _ _).symm _
    let this :=
      extendFanIsLimit (fun i => F.obj (f i)) (isLimitOfHasProductOfPreservesLimit F _)
        (isLimitOfHasBinaryProductOfPreservesLimit F _ _)
    refine IsLimit.ofIsoLimit this ?_
    apply Cones.ext _ _
    · apply Iso.refl _
    rintro ⟨j⟩
    refine Fin.inductionOn j ?_ ?_
    · apply (Category.id_comp _).symm
    · rintro i _
      dsimp [extendFan_π_app, Iso.refl_hom, Fan.mk_π_app]
      change F.map _ ≫ _ = 𝟙 _ ≫ _
      simp only [id_comp, ← F.map_comp]
      rfl

/-- If `F` preserves the terminal object and binary products then it preserves finite products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
