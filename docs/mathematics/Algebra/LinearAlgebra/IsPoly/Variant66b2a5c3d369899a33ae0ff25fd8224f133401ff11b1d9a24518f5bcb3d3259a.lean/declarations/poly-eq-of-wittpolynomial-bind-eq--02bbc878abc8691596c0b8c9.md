# poly_eq_of_wittPolynomial_bind_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3acc052bd2dcfabb94505ad1e33a76fbb24123d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b34ec33c-3d35-062c-d608-f104a89af8c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78ab230b-ab65-805a-7a9c-416b9b11cb07",
  "kind": "theorem",
  "lexical_name": "poly_eq_of_wittPolynomial_bind_eq",
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
  "slug": "poly-eq-of-wittpolynomial-bind-eq--02bbc878abc8691596c0b8c9",
  "source": {
    "blob": "3acc052bd2dcfabb94505ad1e33a76fbb24123d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02bbc878abc8691596c0b8c94c154e28a62b282ac775d419fa4e4986617ec13f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78ab230b-ab65-805a-7a9c-416b9b11cb07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poly_eq_of_wittPolynomial_bind_eq [Fact p.Prime] (f g : ℕ → MvPolynomial ℕ ℤ)
    (h : ∀ n, bind₁ f (wittPolynomial p _ n) = bind₁ g (wittPolynomial p _ n)) : f = g := by
  ext1 n
  apply MvPolynomial.map_injective (Int.castRingHom ℚ) Int.cast_injective
  rw [← Function.funext_iff] at h
  replace h :=
    congr_arg (fun fam => bind₁ (MvPolynomial.map (Int.castRingHom ℚ) ∘ fam) (xInTermsOfW p ℚ n)) h
  simpa only [Function.comp, map_bind₁, map_wittPolynomial, ← bind₁_bind₁,
    bind₁_wittPolynomial_xInTermsOfW, bind₁_X_right] using h
#align witt_vector.poly_eq_of_witt_polynomial_bind_eq WittVector.poly_eq_of_wittPolynomial_bind_eq

-- Ideally, we would generalise this to n-ary functions
-- But we don't have a good theory of n-ary compositions in mathlib
/--
A function `f : Π R, 𝕎 R → 𝕎 R` that maps Witt vectors to Witt vectors over arbitrary base rings
is said to be *polynomial* if there is a family of polynomials `φₙ` over `ℤ` such that the `n`th
coefficient of `f x` is given by evaluating `φₙ` at the coefficients of `x`.

See also `WittVector.IsPoly₂` for the binary variant.

The `ghost_calc` tactic makes use of the `IsPoly` and `IsPoly₂` typeclass and its instances.
(In Lean 3, there was an `@[is_poly]` attribute to manage these instances,
because typeclass resolution did not play well with function composition.
This no longer seems to be an issue, so that such instances can be defined directly.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3acc052bd2dcfabb94505ad1e33a76fbb24123d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
