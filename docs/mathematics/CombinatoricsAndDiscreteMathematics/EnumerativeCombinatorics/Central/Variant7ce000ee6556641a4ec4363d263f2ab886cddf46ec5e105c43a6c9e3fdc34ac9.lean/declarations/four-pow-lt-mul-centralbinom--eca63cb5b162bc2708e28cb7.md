# four_pow_lt_mul_centralBinom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a5d4c6a-e841-95b0-376f-54857fb6e8a6",
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
  "slug": "four-pow-lt-mul-centralbinom--eca63cb5b162bc2708e28cb7",
  "source": {
    "blob": "e8011966839f8b0d5773967190adfe1fded5ce51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eca63cb5b162bc2708e28cb72d82e686d5cdc46c1e5d5ac4872e6a2f0721c2ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a5d4c6a-e841-95b0-376f-54857fb6e8a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_pow_lt_mul_centralBinom (n : ℕ) (n_big : 4 ≤ n) : 4 ^ n < n * centralBinom n := by
  induction n using Nat.strong_induction_on with | _ n IH
  rcases lt_trichotomy n 4 with (hn | rfl | hn)
  · clear IH; exact False.elim ((not_lt.2 n_big) hn)
  · norm_num [centralBinom, choose]
  obtain ⟨n, rfl⟩ : ∃ m, n = m + 1 := Nat.exists_eq_succ_of_ne_zero (Nat.ne_zero_of_lt hn)
  calc
    4 ^ (n + 1)
    _ = 4 * 4 ^ n := by rw [pow_succ']
    _ < 4 * (n * centralBinom n) := by gcongr; exact IH n n.lt_succ_self (Nat.le_of_lt_succ hn)
    _ ≤ 2 * (2 * n + 1) * centralBinom n := by rw [← mul_assoc]; linarith
    _ = (n + 1) * centralBinom (n + 1) := (succ_mul_centralBinom_succ n).symm

/-- An exponential lower bound on the central binomial coefficient.
This bound is weaker than `Nat.four_pow_lt_mul_centralBinom`, but it is of historical interest
because it appears in Erdős's proof of Bertrand's postulate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8011966839f8b0d5773967190adfe1fded5ce51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
