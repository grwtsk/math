# insertNth_succ_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75f997b1c4605ced1d3ce7b55549c4a853b4362e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 981,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be7c1cdd-d661-aae1-c8ab-5b97565ff0cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07f6e072-aa2b-20e9-8358-e5c794b32365",
  "kind": "theorem",
  "lexical_name": "insertNth_succ_cons",
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
  "slug": "insertnth-succ-cons--1eef134d908a778ff92cfd3b",
  "source": {
    "blob": "75f997b1c4605ced1d3ce7b55549c4a853b4362e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 989,
    "line": 981,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eef134d908a778ff92cfd3b77f86fae7ee300a6ce4ed47b735dad8cf21a810a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f6e072-aa2b-20e9-8358-e5c794b32365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 981–989.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertNth_succ_cons {α} (i : Fin (n + 1)) (x a : α) (p : Fin n → α) :
    (insertNth i.succ x (cons a p) : Fin (n + 2) → α) = cons a (insertNth i x p) := by
  ext j
  cases j using Fin.succAboveCases i.succ with
  | x => simp
  | p j =>
    simp only [insertNth_apply_succAbove]
    cases j using Fin.cases <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean#L981).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f997b1c4605ced1d3ce7b55549c4a853b4362e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
