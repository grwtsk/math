# factorizationEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82014c75bb298d1c949056ad78c220c7ad7a2437831f0d09c07f3c6749cd0ea7",
  "kind": "def",
  "lexical_name": "factorizationEquiv",
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
  "slug": "factorizationequiv--14abf9a6dbc28f89684f0f25",
  "source": {
    "blob": "97b86d54dd27cc529ba85a2caa5ea7ba876f1f54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 298,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14abf9a6dbc28f89684f0f25161d195d6b52d30e265bd9ed6aa537623ce84568",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82014c75bb298d1c949056ad78c220c7ad7a2437831f0d09c07f3c6749cd0ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def factorizationEquiv : ℕ+ ≃ { f : ℕ →₀ ℕ // ∀ p ∈ f.support, Prime p } where
  toFun := fun ⟨n, _⟩ => ⟨n.factorization, fun _ => prime_of_mem_primeFactors⟩
  invFun := fun ⟨f, hf⟩ =>
    ⟨f.prod _, prod_pow_pos_of_zero_notMem_support fun H => not_prime_zero (hf 0 H)⟩
  left_inv := fun ⟨_, hx⟩ => Subtype.ext <| prod_factorization_pow_eq_self hx.ne.symm
  right_inv := fun ⟨_, hf⟩ => Subtype.ext <| prod_pow_factorization_eq_self hf

/-! ### Factorization and coprimes -/


/-- For coprime `a` and `b`, the power of `p` in `a * b` is the sum of the powers in `a` and `b` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b86d54dd27cc529ba85a2caa5ea7ba876f1f54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
