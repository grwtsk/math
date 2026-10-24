# aeval_sumIDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a4e52b3-9af7-3a90-61d6-e7e3fad8e938",
  "kind": "theorem",
  "lexical_name": "aeval_sumIDeriv",
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
  "slug": "aeval-sumideriv--98b9ac3a7c764ad4fb9be713",
  "source": {
    "blob": "358fb3f718b2e9b291881b22e0ba166d78dd0759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 173,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b9ac3a7c764ad4fb9be713a90dbd09c15ce8de872b29d8ee48350763a31728",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a4e52b3-9af7-3a90-61d6-e7e3fad8e938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_sumIDeriv (p : R[X]) (q : ℕ) :
    ∃ gp : R[X], gp.natDegree ≤ p.natDegree - q ∧
      ∀ (r : A), (X - C r) ^ q ∣ p.map (algebraMap R A) →
        aeval r (sumIDeriv p) = q ! • aeval r gp := by
  have h (k) :
      ∃ gp : R[X], gp.natDegree ≤ p.natDegree - q ∧
        ∀ (r : A), (X - C r) ^ q ∣ p.map (algebraMap R A) →
          aeval r (derivative^[k] p) = q ! • aeval r gp := by
    cases lt_or_ge k q with
    | inl hk =>
      use 0
      rw [natDegree_zero]
      use Nat.zero_le _
      intro r ⟨p', hp⟩
      rw [map_zero, smul_zero, aeval_iterate_derivative_of_lt p q r hp hk]
    | inr hk =>
      obtain ⟨gp, gp_le, h⟩ := aeval_iterate_derivative_of_ge A p q hk
      exact ⟨gp, gp_le.trans (tsub_le_tsub_left hk _), fun r _ => h r⟩
  choose c h using h
  choose c_le hc using h
  refine ⟨(range (p.natDegree + 1)).sum c, ?_, ?_⟩
  · refine (natDegree_sum_le _ _).trans ?_
    rw [fold_max_le]
    exact ⟨Nat.zero_le _, fun i _ => c_le i⟩
  intro r ⟨p', hp⟩
  rw [sumIDeriv_apply, map_sum]; simp_rw [hc _ r ⟨_, hp⟩, map_sum, smul_sum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `358fb3f718b2e9b291881b22e0ba166d78dd0759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
