# factorsThrough_of_pullbackCondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "988ef792acd8a799f03c716551a2153e06eace0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7706e304-44de-87c8-9c63-649a0d786433",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4773e769-f205-88d7-461d-10826b619f32",
  "kind": "theorem",
  "lexical_name": "factorsThrough_of_pullbackCondition",
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
  "slug": "factorsthrough-of-pullbackcondition--a2ceda5196c655353c8bdb53",
  "source": {
    "blob": "988ef792acd8a799f03c716551a2153e06eace0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2ceda5196c655353c8bdb536a332dbed16580c2b505513cffe961803f27c758",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4773e769-f205-88d7-461d-10826b619f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorsThrough_of_pullbackCondition {Z B : C} {π : Z ⟶ B} [HasPullback π π]
    [PreservesLimit (cospan π π) G]
    {a : C(G.obj Z, X)}
    (ha : a ∘ (G.map (pullback.fst _ _)) = a ∘ (G.map (pullback.snd π π))) :
    Function.FactorsThrough a (G.map π) := by
  intro x y hxy
  let xy : G.obj (pullback π π) := (PreservesPullback.iso G π π).inv <|
    (TopCat.pullbackIsoProdSubtype (G.map π) (G.map π)).inv ⟨(x, y), hxy⟩
  have ha' := congr_fun ha xy
  dsimp at ha'
  have h₁ : ∀ y, G.map (pullback.fst _ _) ((PreservesPullback.iso G π π).inv y) =
      pullback.fst (G.map π) (G.map π) y := by
    simp only [← PreservesPullback.iso_inv_fst]; intro y; rfl
  have h₂ : ∀ y, G.map (pullback.snd _ _) ((PreservesPullback.iso G π π).inv y) =
      pullback.snd (G.map π) (G.map π) y := by
    simp only [← PreservesPullback.iso_inv_snd]; intro y; rfl
  rw [h₁, h₂, TopCat.pullbackIsoProdSubtype_inv_fst_apply,
    TopCat.pullbackIsoProdSubtype_inv_snd_apply] at ha'
  simpa using ha'

/--
If `G` preserves the relevant pullbacks and every effective epi in `C` is a quotient map (which is
the case when `C` is `CompHaus` or `Profinite`), then `yonedaPresheaf` satisfies the equalizer
condition which is required to be a sheaf for the regular topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988ef792acd8a799f03c716551a2153e06eace0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
