# Cache.get?_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "830e377bb133d41347c1bec758bce0c87b17f243",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:037b51bf-ec0f-f446-fa15-17f58454fe08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ceb9301-f670-e9a1-2ea0-4749192b40d6",
  "kind": "theorem",
  "lexical_name": "Cache.get?_bounds",
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
  "slug": "cache-get-bounds--3cfae80fc6371c10e3d33a80",
  "source": {
    "blob": "830e377bb133d41347c1bec758bce0c87b17f243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cfae80fc6371c10e3d33a8082435fdb9c36f50c1131ddbc7249b0f008e96d5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ceb9301-f670-e9a1-2ea0-4749192b40d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cache.get?_bounds {decls : Array (Decl α)} {idx : Nat} (c : Cache α decls) (decl : Decl α)
    (hfound : c.val[decl]? = some idx) :
    idx < decls.size := by
  rcases c with ⟨cache, hcache⟩
  induction hcache with
  | empty => simp at hfound
  | push_id wf ih =>
    specialize ih hfound
    simp
    omega
  | @push_cache _ _ decl' wf ih =>
    simp only [HashMap.getElem?_insert, beq_iff_eq] at hfound
    split at hfound <;> rename_i h
    · subst h
      simp_all
    · specialize ih hfound
      simp
      omega

/--
If `Cache.get? decl` returns `some i` then `decls[i] = decl` holds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830e377bb133d41347c1bec758bce0c87b17f243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
