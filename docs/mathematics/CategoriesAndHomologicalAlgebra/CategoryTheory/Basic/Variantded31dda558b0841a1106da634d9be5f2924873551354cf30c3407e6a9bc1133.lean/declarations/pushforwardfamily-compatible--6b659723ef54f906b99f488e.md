# pushforwardFamily_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e05382ba39251d3d33e6d8948c89b0effccc7414",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/ded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a47f82c4-7b19-7b04-9518-31e25c545ebb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e505b26c-33c0-7de4-69fb-d28397c0c504",
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
  "slug": "pushforwardfamily-compatible--6b659723ef54f906b99f488e",
  "source": {
    "blob": "e05382ba39251d3d33e6d8948c89b0effccc7414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b659723ef54f906b99f488e664ba0245913198ae86e58b98cbdc506008b4fc1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e505b26c-33c0-7de4-69fb-d28397c0c504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforwardFamily_compatible {X} (x : ℱ.obj (op X)) :
    (pushforwardFamily α x).Compatible := by
  suffices ∀ {Z W₁ W₂} (iWX₁ : G.obj W₁ ⟶ X) (iWX₂ : G.obj W₂ ⟶ X) (iZW₁ : Z ⟶ G.obj W₁)
      (iZW₂ : Z ⟶ G.obj W₂), iZW₁ ≫ iWX₁ = iZW₂ ≫ iWX₂ →
      ℱ'.1.map iZW₁.op (α.app _ (ℱ.map iWX₁.op x)) = ℱ'.1.map iZW₂.op (α.app _ (ℱ.map iWX₂.op x)) by
    rintro Y₁ Y₂ Z iZY₁ iZY₂ f₁ f₂ h₁ h₂ e
    simp only [pushforwardFamily, ← Functor.map_comp_apply, ← op_comp]
    generalize Nonempty.some h₁ = l₁
    generalize Nonempty.some h₂ = l₂
    obtain ⟨W₁, iYW₁, iWX₁, rfl⟩ := l₁
    obtain ⟨W₂, iYW₂, iWX₂, rfl⟩ := l₂
    exact this _ _ _ _ (by simpa only [Category.assoc] using e)
  introv e
  refine ext G _ _ fun V iVZ ↦ ?_
  simp only [← op_comp, ← Functor.map_comp_apply, naturality_apply,
    Category.assoc, e]

/-- (Implementation). The morphism `ℱ(X) ⟶ ℱ'(X)` given by gluing the `pushforwardFamily`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05382ba39251d3d33e6d8948c89b0effccc7414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
