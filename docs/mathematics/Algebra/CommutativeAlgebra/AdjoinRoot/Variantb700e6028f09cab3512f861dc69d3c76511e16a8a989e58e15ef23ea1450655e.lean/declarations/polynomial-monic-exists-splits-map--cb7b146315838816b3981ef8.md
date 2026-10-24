# Polynomial.Monic.exists_splits_map.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6806900c2cb830aedd789f923b0b87923dec737",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e93be62a-8157-86c8-108e-92983799aacf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23bc3900-a759-d285-f37d-48aca07a9041",
  "kind": "lemma",
  "lexical_name": "Polynomial.Monic.exists_splits_map.",
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
  "slug": "polynomial-monic-exists-splits-map--cb7b146315838816b3981ef8",
  "source": {
    "blob": "a6806900c2cb830aedd789f923b0b87923dec737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1217,
    "line": 1197,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb7b146315838816b3981ef8da36c7896621bab30d93254d5bfaef53d9eef7af",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23bc3900-a759-d285-f37d-48aca07a9041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1197–1217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Polynomial.Monic.exists_splits_map.{u}
    {R : Type u} [CommRing R] [Nontrivial R] {p : R[X]} (hp : p.Monic) :
    ∃ (S : Type u) (_ : CommRing S) (_ : Algebra R S) (_ : Module.Finite R S) (_ : Module.Free R S)
      (_ : Nontrivial S), (p.map (algebraMap R S)).Splits := by
  induction hn : p.natDegree using Nat.strong_induction_on generalizing R with | h n IH =>
  by_cases hpu : IsUnit p
  · obtain rfl := hp.eq_one_of_isUnit hpu
    exact ⟨R, inferInstance, inferInstance, inferInstance, inferInstance, inferInstance, by simp⟩
  obtain ⟨q, hq⟩ : X - C (AdjoinRoot.root p) ∣ p.map (algebraMap _ _) := by
    simp [dvd_iff_isRoot, -AdjoinRoot.algebraMap_eq]
  have hqm : q.Monic := .of_mul_monic_left (monic_X_sub_C (.root _)) (hq ▸ hp.map _)
  have := hp.free_adjoinRoot
  have := hp.finite_adjoinRoot
  have : Nontrivial (AdjoinRoot p) := Ideal.Quotient.nontrivial_iff.mpr (by simpa)
  obtain ⟨S, _, _, _, _, _, hS⟩ := IH _
    (by rw [← hn, ← hp.natDegree_map (algebraMap R (AdjoinRoot p)), hq,
      Monic.natDegree_mul (monic_X_sub_C _) hqm]; simp) hqm rfl
  algebraize [(algebraMap (AdjoinRoot p) S).comp (algebraMap R (AdjoinRoot p))]
  refine ⟨S, ‹_›, ‹_›, .trans (AdjoinRoot p) _, .trans (S := AdjoinRoot p), ‹_›, ?_⟩
  rw [IsScalarTower.algebraMap_eq R (AdjoinRoot p), ← Polynomial.map_map, hq, Polynomial.map_mul]
  exact .mul (by simp) hS
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean#L1197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6806900c2cb830aedd789f923b0b87923dec737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
