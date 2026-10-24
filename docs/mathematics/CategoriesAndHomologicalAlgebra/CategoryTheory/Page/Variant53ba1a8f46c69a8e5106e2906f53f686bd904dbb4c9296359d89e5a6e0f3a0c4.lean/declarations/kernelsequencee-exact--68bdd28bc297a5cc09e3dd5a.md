# kernelSequenceE_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38e5039fe04a8009e8f6cf3db2214f912b9023f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b1a48dd-9474-e59e-01b4-1665e900d9e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:806f4dea-9bf9-2725-55be-a60b60139088",
  "kind": "lemma",
  "lexical_name": "kernelSequenceE_exact",
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
  "slug": "kernelsequencee-exact--68bdd28bc297a5cc09e3dd5a",
  "source": {
    "blob": "38e5039fe04a8009e8f6cf3db2214f912b9023f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 467,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68bdd28bc297a5cc09e3dd5ab38788bdae0c308fbc27628504622d4c9d8885eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:806f4dea-9bf9-2725-55be-a60b60139088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kernelSequenceE_exact (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    (X.kernelSequenceE f₁ f₂ f₃ f₂₃ h₂₃ n₀ n₁ n₂ hn₁ hn₂).Exact := by
  rw [ShortComplex.exact_iff_exact_up_to_refinements]
  intro A x₂ hx₂
  dsimp at x₂ hx₂
  obtain ⟨A₁, π₁, _, x₁, hx₁⟩ :=
    (X.kernelSequenceOpcyclesE_exact f₁ f₂ f₃ n₀ n₁ n₂ hn₁ hn₂).exact_up_to_refinements
      (X.liftOpcycles f₂ f₃ f₂₃ h₂₃ x₂ (by simpa using hx₂ =≫ biprod.fst)) (by
        dsimp
        rw [← X.fromOpcyles_δ f₁ f₂ f₃ f₂₃ h₂₃ n₁ n₂,
          X.liftOpcycles_fromOpcycles_assoc]
        simpa using hx₂ =≫ biprod.snd)
  dsimp at x₁ hx₁
  refine ⟨A₁, π₁, inferInstance, x₁, ?_⟩
  dsimp
  rw [← reassoc_of% hx₁, liftOpcycles_fromOpcycles]

section

variable {A : C} (x : A ⟶ (X.H n₁).obj (mk₁ f₂₃))
  (h : x ≫ (X.H n₁).map (twoδ₁Toδ₀ f₂ f₃ f₂₃ h₂₃) = 0)
  (hn₂ : n₁ + 1 = n₂)
  (h' : x ≫ X.δ f₁ f₂₃ n₁ n₂ hn₂ = 0)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Constructor for morphisms to `E^{n₁}(f₁, f₂, f₃)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38e5039fe04a8009e8f6cf3db2214f912b9023f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
