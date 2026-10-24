# zetaMul_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "789e0aae6e9378c8f5c8a7a07a905830e20b5433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:090cbffa-e4cf-c31f-b64a-a96b05b98294",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d717d4f-3066-291b-a71b-980059bcc9f9",
  "kind": "lemma",
  "lexical_name": "zetaMul_nonneg",
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
  "slug": "zetamul-nonneg--b811c67e1d38866acf572753",
  "source": {
    "blob": "789e0aae6e9378c8f5c8a7a07a905830e20b5433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b811c67e1d38866acf572753c90e0fb296a6e8742741f13fba598f40c682c523",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d717d4f-3066-291b-a71b-980059bcc9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zetaMul_nonneg {χ : DirichletCharacter ℂ N} (hχ : χ ^ 2 = 1) (n : ℕ) :
    0 ≤ zetaMul χ n := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [ArithmeticFunction.map_zero, le_refl]
  · simpa only [χ.isMultiplicative_zetaMul.multiplicative_factorization _ hn] using!
      Finset.prod_nonneg
        fun p hp ↦ zetaMul_prime_pow_nonneg hχ (Nat.prime_of_mem_primeFactors hp) _

/-
### "Bad" Dirichlet characters

Our goal is to show that `L(χ, 1) ≠ 0` when `χ` is a (nontrivial) quadratic Dirichlet character.
To do that, we package the contradictory properties in a (private) structure
`DirichletCharacter.BadChar` and derive further statements eventually leading to a contradiction.

This entire section is private.
-/

/-- The object we're trying to show doesn't exist: A nontrivial quadratic Dirichlet character
whose L-function vanishes at `s = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789e0aae6e9378c8f5c8a7a07a905830e20b5433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
