# coeff_sum_X_pow_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5b956a8-488b-e01f-5954-8cdbab1d0013",
  "kind": "lemma",
  "lexical_name": "coeff_sum_X_pow_of_fintype",
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
  "slug": "coeff-sum-x-pow-of-fintype--502bfabe1a8a36138e136e37",
  "source": {
    "blob": "1aba38376a97d941a8b58c2ecd285cde7b85fa97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:502bfabe1a8a36138e136e37770367128d1cf7926cebe166596700efeb988662",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b956a8-488b-e01f-5954-8cdbab1d0013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_sum_X_pow_of_fintype [Fintype σ] (d : σ →₀ ℕ) (n : ℕ) :
    ((∑ i, X i : MvPolynomial σ R) ^ n).coeff d =
      if d.sum (fun _ m ↦ m) = n then d.multinomial else 0 := by
  have : (∑ i, X i : MvPolynomial σ R) = ∑ i, (1 : σ → R) i • X i := by simp
  simp [this, coeff_linearCombination_X_pow_of_fintype]

/-- The formula for the `d`th coefficient of `(X 0 + X 1) ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aba38376a97d941a8b58c2ecd285cde7b85fa97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
