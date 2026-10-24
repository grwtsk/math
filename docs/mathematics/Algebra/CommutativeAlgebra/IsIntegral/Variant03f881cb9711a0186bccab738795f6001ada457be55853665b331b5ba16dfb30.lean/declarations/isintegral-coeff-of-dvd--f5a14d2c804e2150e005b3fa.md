# isIntegral_coeff_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bad1401caa94239470792cfee91c5c72741030d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3af6a71a-2794-8a47-f2e1-e79f13074093",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24d39dbb-be6d-e884-6bfa-3f404252a685",
  "kind": "lemma",
  "lexical_name": "isIntegral_coeff_of_dvd",
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
  "slug": "isintegral-coeff-of-dvd--f5a14d2c804e2150e005b3fa",
  "source": {
    "blob": "9bad1401caa94239470792cfee91c5c72741030d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5a14d2c804e2150e005b3fa60f6c3a374ca7a4b1cf150594a8ca3169379ef15",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24d39dbb-be6d-e884-6bfa-3f404252a685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegral_coeff_of_dvd (p : R[X]) (q : S[X]) (hp : p.Monic) (hq : q.Monic)
    (H : q ∣ p.map (algebraMap R S)) (i : ℕ) : IsIntegral R (q.coeff i) := by
  nontriviality S
  obtain ⟨T, _, _, _, _, _, hqT⟩ := hq.exists_splits_map
  algebraize [(algebraMap S T).comp (algebraMap R S)]
  refine (isIntegral_algHom_iff (IsScalarTower.toAlgHom R S T)
    (FaithfulSMul.algebraMap_injective S _)).mp ?_
  rw [IsScalarTower.coe_toAlgHom', ← coeff_map]
  refine Polynomial.isIntegral_coeff_of_factors _ (by simp [hq.map, isIntegral_one]) hqT ?_ i
  intro x hx
  exact ⟨p, hp, by simpa using! aeval_eq_zero_of_dvd_aeval_eq_zero (x := x) H (by simp_all)⟩

end Polynomial

section

open scoped nonZeroDivisors

open Polynomial

attribute [local instance] Polynomial.algebra

@[stacks 00H0 "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bad1401caa94239470792cfee91c5c72741030d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
