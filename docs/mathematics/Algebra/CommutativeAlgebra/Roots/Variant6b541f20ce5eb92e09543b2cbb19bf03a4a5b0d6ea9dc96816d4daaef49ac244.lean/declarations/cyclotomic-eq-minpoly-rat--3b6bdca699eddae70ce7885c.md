# cyclotomic_eq_minpoly_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1067138-acd3-3ba5-6814-822535c71643",
  "kind": "theorem",
  "lexical_name": "cyclotomic_eq_minpoly_rat",
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
  "slug": "cyclotomic-eq-minpoly-rat--3b6bdca699eddae70ce7885c",
  "source": {
    "blob": "e20d98d25f1186ae46ebae54afaf6b28d2fa1680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 186,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b6bdca699eddae70ce7885cde030fa12c6d4ffb3af1b170d5844779fa45a733",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1067138-acd3-3ba5-6814-822535c71643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_eq_minpoly_rat {n : ℕ} {K : Type*} [Field K] {μ : K} (h : IsPrimitiveRoot μ n)
    (hpos : 0 < n) [CharZero K] : cyclotomic n ℚ = minpoly ℚ μ := by
  rw [← map_cyclotomic_int, cyclotomic_eq_minpoly h hpos]
  exact (minpoly.isIntegrallyClosed_eq_field_fractions' _ (IsPrimitiveRoot.isIntegral h hpos)).symm

/-- `cyclotomic n ℤ` is irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e20d98d25f1186ae46ebae54afaf6b28d2fa1680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
