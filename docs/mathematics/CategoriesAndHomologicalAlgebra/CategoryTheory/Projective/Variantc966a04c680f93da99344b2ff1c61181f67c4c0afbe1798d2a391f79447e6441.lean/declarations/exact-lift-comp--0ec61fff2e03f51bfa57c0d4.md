# Exact.lift_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d473f03a1a66fd4e639d7c3e5a075fddcb79ff20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1c5612a-251a-ef70-9850-c831ea400401",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86aa34df-dd34-96a1-a291-590c7fc5f3a8",
  "kind": "theorem",
  "lexical_name": "Exact.lift_comp",
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
  "slug": "exact-lift-comp--0ec61fff2e03f51bfa57c0d4",
  "source": {
    "blob": "d473f03a1a66fd4e639d7c3e5a075fddcb79ff20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ec61fff2e03f51bfa57c0d4fc3556e88b2b00b05608ba359840b0ffc2be7388",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86aa34df-dd34-96a1-a291-590c7fc5f3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Exact.lift_comp {P Q R S : C} [Projective P] (h : P ⟶ R) (f : Q ⟶ R) (g : R ⟶ S)
    (hfg : Exact f g) (w : h ≫ g = 0) : Exact.lift h f g hfg w ≫ f = h := by
  simp only [Exact.lift]
  conv_lhs =>
    congr
    rfl
    rw [← imageSubobject_arrow_comp f]
  -- See the porting note on `Exact.epi`.
  haveI := hfg.epi
  rw [← Category.assoc, factorThru_comp, ← imageToKernel_arrow f g, ← Category.assoc,
    CategoryTheory.Projective.factorThru_comp, factorThruKernelSubobject_comp_arrow]
#align category_theory.exact.lift_comp CategoryTheory.Exact.lift_comp

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d473f03a1a66fd4e639d7c3e5a075fddcb79ff20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
