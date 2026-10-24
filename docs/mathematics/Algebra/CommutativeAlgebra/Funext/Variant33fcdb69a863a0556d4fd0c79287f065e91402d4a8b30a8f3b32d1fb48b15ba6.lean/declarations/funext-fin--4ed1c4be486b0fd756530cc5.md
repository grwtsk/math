# funext_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:866df8df-7cda-c09e-5f1e-db85a72fef52",
  "kind": "theorem",
  "lexical_name": "funext_fin",
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
  "slug": "funext-fin--4ed1c4be486b0fd756530cc5",
  "source": {
    "blob": "3347eb8a34b7da3b464b80f1b4f8359bdaa1dd22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ed1c4be486b0fd756530cc535aa393472e81b7c4dcfe97ab316ec11b424bf75",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866df8df-7cda-c09e-5f1e-db85a72fef52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem funext_fin {n : ℕ} {p : MvPolynomial (Fin n) R}
    (h : ∀ x : Fin n → R, eval x p = 0) : p = 0 := by
  induction n with
  | zero =>
    apply (MvPolynomial.isEmptyRingEquiv R (Fin 0)).injective
    rw [RingEquiv.map_zero]
    convert h finZeroElim
  | succ n ih =>
    apply (finSuccEquiv R n).injective
    simp only [map_zero]
    refine Polynomial.funext fun q => ?_
    rw [Polynomial.eval_zero]
    apply ih fun x => ?_
    calc _ = _ := eval_polynomial_eval_finSuccEquiv p _
         _ = 0 := h _

/-- Two multivariate polynomials over an infinite integral domain are equal
if they are equal upon evaluating them on an arbitrary assignment of the variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Funext/Variant33fcdb69a863a0556d4fd0c79287f065e91402d4a8b30a8f3b32d1fb48b15ba6.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3347eb8a34b7da3b464b80f1b4f8359bdaa1dd22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
