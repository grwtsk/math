# List.getElem?_takeWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0431b9f406d3335675586f503c7aea45d025c16e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e706a37-7db3-f3d3-b2d5-70ac7284bb86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:197ea45f-f776-70b5-9307-f91cda6f0374",
  "kind": "theorem",
  "lexical_name": "List.getElem?_takeWhile",
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
  "slug": "list-getelem-takewhile--ebd1847c3e3ee2794ede1f50",
  "source": {
    "blob": "0431b9f406d3335675586f503c7aea45d025c16e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebd1847c3e3ee2794ede1f50bc41846c583abafe77cff8fa8f077991b4d43399",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:197ea45f-f776-70b5-9307-f91cda6f0374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem List.getElem?_takeWhile {l : List α} {P : α → Bool} {k} :
    (l.takeWhile P)[k]? = if ∀ k' : Nat, k' ≤ k → l[k']?.any P then l[k]? else none := by
  induction l generalizing k
  · simp
  · rename_i x xs ih
    rw [List.takeWhile_cons]
    split
    · cases k
      · simp [*]
      · simp [ih]
        split
        · rw [if_pos]
          intro k' hk'
          cases k'
          · simp [*]
          · simp_all
        · rename_i hP
          rw [if_neg]
          intro hP'
          apply hP
          intro k' hk'
          specialize hP' (k' + 1) (by omega)
          simp_all
    · simp
      intro h
      specialize h 0
      simp_all

@[cbv_eval, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0431b9f406d3335675586f503c7aea45d025c16e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
