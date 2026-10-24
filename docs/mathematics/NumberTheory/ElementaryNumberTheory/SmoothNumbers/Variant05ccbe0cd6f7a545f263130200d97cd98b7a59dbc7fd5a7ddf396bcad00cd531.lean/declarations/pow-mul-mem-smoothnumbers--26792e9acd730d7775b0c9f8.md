# pow_mul_mem_smoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57503448dd06ca2fc223a8e71a90a8f6015fce3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94baa018-35df-0075-a67e-bf71d4b3ae45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ed555ef-5cb7-0d1c-e1d7-ef09451e3d19",
  "kind": "lemma",
  "lexical_name": "pow_mul_mem_smoothNumbers",
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
  "slug": "pow-mul-mem-smoothnumbers--26792e9acd730d7775b0c9f8",
  "source": {
    "blob": "57503448dd06ca2fc223a8e71a90a8f6015fce3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 339,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26792e9acd730d7775b0c9f83bb3b4ab400074e17b69b70ef2842b1e7a324916",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ed555ef-5cb7-0d1c-e1d7-ef09451e3d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_mul_mem_smoothNumbers {p n : ℕ} (hp : p ≠ 0) (e : ℕ) (hn : n ∈ smoothNumbers p) :
    p ^ e * n ∈ smoothNumbers (succ p) := by
  -- This cannot be easily reduced to `pow_mul_mem_factoredNumbers`, as there `p.Prime` is needed.
  have : NoZeroDivisors ℕ := inferInstance -- this is needed twice --> speed-up
  have hp' := pow_ne_zero e hp
  refine ⟨mul_ne_zero hp' hn.1, fun q hq ↦ ?_⟩
  rcases (mem_primeFactorsList_mul hp' hn.1).mp hq with H | H
  · rw [mem_primeFactorsList hp'] at H
    exact Nat.lt_succ_of_le <| le_of_dvd hp.bot_lt <| H.1.dvd_of_dvd_pow H.2
  · exact (hn.2 q H).trans <| lt_succ_self p

/-- If `p` is a prime and `n` is `p`-smooth, then `p` and `n` are coprime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57503448dd06ca2fc223a8e71a90a8f6015fce3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
