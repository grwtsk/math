# small_pow_of_small_tripling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96394873a6e176919607e3f1930611faf01be570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b22cd4b212b5b9256ee9ebc4f480c099190b90bac5798fb5c6d704713218445.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20c41e80-2e7b-239f-4f30-a1acf9787229",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8f9bc97-fe4e-5dcd-deac-2e9fa27a358f",
  "kind": "lemma",
  "lexical_name": "small_pow_of_small_tripling",
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
  "slug": "small-pow-of-small-tripling--6e8f3756feb56ebd846f9af0",
  "source": {
    "blob": "96394873a6e176919607e3f1930611faf01be570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant2b22cd4b212b5b9256ee9ebc4f480c099190b90bac5798fb5c6d704713218445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8f3756feb56ebd846f9af02c86e15c87b41faca529532f3c52fd1acdce02d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant2b22cd4b212b5b9256ee9ebc4f480c099190b90bac5798fb5c6d704713218445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8f9bc97-fe4e-5dcd-deac-2e9fa27a358f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma small_pow_of_small_tripling (hm : 3 ≤ m) (hA : #(A ^ 3) ≤ K * #A) (hAsymm : A⁻¹ = A) :
    #(A ^ m) ≤ K ^ (m - 2) * #A := by
  have (ε : ℤ) (hε : |ε| = 1) : A ^ ε = A := by
    obtain rfl | rfl := eq_or_eq_neg_of_abs_eq hε <;> simp [hAsymm]
  calc
    (#(A ^ m) : ℝ) = #((finRange m).map fun i ↦ A ^ 1).prod := by simp
    _ ≤ K ^ (m - 2) * #A :=
      inductive_claim_mul hm (fun δ hδ ↦ by simpa [this _ (hδ _), pow_succ'] using hA) _ (by simp)

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant2b22cd4b212b5b9256ee9ebc4f480c099190b90bac5798fb5c6d704713218445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SmallTripling/Variant2b22cd4b212b5b9256ee9ebc4f480c099190b90bac5798fb5c6d704713218445.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96394873a6e176919607e3f1930611faf01be570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
