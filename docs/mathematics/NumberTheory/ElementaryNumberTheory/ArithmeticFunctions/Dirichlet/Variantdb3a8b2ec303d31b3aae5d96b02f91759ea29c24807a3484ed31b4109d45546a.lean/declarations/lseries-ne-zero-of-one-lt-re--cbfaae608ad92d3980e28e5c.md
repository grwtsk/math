# LSeries_ne_zero_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:058803c1-3406-a612-8eab-691a824c444f",
  "kind": "lemma",
  "lexical_name": "LSeries_ne_zero_of_one_lt_re",
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
  "slug": "lseries-ne-zero-of-one-lt-re--cbfaae608ad92d3980e28e5c",
  "source": {
    "blob": "b7984b0fafec4b2c29dce79616ef7908cd51ba9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 236,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbfaae608ad92d3980e28e5cbba1f38ee688377c5cdeb581ee0a7e19eab743d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:058803c1-3406-a612-8eab-691a824c444f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_ne_zero_of_one_lt_re {N : ℕ} (χ : DirichletCharacter ℂ N) {s : ℂ} (hs : 1 < s.re) :
    L ↗χ s ≠ 0 :=
  fun h ↦ by simpa [h] using LSeries.mul_mu_eq_one χ hs

end DirichletCharacter


section zeta

/-!
### The L-series of the constant sequence 1 / the arithmetic function ζ

Both give the same L-series (since the difference in values at zero has no effect;
see `ArithmeticFunction.LSeries_zeta_eq`), which agrees with the Riemann zeta function
on `re s > 1`. We state most results in two versions, one for `1` and one for `↗ζ`.
-/

open LSeries Nat Complex DirichletCharacter

/-- The abscissa of (absolute) convergence of the constant sequence `1` is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7984b0fafec4b2c29dce79616ef7908cd51ba9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
