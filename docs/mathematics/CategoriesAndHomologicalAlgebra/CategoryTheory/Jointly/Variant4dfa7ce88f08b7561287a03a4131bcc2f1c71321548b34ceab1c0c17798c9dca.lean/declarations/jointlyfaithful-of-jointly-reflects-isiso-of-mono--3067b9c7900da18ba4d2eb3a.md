# JointlyFaithful.of_jointly_reflects_isIso_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3841061402fc042c2b88b0fc36c14d43af8dc272",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f84d132-5bbb-b4f6-0278-65c9add1a87a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1139b2fc-7b4e-2a5c-edaf-01b235b007f3",
  "kind": "lemma",
  "lexical_name": "JointlyFaithful.of_jointly_reflects_isIso_of_mono",
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
  "slug": "jointlyfaithful-of-jointly-reflects-isiso-of-mono--3067b9c7900da18ba4d2eb3a",
  "source": {
    "blob": "3841061402fc042c2b88b0fc36c14d43af8dc272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3067b9c7900da18ba4d2eb3a5e08cebec468f217af479821f379037d4fcb04bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1139b2fc-7b4e-2a5c-edaf-01b235b007f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma JointlyFaithful.of_jointly_reflects_isIso_of_mono [HasEqualizers C]
    [∀ i, PreservesLimitsOfShape WalkingParallelPair (F i)]
    (hF : ∀ ⦃X Y : C⦄ (f : X ⟶ Y) [Mono f],
      (∀ i, IsIso ((F i).map f)) → IsIso f) :
    JointlyFaithful F where
  map_injective {X Y} f g hfg :=
    have :=
      hF (equalizer.ι f g) (fun i ↦ by
        let hc := isLimitForkMapOfIsLimit (F i) _ (equalizerIsEqualizer f g)
        obtain ⟨l, hl⟩ := Fork.IsLimit.lift' hc (𝟙 _) (by simpa using hfg i)
        exact ⟨l, Fork.IsLimit.hom_ext hc (by cat_disch), by cat_disch⟩)
    eq_of_epi_equalizer

namespace JointlyReflectIsomorphisms

variable (h : JointlyReflectIsomorphisms F)

include h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Jointly/Variant4dfa7ce88f08b7561287a03a4131bcc2f1c71321548b34ceab1c0c17798c9dca.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3841061402fc042c2b88b0fc36c14d43af8dc272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
