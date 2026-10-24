# four_pow_lt_mul_centralBinom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af1f9e63-2bc7-b34d-4ca5-23f7c962a244",
  "kind": "theorem",
  "lexical_name": "four_pow_lt_mul_centralBinom",
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
  "slug": "four-pow-lt-mul-centralbinom--840162adfa41892eed2fddde",
  "source": {
    "blob": "0eb1cb69161257ccab8c3754e89e4f3965759754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:840162adfa41892eed2fddde1131e1346ec266fd94802d28667ba91549eb4eac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1f9e63-2bc7-b34d-4ca5-23f7c962a244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_pow_lt_mul_centralBinom (n : ℕ) (n_big : 4 ≤ n) : 4 ^ n < n * centralBinom n := by
  induction' n using Nat.strong_induction_on with n IH
  rcases lt_trichotomy n 4 with (hn | rfl | hn)
  · clear IH; exact False.elim ((not_lt.2 n_big) hn)
  · norm_num [centralBinom, choose]
  obtain ⟨n, rfl⟩ : ∃ m, n = m + 1 := Nat.exists_eq_succ_of_ne_zero (Nat.not_eq_zero_of_lt hn)
  calc
    4 ^ (n + 1) < 4 * (n * centralBinom n) := lt_of_eq_of_lt (pow_succ'' n 4) $
      (mul_lt_mul_left <| zero_lt_four' ℕ).mpr (IH n n.lt_succ_self (Nat.le_of_lt_succ hn))
    _ ≤ 2 * (2 * n + 1) * centralBinom n := by rw [← mul_assoc]; linarith
    _ = (n + 1) * centralBinom (n + 1) := (succ_mul_centralBinom_succ n).symm
#align nat.four_pow_lt_mul_central_binom Nat.four_pow_lt_mul_centralBinom

/-- An exponential lower bound on the central binomial coefficient.
This bound is weaker than `Nat.four_pow_lt_mul_centralBinom`, but it is of historical interest
because it appears in Erdős's proof of Bertrand's postulate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb1cb69161257ccab8c3754e89e4f3965759754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
