# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b096a1379aa2370afc6f67b629b28d9ea61e4b653425295fb3b5b4843404d094",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--df60087906e4b646bbb0cdd9",
  "source": {
    "blob": "8ac7f1f8e982c901b41e415d2c35892bb85980f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 193,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf1bb6b9639dab15e9927879b3c91bfe9dbaa4e6a2b3f51efaa79750120a7a1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df60087906e4b646bbb0cdd96b41cc5fa539ed6f181707b0896e178ef7cc1ce6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantf1bb6b9639dab15e9927879b3c91bfe9dbaa4e6a2b3f51efaa79750120a7a1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b096a1379aa2370afc6f67b629b28d9ea61e4b653425295fb3b5b4843404d094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R : Type u} [Ring R] [Nontrivial R] {n : ℕ} {r : R} :
    Polynomial.natDegree (Polynomial.X ^ n - Polynomial.C r) = n := by
  rw_search [-Polynomial.natDegree_X_pow_sub_C]
  -- Mathlib proof:
  -- rw [sub_eq_add_neg, ← map_neg C r, natDegree_X_pow_add_C]
  done

-- Fails:
-- -- Polynomial.leadingCoeff_X_sub_C.{v}
-- example {S : Type v} [Ring S] (r : S) :
--     Polynomial.leadingCoeff (Polynomial.X - Polynomial.C r) = 1 := by
--   rw_search [-Polynomial.leadingCoeff_X_sub_C]
--   -- Mathlib proof:
--   -- rw [sub_eq_add_neg, ← map_neg C r, leadingCoeff_X_add_C]
--   done
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantf1bb6b9639dab15e9927879b3c91bfe9dbaa4e6a2b3f51efaa79750120a7a1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf1bb6b9639dab15e9927879b3c91bfe9dbaa4e6a2b3f51efaa79750120a7a1c9.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac7f1f8e982c901b41e415d2c35892bb85980f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
