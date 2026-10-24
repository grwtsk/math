# biprodX_ext_to_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52281c58-2286-bd00-b524-594bd381c469",
  "kind": "lemma",
  "lexical_name": "biprodX_ext_to_iff",
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
  "slug": "biprodx-ext-to-iff--884806605fdb71c2a0cf860a",
  "source": {
    "blob": "27ca52a4741c32c1f398d795f98b3d483cb5ff1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variant9632f535f34ccbe3602c8b0ada0fafb067e34dd5b7154bcc6427a3a8c4d9667a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:884806605fdb71c2a0cf860a81ae311a301c86d890223130c2e48e20372c71b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variant9632f535f34ccbe3602c8b0ada0fafb067e34dd5b7154bcc6427a3a8c4d9667a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52281c58-2286-bd00-b524-594bd381c469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biprodX_ext_to_iff {f g : A ⟶ (K ⊞ L).X i} :
    f = g ↔ f ≫ (biprod.fst : K ⊞ L ⟶ K).f i = g ≫ (biprod.fst : K ⊞ L ⟶ K).f i ∧
      f ≫ (biprod.snd : K ⊞ L ⟶ L).f i = g ≫ (biprod.snd : K ⊞ L ⟶ L).f i := by
  refine ⟨by rintro rfl; simp, fun ⟨h₁, h₂⟩ ↦ ?_⟩
  rw [← cancel_mono (𝟙 _)]
  simp [← biprod_total_f, reassoc_of% h₁, reassoc_of% h₂]

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variant9632f535f34ccbe3602c8b0ada0fafb067e34dd5b7154bcc6427a3a8c4d9667a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variant9632f535f34ccbe3602c8b0ada0fafb067e34dd5b7154bcc6427a3a8c4d9667a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ca52a4741c32c1f398d795f98b3d483cb5ff1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
