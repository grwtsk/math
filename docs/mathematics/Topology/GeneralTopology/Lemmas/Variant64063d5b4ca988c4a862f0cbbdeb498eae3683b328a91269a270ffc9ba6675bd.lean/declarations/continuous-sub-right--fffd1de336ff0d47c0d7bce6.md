# continuous_sub_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ee5707ee51c5397200418945834adb440a68c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86d416be-6485-d74c-c26e-291c4e03c2d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:902d7792-87fa-1efd-49d2-3e03c1413bc5",
  "kind": "theorem",
  "lexical_name": "continuous_sub_right",
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
  "slug": "continuous-sub-right--fffd1de336ff0d47c0d7bce6",
  "source": {
    "blob": "7ee5707ee51c5397200418945834adb440a68c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 438,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fffd1de336ff0d47c0d7bce63acfd3e899995835b4a9504f49bb63e4deb1224e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902d7792-87fa-1efd-49d2-3e03c1413bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_sub_right (a : ℝ≥0∞) : Continuous fun x : ℝ≥0∞ => x - a := by
  by_cases a_infty : a = ∞
  · simp [a_infty, continuous_const, tsub_eq_zero_of_le]
  · rw [show (fun x => x - a) = (fun p : ℝ≥0∞ × ℝ≥0∞ => p.fst - p.snd) ∘ fun x => ⟨x, a⟩ by rfl]
    apply continuousOn_sub.comp_continuous (by fun_prop)
    intro x
    simp only [a_infty, Ne, mem_ofPred_eq, Prod.mk_inj, and_false, not_false_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee5707ee51c5397200418945834adb440a68c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
