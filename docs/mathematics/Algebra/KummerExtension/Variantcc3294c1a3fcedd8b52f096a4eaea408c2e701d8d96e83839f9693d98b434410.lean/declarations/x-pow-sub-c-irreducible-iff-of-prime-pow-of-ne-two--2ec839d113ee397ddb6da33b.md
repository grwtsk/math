# X_pow_sub_C_irreducible_iff_of_prime_pow_of_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:631f12b7-c887-4277-6ca8-906d8ae068e8",
  "kind": "theorem",
  "lexical_name": "X_pow_sub_C_irreducible_iff_of_prime_pow_of_ne_two",
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
  "slug": "x-pow-sub-c-irreducible-iff-of-prime-pow-of-ne-two--2ec839d113ee397ddb6da33b",
  "source": {
    "blob": "aca0c1f3380eccc1886d0a8571a1cbfb029c9487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 165,
    "path": "GRWTSK/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ec839d113ee397ddb6da33b6bd3d0ec285b78ae26ac6fcdb16e68c52faa4269",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:631f12b7-c887-4277-6ca8-906d8ae068e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_sub_C_irreducible_iff_of_prime_pow_of_ne_two
    {p : ℕ} (hp : p.Prime) (hp' : p ≠ 2) {n} (hn : n ≠ 0) {a : K} :
    Irreducible (X ^ p ^ n - C a) ↔ ∀ b, b ^ p ≠ a :=
  ⟨(pow_ne_of_irreducible_X_pow_sub_C · (dvd_pow dvd_rfl hn) hp.ne_one),
    X_pow_sub_C_irreducible_of_prime_pow_of_ne_two hp hp' n⟩

@[deprecated (since := "2026-08-17")]
alias X_pow_sub_C_irreducible_iff_of_prime_pow :=
  X_pow_sub_C_irreducible_iff_of_prime_pow_of_ne_two

end Irreducible

/-!
### Galois Group of `K[n√a]`
We first develop the theory for a specific `K[n√a] := AdjoinRoot (X ^ n - C a)`.
The main result is the description of the Galois group: `autAdjoinRootXPowSubCEquiv`.
-/

variable {n : ℕ} (hζ : (primitiveRoots n K).Nonempty)
variable (a : K) (H : Irreducible (X ^ n - C a))

set_option quotPrecheck false in
scoped[KummerExtension] notation3 "K[" n "√" a "]" => AdjoinRoot (Polynomial.X ^ n - Polynomial.C a)

attribute [nolint docBlame] KummerExtension.«termK[_√_]»

open scoped KummerExtension

section AdjoinRoot

include hζ H in
/-- Also see `Polynomial.separable_X_pow_sub_C_unit` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aca0c1f3380eccc1886d0a8571a1cbfb029c9487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
