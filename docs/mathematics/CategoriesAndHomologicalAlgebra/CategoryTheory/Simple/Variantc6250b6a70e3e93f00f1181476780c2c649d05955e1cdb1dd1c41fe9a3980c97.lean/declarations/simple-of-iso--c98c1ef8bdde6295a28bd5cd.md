# Simple.of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65849f9a17fccd23882c21da43a4ceac424fe78d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:057b9e35-39d7-f952-d15a-35ced223ba9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17211c61-70b9-45ee-c091-6ad1224d5235",
  "kind": "theorem",
  "lexical_name": "Simple.of_iso",
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
  "slug": "simple-of-iso--c98c1ef8bdde6295a28bd5cd",
  "source": {
    "blob": "65849f9a17fccd23882c21da43a4ceac424fe78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c98c1ef8bdde6295a28bd5cdf795c496ef159662137e1e37b55f87c894e93511",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17211c61-70b9-45ee-c091-6ad1224d5235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Simple.of_iso {X Y : C} [Simple Y] (i : X ≅ Y) : Simple X :=
  { mono_isIso_iff_nonzero := fun f m => by
      haveI : Mono (f ≫ i.hom) := mono_comp _ _
      constructor
      · intro h w
        have j : IsIso (f ≫ i.hom)
        infer_instance
        rw [Simple.mono_isIso_iff_nonzero] at j
        subst w
        simp at j
      · intro h
        have j : IsIso (f ≫ i.hom) := by
          apply isIso_of_mono_of_nonzero
          intro w
          apply h
          simpa using (cancel_mono i.inv).2 w
        rw [← Category.comp_id f, ← i.hom_inv_id, ← Category.assoc]
        infer_instance }
#align category_theory.simple.of_iso CategoryTheory.Simple.of_iso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65849f9a17fccd23882c21da43a4ceac424fe78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
