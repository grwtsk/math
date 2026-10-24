# eval_minimize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "703fd57fa27516013d5a02a478d14757b2663f42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78612914-2046-0a1f-c561-3037fe143408",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bec2e3bb-c389-3eb7-7462-884ee4013c99",
  "kind": "theorem",
  "lexical_name": "eval_minimize",
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
  "slug": "eval-minimize--3d6c3eae3c3d97d8ce381476",
  "source": {
    "blob": "703fd57fa27516013d5a02a478d14757b2663f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6c3eae3c3d97d8ce381476baa2ca311159d4aa19e071b947a2ce28381b71e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bec2e3bb-c389-3eb7-7462-884ee4013c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_minimize
    [DecidableEq α]
    (ν : Valuation α) :
    ∀ sop : SumOfProducts α,
      SumOfProducts.eval ν (minimize sop) =
        SumOfProducts.eval ν sop
  | [] => rfl
  | term :: terms => by
      have ih :
          SumOfProducts.eval ν (minimize terms) =
            SumOfProducts.eval ν terms := by
        exact eval_minimize ν terms
      by_cases hhas :
          hasSubsumingTerm term (minimize terms) = true
      · simp [minimize, hhas, SumOfProducts.eval]
        rw [← ih]
        cases hterm : ProductTerm.eval ν term
        · cases SumOfProducts.eval ν (minimize terms) <;> rfl
        · have hrest :
              SumOfProducts.eval ν (minimize terms) = true :=
            eval_true_of_hasSubsumingTerm
              ν term (minimize terms) hhas hterm
          rw [hrest]
          rfl
      · have hhasFalse :
          hasSubsumingTerm term (minimize terms) = false := by
          cases h : hasSubsumingTerm term (minimize terms)
          · rfl
          · exact False.elim (hhas h)
        simp [minimize, hhasFalse, SumOfProducts.eval]
        rw [← ih]
        exact eval_removeSubsumedBy_or ν term (minimize terms)

end SumOfProducts

end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `703fd57fa27516013d5a02a478d14757b2663f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
