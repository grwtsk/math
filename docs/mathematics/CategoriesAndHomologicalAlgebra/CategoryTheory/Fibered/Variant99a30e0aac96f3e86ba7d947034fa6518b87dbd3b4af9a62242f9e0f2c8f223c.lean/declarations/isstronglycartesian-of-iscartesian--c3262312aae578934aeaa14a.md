# isStronglyCartesian_of_isCartesian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6710824cec31ac4f86f6a3ca8877ad880c38e3fe2a168fa42540dfd246ca1e6",
  "kind": "instance",
  "lexical_name": "isStronglyCartesian_of_isCartesian",
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
  "slug": "isstronglycartesian-of-iscartesian--c3262312aae578934aeaa14a",
  "source": {
    "blob": "c53d5f9a58da6094d19f80272fad4697203a960e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3262312aae578934aeaa14ae1d91578f70f700bba9c4f5e1f54e536092f4573",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6710824cec31ac4f86f6a3ca8877ad880c38e3fe2a168fa42540dfd246ca1e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStronglyCartesian_of_isCartesian (p : 𝒳 ⥤ 𝒮) [p.IsFibered] {R S : 𝒮} (f : R ⟶ S)
    {a b : 𝒳} (φ : a ⟶ b) [p.IsCartesian f φ] : p.IsStronglyCartesian f φ where
  universal_property' g φ' hφ' := by
    -- Let `ψ` be a cartesian arrow lying over `g`
    let ψ := pullbackMap (domain_eq p f φ) g
    -- Let `τ` be the map induced by the universal property of `ψ ≫ φ`.
    let τ := IsCartesian.map p (g ≫ f) (ψ ≫ φ) φ'
    use τ ≫ ψ
    -- It is easily verified that `τ ≫ ψ` lifts `g` and `τ ≫ ψ ≫ φ = φ'`
    refine ⟨⟨inferInstance, by simp only [assoc, IsCartesian.fac, τ]⟩, ?_⟩
    -- It remains to check that `τ ≫ ψ` is unique.
    -- So fix another lift `π` of `g` satisfying `π ≫ φ = φ'`.
    intro π ⟨hπ, hπ_comp⟩
    -- Write `π` as `π = τ' ≫ ψ` for some `τ'` induced by the universal property of `ψ`.
    rw [← fac p g ψ π]
    -- It remains to show that `τ' = τ`. This follows again from the universal property of `ψ`.
    congr 1
    apply map_uniq
    rwa [← assoc, IsCartesian.fac]

/-- In a category which admits strongly cartesian pullbacks, any cartesian morphism is
strongly cartesian. This is a helper-lemma for the fact that admitting strongly cartesian pullbacks
implies being fibered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c53d5f9a58da6094d19f80272fad4697203a960e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
