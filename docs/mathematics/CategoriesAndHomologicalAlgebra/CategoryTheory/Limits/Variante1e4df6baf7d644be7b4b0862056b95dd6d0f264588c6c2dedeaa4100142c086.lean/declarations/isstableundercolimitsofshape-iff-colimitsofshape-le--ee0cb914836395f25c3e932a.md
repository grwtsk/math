# isStableUnderColimitsOfShape_iff_colimitsOfShape_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1bc7ae7-c4ec-40ab-ffb0-ce6ce7ae47f9",
  "kind": "lemma",
  "lexical_name": "isStableUnderColimitsOfShape_iff_colimitsOfShape_le",
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
  "slug": "isstableundercolimitsofshape-iff-colimitsofshape-le--ee0cb914836395f25c3e932a",
  "source": {
    "blob": "77f54e7d4cc8c64d4b48438051af40817a1f4b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 609,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee0cb914836395f25c3e932aeab478428507d006aaf591e77c2c7a431dbcbcdf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1bc7ae7-c4ec-40ab-ffb0-ce6ce7ae47f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isStableUnderColimitsOfShape_iff_colimitsOfShape_le :
    W.IsStableUnderColimitsOfShape J ↔ W.colimitsOfShape J ≤ W := by
  constructor
  · rintro h _ _ _ ⟨_, _, _, _, h₁, h₂, f, hf⟩
    exact h.condition _ _ _ _ h₁ h₂ f hf _ (by simp)
  · rintro h
    constructor
    intro X₁ X₂ c₁ c₂ h₁ h₂ f hf φ hφ
    exact h _ (colimitsOfShape.mk' X₁ X₂ c₁ c₂ h₁ h₂ f hf φ hφ)

variable {W J}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f54e7d4cc8c64d4b48438051af40817a1f4b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
