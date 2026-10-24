# eq_mk_of_is_sol_of_eq_init'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf219e77-e86f-34d6-62f8-1828e29de7c5",
  "kind": "theorem",
  "lexical_name": "eq_mk_of_is_sol_of_eq_init'",
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
  "slug": "eq-mk-of-is-sol-of-eq-init--b50a98aab9101d1cdf19e9f4",
  "source": {
    "blob": "a358d2b69e6578f0fad2b261830fe68139248ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50a98aab9101d1cdf19e9f48e46cdf14c867353112c54d5a969fcd07768c561",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf219e77-e86f-34d6-62f8-1828e29de7c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_mk_of_is_sol_of_eq_init' {u : ℕ → R} {init : Fin E.order → R} (h : E.IsSolution u)
    (heq : ∀ n : Fin E.order, u n = init n) : u = E.mkSol init :=
  funext (E.eq_mk_of_is_sol_of_eq_init h heq)

/-- The space of solutions of `E`, as a `Submodule` over `R` of the module `ℕ → R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a358d2b69e6578f0fad2b261830fe68139248ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
