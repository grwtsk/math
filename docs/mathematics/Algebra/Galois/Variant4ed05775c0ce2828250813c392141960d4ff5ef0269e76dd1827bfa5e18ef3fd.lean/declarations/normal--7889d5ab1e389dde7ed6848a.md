# normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "413b6527647751bb3bdd053d24b77d8dfbe8acb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0d7d950-f799-aa5c-38ec-42f79a8aec76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b11230fe-c62f-9c94-6dd2-5863698d19ab",
  "kind": "lemma",
  "lexical_name": "normal",
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
  "slug": "normal--7889d5ab1e389dde7ed6848a",
  "source": {
    "blob": "413b6527647751bb3bdd053d24b77d8dfbe8acb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 84,
    "path": "GRWTSK/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7889d5ab1e389dde7ed6848ad0873830bdffef9d3d4f9d0c599211a7ff336191",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b11230fe-c62f-9c94-6dd2-5863698d19ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normal : Normal K L := by
  have := Algebra.IsInvariant.isIntegral A B G
  have := isAlgebraic_of_isFractionRing (A ⧸ P) (B ⧸ Q) K L
  constructor
  intro x
  obtain ⟨x, y, hy, rfl⟩ := IsFractionRing.div_surjective (B ⧸ Q) x
  obtain ⟨b, a, ha, h⟩ := (Algebra.IsAlgebraic.isAlgebraic (R := A ⧸ P) y).exists_smul_eq_mul x hy
  obtain ⟨a, rfl⟩ := Quotient.mk_surjective a
  obtain ⟨b, rfl⟩ := Quotient.mk_surjective b
  simp_rw [← Quotient.algebraMap_eq] at *
  cases nonempty_fintype G
  obtain ⟨p, hp, -, h_monic⟩ := lifts_and_natDegree_eq_and_monic
    (Algebra.IsInvariant.charpoly_mem_lifts A B G b) (MulSemiringAction.monic_charpoly ..)
  have h_eval : p.aeval b = 0 := by
    rw [← eval_map_algebraMap, hp, MulSemiringAction.eval_charpoly]
  let q := p.comp (C a * X)
  let d := (algebraMap (B ⧸ Q) L) x / (algebraMap (B ⧸ Q) L) y
  have comm₁ : (algebraMap K L).comp (algebraMap (A ⧸ P) K) =
      (algebraMap (B ⧸ Q) L).comp (algebraMap (A ⧸ P) (B ⧸ Q)) := by
    simp_rw [← IsScalarTower.algebraMap_eq]
  have comm₂ : (algebraMap (A ⧸ P) (B ⧸ Q)).comp (algebraMap A (A ⧸ P)) =
      (algebraMap B (B ⧸ Q)).comp (algebraMap A B) := by
    simp_rw [← IsScalarTower.algebraMap_eq]
  replace h_eval : ((q.map (algebraMap A (A ⧸ P))).map (algebraMap (A ⧸ P) K)).aeval d = 0 := by
    simp_rw [q, map_comp, Polynomial.map_mul, map_C, map_X, aeval_comp, aeval_mul, aeval_C, aeval_X,
      ← RingHom.comp_apply, ← RingHom.comp_assoc, comm₁, RingHom.comp_apply, d, mul_div, ← map_mul]
    rw [← Algebra.smul_def, h, map_mul, mul_div_cancel_left₀ _ (by simpa using hy),
      aeval_map_algebraMap, aeval_algebraMap_apply, aeval_map_algebraMap, aeval_algebraMap_apply,
      h_eval, map_zero, map_zero]
  replace h_splits : (p.map (algebraMap A B)).Splits := by
    rw [hp]
    exact MulSemiringAction.splits_charpoly G b
  refine .of_dvd ?_ ?_ (map_dvd (algebraMap K L) (minpoly.dvd K d h_eval))
  · simp_rw [q, map_comp, Polynomial.map_mul, map_C, map_X]
    refine .comp_of_degree_le_one ?_ (degree_C_mul_X_le _)
    rw [Polynomial.map_map, Polynomial.map_map, comm₁, RingHom.comp_assoc, comm₂,
      ← RingHom.comp_assoc, ← Polynomial.map_map]
    apply h_splits.map
  · simp_rw [q, map_comp, Polynomial.map_mul, map_C, map_X, Polynomial.map_map]
    exact mt (comp_C_mul_X_eq_zero_iff (by simpa)).mp (map_monic_ne_zero h_monic)

include P Q in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `413b6527647751bb3bdd053d24b77d8dfbe8acb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
