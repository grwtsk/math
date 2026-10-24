# leftHomologyMap'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f196c419-c006-9551-2d16-868889f3ea6e",
  "kind": "lemma",
  "lexical_name": "leftHomologyMap'_comp",
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
  "slug": "lefthomologymap-comp--6238a62a70a4c0cbbfa37f30",
  "source": {
    "blob": "69189da39baaaa8165d5b3f3b6330f2b7251f6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 606,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6238a62a70a4c0cbbfa37f3030298f3f767490803bfb10ea6ee718db1e919386",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f196c419-c006-9551-2d16-868889f3ea6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftHomologyMap'_comp (φ₁ : S₁ ⟶ S₂) (φ₂ : S₂ ⟶ S₃)
    (h₁ : S₁.LeftHomologyData) (h₂ : S₂.LeftHomologyData) (h₃ : S₃.LeftHomologyData) :
    leftHomologyMap' (φ₁ ≫ φ₂) h₁ h₃ = leftHomologyMap' φ₁ h₁ h₂ ≫
      leftHomologyMap' φ₂ h₂ h₃ := by
  let γ₁ := leftHomologyMapData φ₁ h₁ h₂
  let γ₂ := leftHomologyMapData φ₂ h₂ h₃
  rw [γ₁.leftHomologyMap'_eq, γ₂.leftHomologyMap'_eq, (γ₁.comp γ₂).leftHomologyMap'_eq,
    LeftHomologyMapData.comp_φH]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant9759d7fb7350896bb0898b406c14d311c5c81f1d0ec7ad66e6e47ce66c9dc191.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69189da39baaaa8165d5b3f3b6330f2b7251f6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
