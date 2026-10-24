# LSeries_ne_zero_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b429362b-d98b-7194-b44d-261ec16caa65",
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
  "slug": "lseries-ne-zero-of-one-lt-re--da533ef06b8a29ff60a6d924",
  "source": {
    "blob": "c90d86855802903ec13d926c02565be2db4d9979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 227,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da533ef06b8a29ff60a6d924296216c414e339c4412fb7086d0b47e4212dcd5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b429362b-d98b-7194-b44d-261ec16caa65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–246.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Variant2fd40a4e9aa1b75f34000d9dc5ec749293485ca1a85789d65776934b56d2c7ff.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c90d86855802903ec13d926c02565be2db4d9979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
