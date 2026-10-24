# Tree.eval_nnf_and_negNnf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "806ea9b54e22875e71f5b543a2cc94a5868c8798",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3afb5e6f-d9e6-326c-b339-2e7910d63d5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03e718a6-7677-613f-1266-eb7869882128",
  "kind": "theorem",
  "lexical_name": "Tree.eval_nnf_and_negNnf",
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
  "slug": "tree-eval-nnf-and-negnnf--e809d37bc5a8484d8087d03f",
  "source": {
    "blob": "806ea9b54e22875e71f5b543a2cc94a5868c8798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e809d37bc5a8484d8087d03ffe511eb365f5d1214c3e38320f61b9712f5ba164",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03e718a6-7677-613f-1266-eb7869882128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tree.eval_nnf_and_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.nnf p) = Tree.eval ν p ∧
      Tree.eval ν (Tree.negNnf p) = !(Tree.eval ν p) := by
  induction p with
  | var a => exact ⟨rfl, rfl⟩
  | falsum => exact ⟨rfl, rfl⟩
  | truth => exact ⟨rfl, rfl⟩
  | neg p ih =>
      constructor
      · exact ih.2
      · cases hp : Tree.eval ν p <;> simp [Tree.negNnf, Tree.eval, ih.1, hp]
  | conj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.eval, ihp.1, ihq.1]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.2, ihq.2, hp, hq]
  | disj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.eval, ihp.1, ihq.1]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.2, ihq.2, hp, hq]
  | impl p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.2, ihq.1, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihq.2, hp, hq]
  | eqv p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2, hp, hq]
  | nand p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.2, ihq.2, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihq.1, hp, hq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `806ea9b54e22875e71f5b543a2cc94a5868c8798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
