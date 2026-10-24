# isField_of_isIntegral_of_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:543937d8-6351-4f18-7a50-5e4586346a2e",
  "kind": "theorem",
  "lexical_name": "isField_of_isIntegral_of_isField",
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
  "slug": "isfield-of-isintegral-of-isfield--f8a29ef6602b95648fd8d9cd",
  "source": {
    "blob": "4a4aef79d57404a0c5c9515c2deb2032e1b775c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 610,
    "path": "GRWTSK/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a29ef6602b95648fd8d9cd76ad2cb67a4ea389b0883b66f2ab364c044f8567",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:543937d8-6351-4f18-7a50-5e4586346a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_of_isIntegral_of_isField {R S : Type*} [CommRing R] [CommRing S]
    [Algebra R S] [Algebra.IsIntegral R S]
    (hRS : Function.Injective (algebraMap R S)) (hS : IsField S) : IsField R := by
  have := hS.nontrivial; have := Module.nontrivial R S
  refine ⟨⟨0, 1, zero_ne_one⟩, mul_comm, fun {a} ha ↦ ?_⟩
  -- Let `a_inv` be the inverse of `algebraMap R S a`,
  -- then we need to show that `a_inv` is of the form `algebraMap R S b`.
  obtain ⟨a_inv, ha_inv⟩ := hS.mul_inv_cancel fun h ↦ ha (hRS (h.trans (RingHom.map_zero _).symm))
  letI : Invertible a_inv := (Units.mkOfMulEqOne a_inv _ <| mul_comm _ a_inv ▸ ha_inv).invertible
  -- Let `p : R[X]` be monic with root `a_inv`,
  obtain ⟨p, p_monic, hp⟩ := Algebra.IsIntegral.isIntegral (R := R) a_inv
  -- and `q` be `p` with coefficients reversed (so `q(a) = q'(a) * a + 1`).
  -- We have `q(a) = 0`, so `-q'(a)` is the inverse of `a`.
  use -p.reverse.divX.eval a -- -q'(a)
  nth_rewrite 1 [mul_neg, ← eval_X (x := a), ← eval_mul, ← p_monic, ← coeff_zero_reverse,
    ← add_eq_zero_iff_neg_eq, ← eval_C (a := p.reverse.coeff 0), ← eval_add, X_mul_divX_add,
    ← (injective_iff_map_eq_zero' _).mp hRS, ← aeval_algebraMap_apply_eq_algebraMap_eval]
  rwa [← eval₂_reverse_eq_zero_iff] at hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4aef79d57404a0c5c9515c2deb2032e1b775c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
