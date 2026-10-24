# toSingleMk_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7d65d8b67b884579dd828432b69ddd1e101b8cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96b92dbffb8e211148215dfceefecc1365d0f129b04d40e6c45703c0df20794f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2a3404d-e5b6-346f-5982-881dd912a9d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f15ea10a-eaa2-7107-d857-c77ebfbcfed1",
  "kind": "lemma",
  "lexical_name": "toSingleMk_surjective",
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
  "slug": "tosinglemk-surjective--01bdd60693567da8baff2664",
  "source": {
    "blob": "f7d65d8b67b884579dd828432b69ddd1e101b8cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 309,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant96b92dbffb8e211148215dfceefecc1365d0f129b04d40e6c45703c0df20794f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01bdd60693567da8baff2664688de876305b17f8a15b220f2ad1aa3c7d7a9605",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant96b92dbffb8e211148215dfceefecc1365d0f129b04d40e6c45703c0df20794f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f15ea10a-eaa2-7107-d857-c77ebfbcfed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSingleMk_surjective {q n : ℤ} (α : Cocycle K ((singleFunctor C q).obj X) n)
    (p : ℤ) (h : p + n = q) (p' : ℤ) (hp' : p' + 1 = p) :
    ∃ (f : K.X p ⟶ X) (hf : K.d p' p ≫ f = 0), toSingleMk f h p' hp' hf = α := by
  obtain ⟨f, hf⟩ := Cochain.toSingleMk_surjective α.1 p h
  have hα := ((n + 1).negOnePow • α).δ_eq_zero (n + 1)
  rw [coe_units_smul, δ_units_smul, ← hf, Cochain.δ_toSingleMk _ _ _ p' (by lia),
    smul_smul, Int.units_mul_self, one_smul] at hα
  refine ⟨f, ?_, ?_⟩
  · simpa [← cancel_mono (HomologicalComplex.singleObjXSelf (.up ℤ) q X).inv] using!
    Cochain.congr_v hα p' q (by lia)
  · ext : 1; assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant96b92dbffb8e211148215dfceefecc1365d0f129b04d40e6c45703c0df20794f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexSingle/Variant96b92dbffb8e211148215dfceefecc1365d0f129b04d40e6c45703c0df20794f.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d65d8b67b884579dd828432b69ddd1e101b8cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
