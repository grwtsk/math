# jointly_surjective₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68253c6dd40bc111364a315941978407fd2b2189",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b30140-edc6-fdf9-871b-abeb603ba94f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a536fc62-d12e-b456-99fd-4b3cdd4ba6e7",
  "kind": "lemma",
  "lexical_name": "jointly_surjective₃",
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
  "slug": "jointly-surjective--1b5216de99076e4aab94e945",
  "source": {
    "blob": "68253c6dd40bc111364a315941978407fd2b2189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b5216de99076e4aab94e9457fa5491278c5381a9948d5ec21d6803a8cb88252",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a536fc62-d12e-b456-99fd-4b3cdd4ba6e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jointly_surjective₃ (r₁ r₂ : cR.pt) (m : ModuleColimit hcR hcM) :
    ∃ (U : Cᵒᵖ) (a₁ a₂ : R.obj U) (x : M.obj U),
      ιR cR a₁ = r₁ ∧ ιR cR a₂ = r₂ ∧ ιM x = m := by
  obtain ⟨U, ⟨a₁, a₂, x⟩, h⟩ := Types.jointly_surjective_of_isColimit
    ((isColimitOfPreserves (forget RingCat) hcR).tensor
      ((isColimitOfPreserves (forget RingCat) hcR).tensor
        (isColimitOfPreserves (forget AddCommGrpCat) hcM))) ⟨r₁, r₂, m⟩
  rw [Prod.ext_iff, Prod.ext_iff] at h
  obtain ⟨rfl, rfl, rfl⟩ := h
  exact ⟨U, a₁, a₂, x, rfl, rfl, rfl⟩

set_option backward.isDefEq.respectTransparency false in
variable {hcR hcM hcM'} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68253c6dd40bc111364a315941978407fd2b2189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
