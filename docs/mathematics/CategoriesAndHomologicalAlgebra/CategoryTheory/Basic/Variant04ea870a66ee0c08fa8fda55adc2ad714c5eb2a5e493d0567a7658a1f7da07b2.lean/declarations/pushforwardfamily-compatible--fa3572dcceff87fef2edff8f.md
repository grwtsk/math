# pushforwardFamily_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea63f7da-7c4e-f7a2-714b-5bab920b960f",
  "kind": "theorem",
  "lexical_name": "pushforwardFamily_compatible",
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
  "slug": "pushforwardfamily-compatible--fa3572dcceff87fef2edff8f",
  "source": {
    "blob": "0871f6c841f1f2c1c989a1f08b48f361438573d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa3572dcceff87fef2edff8fcbf4aaa6f1fcfc2dda853a8492c3a7c4bf352805",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea63f7da-7c4e-f7a2-714b-5bab920b960f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforwardFamily_compatible {X} (x : ℱ.obj (op X)) :
    (pushforwardFamily α x).Compatible := by
  suffices ∀ {Z W₁ W₂} (iWX₁ : G.obj W₁ ⟶ X) (iWX₂ : G.obj W₂ ⟶ X) (iZW₁ : Z ⟶ G.obj W₁)
      (iZW₂ : Z ⟶ G.obj W₂), iZW₁ ≫ iWX₁ = iZW₂ ≫ iWX₂ →
      ℱ'.1.map iZW₁.op (α.app _ (ℱ.map iWX₁.op x)) = ℱ'.1.map iZW₂.op (α.app _ (ℱ.map iWX₂.op x)) by
    rintro Y₁ Y₂ Z iZY₁ iZY₂ f₁ f₂ h₁ h₂ e
    simp only [pushforwardFamily, ← FunctorToTypes.map_comp_apply, ← op_comp]
    generalize Nonempty.some h₁ = l₁
    generalize Nonempty.some h₂ = l₂
    obtain ⟨W₁, iYW₁, iWX₁, rfl⟩ := l₁
    obtain ⟨W₂, iYW₂, iWX₂, rfl⟩ := l₂
    exact this _ _ _ _ (by simpa only [Category.assoc] using e)
  introv e
  refine ext G _ _ fun V iVZ ↦ ?_
  simp only [← op_comp, ← FunctorToTypes.map_comp_apply, ← Functor.map_comp, naturality_apply,
    Category.assoc, e]

/-- (Implementation). The morphism `ℱ(X) ⟶ ℱ'(X)` given by gluing the `pushforwardFamily`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0871f6c841f1f2c1c989a1f08b48f361438573d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
