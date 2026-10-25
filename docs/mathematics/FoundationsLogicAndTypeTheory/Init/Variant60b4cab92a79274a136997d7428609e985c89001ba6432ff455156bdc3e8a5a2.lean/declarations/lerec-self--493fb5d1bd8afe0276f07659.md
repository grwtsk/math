# leRec_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fed2334-8e77-c82f-62a3-feb0e58859f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aaa547c-28f7-a9d1-d914-6144543ca1f3",
  "kind": "lemma",
  "lexical_name": "leRec_self",
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
  "slug": "lerec-self--493fb5d1bd8afe0276f07659",
  "source": {
    "blob": "4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:493fb5d1bd8afe0276f07659116b87857149401bcdabf051a6eff11053e88cfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aaa547c-28f7-a9d1-d914-6144543ca1f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leRec_self {n} {motive : (m : ℕ) → n ≤ m → Sort*}
    (refl : motive n (Nat.le_refl _))
    (le_succ_of_le : ∀ ⦃k⦄ (h : n ≤ k), motive k h → motive (k + 1) (le_succ_of_le h)) :
    (leRec (motive := motive) refl le_succ_of_le (Nat.le_refl _) :
    motive n (Nat.le_refl _)) = refl := by
  cases n <;> simp [leRec, Or.by_cases, dif_neg]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant60b4cab92a79274a136997d7428609e985c89001ba6432ff455156bdc3e8a5a2.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1ecae47d394bb06c99476e2cf5d6a89b78a1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
