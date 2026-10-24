# PerfectionMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f68c317fb2a33eddbf6cebd3191b1952cd8887c459c0ccfbef911765e056c3a",
  "kind": "structure",
  "lexical_name": "PerfectionMap",
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
  "slug": "perfectionmap--d365ef39bfad6559a6ba578b",
  "source": {
    "blob": "2c38d240a51a0fbbab92219e1e7a1730ae8625e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d365ef39bfad6559a6ba578bddf9407e9fa0c840737ca0dfd06e1faec467e3b4",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f68c317fb2a33eddbf6cebd3191b1952cd8887c459c0ccfbef911765e056c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PerfectionMap (p : ℕ) [Fact p.Prime] {R : Type u₁} [CommSemiring R] [CharP R p]
    {P : Type u₂} [CommSemiring P] [CharP P p] [PerfectRing P p] (π : P →+* R) : Prop where
  injective : ∀ ⦃x y : P⦄,
    (∀ n, π (((frobeniusEquiv P p).symm)^[n] x) = π (((frobeniusEquiv P p).symm)^[n] y)) → x = y
  surjective : ∀ f : ℕ → R, (∀ n, f (n + 1) ^ p = f n) → ∃ x : P, ∀ n,
    π (((frobeniusEquiv P p).symm)^[n] x) = f n

namespace PerfectionMap

variable {p : ℕ} [Fact p.Prime]
variable {R : Type u₁} [CommSemiring R] [CharP R p]
variable {P : Type u₃} [CommSemiring P] [CharP P p] [PerfectRing P p]

/-- Create a `PerfectionMap` from an isomorphism to the perfection. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variant64fe4b7393a98454093c95f197c1216717f9b4d693f46f793757e36563637ee3.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c38d240a51a0fbbab92219e1e7a1730ae8625e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
