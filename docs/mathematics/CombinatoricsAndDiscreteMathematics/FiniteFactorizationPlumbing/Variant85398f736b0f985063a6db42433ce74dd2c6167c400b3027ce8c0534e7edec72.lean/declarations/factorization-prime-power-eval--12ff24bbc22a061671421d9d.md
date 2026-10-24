# factorization_prime_power_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba4d317-fe36-88a5-b3c7-e82165e3d0dc",
  "kind": "theorem",
  "lexical_name": "factorization_prime_power_eval",
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
  "slug": "factorization-prime-power-eval--12ff24bbc22a061671421d9d",
  "source": {
    "blob": "036decd3afbc6150f08db6daf202d4acaf416b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12ff24bbc22a061671421d9db200ec7fdb27ab851b61364b2d2387ffc0ea099f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba4d317-fe36-88a5-b3c7-e82165e3d0dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_prime_power_eval
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    (q : Nat)
    (p : {p : Nat // p ∈ S}) :
    Nat.factorization (p.val ^ (e p).val) q =
      if q = p.val then (e p).val else 0 := by
  rw [Nat.factorization_pow]
  rw [Nat.Prime.factorization (hSprime p.val p.property)]
  rw [Finsupp.smul_apply]
  by_cases hq : q = p.val
  · subst q
    rw [Finsupp.single_eq_same]
    simp
  · rw [Finsupp.single_eq_of_ne hq]
    simp [hq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036decd3afbc6150f08db6daf202d4acaf416b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
