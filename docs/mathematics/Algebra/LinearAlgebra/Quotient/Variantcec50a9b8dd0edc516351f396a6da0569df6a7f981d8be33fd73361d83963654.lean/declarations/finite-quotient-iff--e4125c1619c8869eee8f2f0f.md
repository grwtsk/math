# finite_quotient_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7d3fe04-f998-bf33-9337-7cfa35a317f8",
  "kind": "lemma",
  "lexical_name": "finite_quotient_iff",
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
  "slug": "finite-quotient-iff--e4125c1619c8869eee8f2f0f",
  "source": {
    "blob": "7ddc2aca79c8bcfb6799ffb7df9dee827f29a6fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4125c1619c8869eee8f2f0fe087832e2c34b3c8ecd1fbc50c86af42346d37c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d3fe04-f998-bf33-9337-7cfa35a317f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_quotient_iff [IsNoetherianRing R] [Finite (ResidueField R)] {I : Ideal R} :
    Finite (R ⧸ I) ↔ ∃ n, (maximalIdeal R) ^ n ≤ I := by
  refine ⟨fun _ ↦ exists_maximalIdeal_pow_le_of_finite_quotient I, ?_⟩
  rintro ⟨n, hn⟩
  have : Finite (R ⧸ maximalIdeal R) := ‹_›
  have := (Ideal.finite_quotient_pow (IsNoetherian.noetherian (maximalIdeal R)) n)
  exact Finite.of_surjective _ (Ideal.Quotient.factor_surjective hn)

end IsLocalRing

@[deprecated (since := "2024-11-11")]
alias LocalRing.quotient_span_eq_top_iff_span_eq_top :=
  IsLocalRing.quotient_span_eq_top_iff_span_eq_top

@[deprecated (since := "2024-11-11")]
alias LocalRing.finrank_quotient_map := IsLocalRing.finrank_quotient_map

@[deprecated (since := "2024-11-11")]
alias LocalRing.basisQuotient := IsLocalRing.basisQuotient

@[deprecated (since := "2024-11-11")]
alias LocalRing.basisQuotient_apply := IsLocalRing.basisQuotient_apply

@[deprecated (since := "2024-11-11")]
alias LocalRing.basisQuotient_repr := IsLocalRing.basisQuotient_repr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ddc2aca79c8bcfb6799ffb7df9dee827f29a6fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
