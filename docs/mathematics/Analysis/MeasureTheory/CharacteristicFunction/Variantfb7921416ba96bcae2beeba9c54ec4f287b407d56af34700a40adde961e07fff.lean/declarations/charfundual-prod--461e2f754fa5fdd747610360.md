# charFunDual_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75890af1f911e7ae19bf68bfb163f0667b56deb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f17ebf3-058b-6a7c-62a8-071b05e4a31a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8e7355e-638a-5c49-7c9e-df3d9a3d2a28",
  "kind": "lemma",
  "lexical_name": "charFunDual_prod",
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
  "slug": "charfundual-prod--461e2f754fa5fdd747610360",
  "source": {
    "blob": "75890af1f911e7ae19bf68bfb163f0667b56deb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 275,
    "path": "GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461e2f754fa5fdd747610360cf8186ed118610cebb6b6a96101efc23d1a28d70",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e7355e-638a-5c49-7c9e-df3d9a3d2a28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFunDual_prod [SFinite μ] [SFinite ν] (L : Dual ℝ (E × F)) :
    charFunDual (μ.prod ν) L
      = charFunDual μ (L.comp (.inl ℝ E F)) * charFunDual ν (L.comp (.inr ℝ E F)) := by
  let L₁ : Dual ℝ E := L.comp (.inl ℝ E F)
  let L₂ : Dual ℝ F := L.comp (.inr ℝ E F)
  simp_rw [charFunDual_apply, ← L.comp_inl_add_comp_inr, ofReal_add, add_mul,
    Complex.exp_add]
  rw [integral_prod_mul (f := fun x ↦ cexp ((L₁ x * I))) (g := fun x ↦ cexp ((L₂ x * I)))]

variable [BorelSpace E] [SecondCountableTopology E]

/-- If two finite measures have the same characteristic function, then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75890af1f911e7ae19bf68bfb163f0667b56deb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
