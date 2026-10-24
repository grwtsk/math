# isStronglyCartesian_of_exists_isCartesian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d062bc48456acf5e760b52f3fa641ad37974bd32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81442ad9-6acd-88c5-7a60-6b3d4e9209fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a38f31d-3f5e-b310-9383-39881b27567f",
  "kind": "lemma",
  "lexical_name": "isStronglyCartesian_of_exists_isCartesian",
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
  "slug": "isstronglycartesian-of-exists-iscartesian--935387e6be10189634a51ca3",
  "source": {
    "blob": "d062bc48456acf5e760b52f3fa641ad37974bd32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:935387e6be10189634a51ca30ed00bf99d03d1b31d83b8c4edb7b9255b11259c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a38f31d-3f5e-b310-9383-39881b27567f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isStronglyCartesian_of_exists_isCartesian (p : 𝒳 ⥤ 𝒮) (h : ∀ (a : 𝒳) (R : 𝒮)
    (f : R ⟶ p.obj a), ∃ (b : 𝒳) (φ : b ⟶ a), IsStronglyCartesian p f φ) {R S : 𝒮} (f : R ⟶ S)
      {a b : 𝒳} (φ : a ⟶ b) [p.IsCartesian f φ] : p.IsStronglyCartesian f φ := by
  constructor
  intro c g φ' hφ'
  subst_hom_lift p f φ; clear a b R S
  -- Let `ψ` be a cartesian arrow lying over `g`
  obtain ⟨a', ψ, hψ⟩ := h _ _ (p.map φ)
  -- Let `τ' : c ⟶ a'` be the map induced by the universal property of `ψ`
  let τ' := IsStronglyCartesian.map p (p.map φ) ψ (f':= g ≫ p.map φ) rfl φ'
  -- Let `Φ : a' ≅ a` be natural isomorphism induced between `φ` and `ψ`.
  let Φ := domainUniqueUpToIso p (p.map φ) φ ψ
  -- The map induced by `φ` will be `τ' ≫ Φ.hom`
  use τ' ≫ Φ.hom
  -- It is easily verified that `τ' ≫ Φ.hom` lifts `g` and `τ' ≫ Φ.hom ≫ φ = φ'`
  refine ⟨⟨by simp only [Φ]; infer_instance, ?_⟩, ?_⟩
  · simp [τ', Φ, IsStronglyCartesian.map_uniq p (p.map φ) ψ rfl φ']
  -- It remains to check that it is unique. This follows from the universal property of `ψ`.
  intro π ⟨hπ, hπ_comp⟩
  rw [← Iso.comp_inv_eq]
  apply IsStronglyCartesian.map_uniq p (p.map φ) ψ rfl φ'
  simp [hπ_comp, Φ]

/-- Alternate constructor for `IsFibered`, a functor `p : 𝒳 ⥤ 𝒴` is fibered if any diagram of the
form
```
          a
          -
          |
          v
R --f--> p(a)
```
admits a strongly cartesian lift `b ⟶ a` of `f`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d062bc48456acf5e760b52f3fa641ad37974bd32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
