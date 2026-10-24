# select_add_select_not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec95c033-4165-c4ee-06ac-5b255d6f6997",
  "kind": "theorem",
  "lexical_name": "select_add_select_not",
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
  "slug": "select-add-select-not--390fe086e88d57341795859b",
  "source": {
    "blob": "cf9918bff47dbabff4710d2ac122304e44370cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390fe086e88d57341795859b4d39a06e2fde2a03a8438755042700b9babd2858",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec95c033-4165-c4ee-06ac-5b255d6f6997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem select_add_select_not : ∀ x : 𝕎 R, select P x + select (fun i => ¬P i) x = x := by
  -- Porting note: TC search was insufficient to find this instance, even though all required
  -- instances exist. See zulip: [https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/WittVector.20saga/near/370073526]
  have : IsPoly p fun {R} [CommRing R] x ↦ select P x + select (fun i ↦ ¬P i) x :=
    IsPoly₂.diag (hf := IsPoly₂.comp)
  ghost_calc x
  intro n
  simp only [RingHom.map_add]
  suffices
    (bind₁ (selectPoly P)) (wittPolynomial p ℤ n) +
        (bind₁ (selectPoly fun i => ¬P i)) (wittPolynomial p ℤ n) =
      wittPolynomial p ℤ n by
    apply_fun aeval x.coeff at this
    simpa only [map_add, aeval_bind₁, ← coeff_select]
  simp only [wittPolynomial_eq_sum_C_mul_X_pow, selectPoly, map_sum, map_pow, map_mul,
    bind₁_X_right, bind₁_C_right, ← Finset.sum_add_distrib, ← mul_add]
  apply Finset.sum_congr rfl
  refine fun m _ => mul_eq_mul_left_iff.mpr (Or.inl ?_)
  rw [ite_pow, zero_pow (pow_ne_zero _ hp.out.ne_zero)]
  by_cases Pm : P m
  · rw [if_pos Pm, if_neg <| not_not_intro Pm, zero_pow Fin.pos'.ne', add_zero]
  · rwa [if_neg Pm, if_pos, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InitTail/Variantf8da44c7bbbdf169dbb7be59d927572f34636f4a3c7d3a9cd45b5052f655a91e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9918bff47dbabff4710d2ac122304e44370cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
