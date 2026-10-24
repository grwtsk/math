# UniversalCoprimeFactorizationRing.exists_liesOver_residueFieldMap_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 643,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03b3057f-045d-43b4-9fe9-2fec8d4ad7fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef53d83a-f90b-c2a6-66c4-d9c8a5ed604f",
  "kind": "lemma",
  "lexical_name": "UniversalCoprimeFactorizationRing.exists_liesOver_residueFieldMap_bijective",
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
  "slug": "universalcoprimefactorizationring-exists-liesover-residuefieldmap-biject--df892d23a79a9f66d6afc135",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 643,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df892d23a79a9f66d6afc1354e2608ff1d13fdcc7ec8f6d06c4c943ae8362486",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef53d83a-f90b-c2a6-66c4-d9c8a5ed604f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniversalCoprimeFactorizationRing.exists_liesOver_residueFieldMap_bijective
    (P : Ideal R) [P.IsPrime]
    (f : MonicDegreeEq P.ResidueField m) (g : MonicDegreeEq P.ResidueField k)
    (H : p.1.map (algebraMap R _) = f.1 * g.1) (Hpq : IsCoprime f.1 g.1) :
    ∃ (Q : Ideal 𝓡') (_ : Q.IsPrime) (_ : Q.LiesOver P),
    Function.Bijective (Ideal.ResidueField.mapₐ P Q (Algebra.ofId _ _) (Ideal.over_def Q P)) ∧
    f.map (Ideal.ResidueField.mapₐ P Q (Algebra.ofId _ _) (Ideal.over_def Q P)).toRingHom =
      (factor₁ m k hn p).map (algebraMap _ _) ∧
    g.map (Ideal.ResidueField.mapₐ P Q (Algebra.ofId _ _) (Ideal.over_def Q P)).toRingHom =
      (factor₂ m k hn p).map (algebraMap _ _) := by
  let φ : 𝓡' →ₐ[R] P.ResidueField :=
    (UniversalCoprimeFactorizationRing.homEquiv _ m k hn p).symm ⟨(f, g), H.symm, Hpq⟩
  let Q := RingHom.ker φ.toRingHom
  have : Q.IsPrime := RingHom.ker_isPrime _
  have : Q.LiesOver P := ⟨by rw [Ideal.under, RingHom.comap_ker, AlgHom.toRingHom_eq_coe,
      φ.comp_algebraMap, Ideal.ker_algebraMap_residueField]⟩
  let φ' : Q.ResidueField →ₐ[R] P.ResidueField := Ideal.ResidueField.liftₐ _ φ le_rfl (by
    simp [SetLike.le_def, IsUnit.mem_submonoid_iff, Q])
  let φi : P.ResidueField →ₐ[R] Q.ResidueField :=
    Ideal.ResidueField.mapₐ _ _ (Algebra.ofId _ _) (Ideal.over_def _ _)
  let e : P.ResidueField ≃ₐ[R] Q.ResidueField :=
    .ofAlgHom φi φ' (AlgHom.ext fun x ↦ φ'.injective <|
      show (φ'.comp φi) (φ' x) = AlgHom.id R _ (φ' x) by congr; ext) (by ext)
  have H : φi.comp φ = (IsScalarTower.toAlgHom _ _ _) :=
    AlgHom.ext fun x ↦ e.eq_symm_apply.mp (by simp [e, φ'])
  refine ⟨Q, ‹_›, ‹_›, e.bijective, ?_, ?_⟩
  · trans ((homEquiv Q.ResidueField m k hn p) (φi.comp φ)).1.1
    · simp [homEquiv_comp_fst, φ, φi]
    · rw [H]
      simp [homEquiv, UniversalFactorizationRing.homEquiv, factor₁,
        MonicDegreeEq.map, Polynomial.map_map]
      rfl
  · trans ((homEquiv Q.ResidueField m k hn p) (φi.comp φ)).1.2
    · simp [homEquiv_comp_snd, φ, φi]
    · rw [H]
      simp [homEquiv, UniversalFactorizationRing.homEquiv, factor₂,
        MonicDegreeEq.map, Polynomial.map_map]
      rfl

open UniversalCoprimeFactorizationRing in
/-- If a monic polynomial `p : R[X]` factors into a product of coprime monic polynomials `p = f * g`
in the residue field `κ(P)` of some `P : Spec R`,
then there exists an etale algebra `R'` of `R` and a prime `Q` of `R'` lying over `P`,
such that `κ(P) = κ(Q)` and that the factorization lifts to `R'`. -/
@[stacks 00UH]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
