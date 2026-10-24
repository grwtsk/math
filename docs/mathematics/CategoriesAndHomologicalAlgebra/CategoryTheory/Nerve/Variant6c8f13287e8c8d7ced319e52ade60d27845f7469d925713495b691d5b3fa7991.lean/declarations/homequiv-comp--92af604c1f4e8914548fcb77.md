# homEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb7287ae-aca9-c631-fe33-93e479b70dfe",
  "kind": "lemma",
  "lexical_name": "homEquiv_comp",
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
  "slug": "homequiv-comp--92af604c1f4e8914548fcb77",
  "source": {
    "blob": "287ed415355f9890574cf725fe9d634faaa77ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92af604c1f4e8914548fcb77b95f1f447d9280693df73013024329fd55752525",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7287ae-aca9-c631-fe33-93e479b70dfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homEquiv_comp {x₀ x₁ x₂ : ComposableArrows C 0}
    {e₀₁ : (nerve C).Edge x₀ x₁}
    {e₁₂ : (nerve C).Edge x₁ x₂} {e₀₂ : (nerve C).Edge x₀ x₂}
    (h : Edge.CompStruct e₀₁ e₁₂ e₀₂) :
    homEquiv e₀₁ ≫ homEquiv e₁₂ = homEquiv e₀₂ := by
  obtain ⟨x₀, rfl⟩ := nerveEquiv.symm.surjective x₀
  obtain ⟨x₁, rfl⟩ := nerveEquiv.symm.surjective x₁
  obtain ⟨x₂, rfl⟩ := nerveEquiv.symm.surjective x₂
  obtain ⟨f₀₁, rfl⟩ := edgeMk_surjective e₀₁
  obtain ⟨f₁₂, rfl⟩ := edgeMk_surjective e₁₂
  obtain ⟨f₀₂, rfl⟩ := edgeMk_surjective e₀₂
  convert! (nerve.nonempty_compStruct_iff _ _ _).1 ⟨h⟩ <;> apply homEquiv_edgeMk

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287ed415355f9890574cf725fe9d634faaa77ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
