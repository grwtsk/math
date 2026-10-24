# vanishingIdeal_singleton_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a06d16b362324a944acdaaa3a3125435576aa8b84c9ffbe0217f8a1bd8962cf6",
  "kind": "instance",
  "lexical_name": "vanishingIdeal_singleton_isMaximal",
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
  "slug": "vanishingideal-singleton-ismaximal--d5601649fd17e6f85d084962",
  "source": {
    "blob": "e5de8e7ba22091c3ed9112c1f455c2f80325541a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 116,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5601649fd17e6f85d0849628b16f47b5b04fe920c9482807e95c92fe5cdaaab",
  "verification": {
    "reference": "docs/verification/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a06d16b362324a944acdaaa3a3125435576aa8b84c9ffbe0217f8a1bd8962cf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance vanishingIdeal_singleton_isMaximal {x : σ → k} :
    (vanishingIdeal {x} : Ideal (MvPolynomial σ k)).IsMaximal := by
  have : MvPolynomial σ k ⧸ vanishingIdeal {x} ≃+* k :=
    RingEquiv.ofBijective
      (Ideal.Quotient.lift _ (eval x) fun p h => (mem_vanishingIdeal_singleton_iff x p).mp h)
      (by
        refine'
          ⟨(injective_iff_map_eq_zero _).mpr fun p hp => _, fun z =>
            ⟨(Ideal.Quotient.mk (vanishingIdeal {x} : Ideal (MvPolynomial σ k))) (C z), by simp⟩⟩
        obtain ⟨q, rfl⟩ := Quotient.mk_surjective p
        rwa [Ideal.Quotient.lift_mk, ← mem_vanishingIdeal_singleton_iff,
          ← Quotient.eq_zero_iff_mem] at hp )
  rw [← bot_quotient_isMaximal_iff, RingEquiv.bot_maximal_iff this]
  exact bot_isMaximal
#align mv_polynomial.vanishing_ideal_singleton_is_maximal MvPolynomial.vanishingIdeal_singleton_isMaximal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5de8e7ba22091c3ed9112c1f455c2f80325541a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
