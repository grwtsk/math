# isUnramified_mk_iff_forall_isConj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fb97ac0-b930-07e7-3e24-fdf06842e077",
  "kind": "lemma",
  "lexical_name": "isUnramified_mk_iff_forall_isConj",
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
  "slug": "isunramified-mk-iff-forall-isconj--80e3ec8e89f529b43c386128",
  "source": {
    "blob": "a03636bb9f3caa19679a53a2ec35c4a75b1d57a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 261,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e3ec8e89f529b43c3861281af549e7c802f54cc5a13752af4bc38302c08c15",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb97ac0-b930-07e7-3e24-fdf06842e077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnramified_mk_iff_forall_isConj [IsGalois k K] {φ : K →+* ℂ} :
    IsUnramified k (mk φ) ↔ ∀ σ : K ≃ₐ[k] K, ComplexEmbedding.IsConj φ σ → σ = 1 := by
  refine ⟨fun H σ hσ ↦ hσ.isUnramified_mk_iff.mp H,
    fun H ↦ ?_⟩
  by_contra hφ
  rw [not_isUnramified_iff] at hφ
  rw [comap_mk, isReal_mk_iff, ← not_isReal_iff_isComplex, isReal_mk_iff,
    ← ComplexEmbedding.isConj_one_iff (k := k)] at hφ
  letI := (φ.comp (algebraMap k K)).toAlgebra
  letI := φ.toAlgebra
  have : IsScalarTower k K ℂ := IsScalarTower.of_algebraMap_eq' rfl
  let φ' : K →ₐ[k] ℂ := { star φ with commutes' := fun r ↦ by simpa using RingHom.congr_fun hφ.2 r }
  have : ComplexEmbedding.IsConj φ (AlgHom.restrictNormal' φ' K) :=
    (RingHom.ext <| AlgHom.restrictNormal_commutes φ' K).symm
  exact hφ.1 (H _ this ▸ this)

local notation "Stab" => MulAction.stabilizer (K ≃ₐ[k] K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a03636bb9f3caa19679a53a2ec35c4a75b1d57a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
