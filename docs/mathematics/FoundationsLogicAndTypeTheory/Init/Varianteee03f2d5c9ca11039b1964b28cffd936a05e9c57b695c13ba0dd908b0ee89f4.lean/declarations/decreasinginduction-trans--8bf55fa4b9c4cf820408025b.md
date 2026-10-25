# decreasingInduction_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15d2ffea4afe33313548a7f6045a38e2e1bb9644",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae4c6c9a-c72d-6ca9-478d-7f7fd22fa0da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce23526e-9e22-6f34-e055-fd2c24d3a36b",
  "kind": "lemma",
  "lexical_name": "decreasingInduction_trans",
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
  "slug": "decreasinginduction-trans--8bf55fa4b9c4cf820408025b",
  "source": {
    "blob": "15d2ffea4afe33313548a7f6045a38e2e1bb9644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 298,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bf55fa4b9c4cf820408025b3dd2412b599e5eefcd95b15c9fada1ffeafdd341",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce23526e-9e22-6f34-e055-fd2c24d3a36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma decreasingInduction_trans {motive : (m : ℕ) → m ≤ k → Sort*} (hmn : m ≤ n) (hnk : n ≤ k)
    (of_succ self) :
    (decreasingInduction (motive := motive) of_succ self (Nat.le_trans hmn hnk) : motive m _) =
    decreasingInduction (fun _ _ => of_succ _ _) (decreasingInduction of_succ self hnk) hmn := by
  induction hnk with
  | refl => rw [decreasingInduction_self]
  | step hnk ih =>
      rw [decreasingInduction_succ _ _ (Nat.le_trans hmn hnk), ih, decreasingInduction_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d2ffea4afe33313548a7f6045a38e2e1bb9644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
