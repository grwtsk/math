# PredTrans.Conjunctive.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "069e5ed47c9264fbbf04820a6b1ff3548b975f6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34d178e7-5357-f6cf-8dca-418a0220961c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41f4ba4a-307d-de49-957f-e68c86064a5a",
  "kind": "theorem",
  "lexical_name": "PredTrans.Conjunctive.mono",
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
  "slug": "predtrans-conjunctive-mono--0275390f459c31fb9dbf3b4f",
  "source": {
    "blob": "069e5ed47c9264fbbf04820a6b1ff3548b975f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0275390f459c31fb9dbf3b4ff6c786518941301e50beb3394b6390e4a93c2f27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f4ba4a-307d-de49-957f-e68c86064a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PredTrans.Conjunctive.mono (t : PostCond α ps → Assertion ps) (h : PredTrans.Conjunctive t) : PredTrans.Monotonic t := by
  intro Q₁ Q₂ hq
  replace hq : Q₁ = (Q₁ ∧ₚ Q₂) := PostCond.and_left_of_entails hq
  rw [hq, (h Q₁ Q₂).to_eq]
  exact SPred.and_elim_r

/--
The type of predicate transformers for a given `ps : PostShape` and return type `α : Type`. A
predicate transformer `x : PredTrans ps α` is a function that takes a postcondition `Q : PostCond α
ps` and returns a precondition `x.apply Q : Assertion ps`.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `069e5ed47c9264fbbf04820a6b1ff3548b975f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
