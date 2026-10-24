# Algebra.adjoin.powerBasis'_minpoly_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53db6e53-81e5-65cb-50c3-ba2882c23fed",
  "kind": "theorem",
  "lexical_name": "Algebra.adjoin.powerBasis'_minpoly_gen",
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
  "slug": "algebra-adjoin-powerbasis-minpoly-gen--b94398bd2fcb8ae6e91abca8",
  "source": {
    "blob": "132ca4c2668a0947fba63b69460c42efe153803b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 759,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94398bd2fcb8ae6e91abca8044337594bf0f452009c022d6acc880a5c0b06d7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53db6e53-81e5-65cb-50c3-ba2882c23fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.adjoin.powerBasis'_minpoly_gen [IsDomain R] [IsDomain S] [NoZeroSMulDivisors R S]
    [IsIntegrallyClosed R] {x : S} (hx' : IsIntegral R x) :
    minpoly R x = minpoly R (Algebra.adjoin.powerBasis' hx').gen := by
  haveI := isDomain_of_prime (prime_of_isIntegrallyClosed hx')
  haveI :=
    noZeroSMulDivisors_of_prime_of_degree_ne_zero (prime_of_isIntegrallyClosed hx')
      (ne_of_lt (degree_pos hx')).symm
  rw [← minpolyGen_eq, adjoin.powerBasis', minpolyGen_map, minpolyGen_eq,
    AdjoinRoot.powerBasis'_gen, ← isAdjoinRootMonic_root_eq_root _ (monic hx'), minpoly_eq]
  exact irreducible hx'
#align algebra.adjoin.power_basis'_minpoly_gen Algebra.adjoin.powerBasis'_minpoly_gen

end Algebra

end CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ca4c2668a0947fba63b69460c42efe153803b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
