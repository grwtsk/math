# ediam_le_two_mul_eccent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f437da1b6928c8453792f4ce8b2d9bddfa2d8eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3e12eeac1ff747fd7880054c47bc5d8d28866dc56ac47398d028a471b94d186.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c278333-1a58-1825-6426-cb2be2480e3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11956576-bd14-0614-8a08-161ffa49d561",
  "kind": "lemma",
  "lexical_name": "ediam_le_two_mul_eccent",
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
  "slug": "ediam-le-two-mul-eccent--5b22d107dd8e6f1e49f8daca",
  "source": {
    "blob": "8f437da1b6928c8453792f4ce8b2d9bddfa2d8eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Varianta3e12eeac1ff747fd7880054c47bc5d8d28866dc56ac47398d028a471b94d186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b22d107dd8e6f1e49f8daca7b2aabc3eb55284622605e0f086cc0a0a6394d39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Varianta3e12eeac1ff747fd7880054c47bc5d8d28866dc56ac47398d028a471b94d186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11956576-bd14-0614-8a08-161ffa49d561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ediam_le_two_mul_eccent (u : α) : G.ediam ≤ 2 * G.eccent u := by
  refine ediam_le_of_edist_le fun v w ↦ ?_
  calc
    G.edist v w
      ≤ G.edist v u + G.edist u w := G.edist_triangle
    _ = G.edist u v + G.edist u w := by rw [edist_comm]
    _ ≤ G.eccent u + G.eccent u := add_le_add edist_le_eccent edist_le_eccent
    _ = 2 * G.eccent u := (two_mul _).symm

end ediam

section diam

/--
The diameter is the greatest distance between any two vertices, with the value `0` in
case the distances are not bounded above, or the graph is not connected.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Varianta3e12eeac1ff747fd7880054c47bc5d8d28866dc56ac47398d028a471b94d186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Varianta3e12eeac1ff747fd7880054c47bc5d8d28866dc56ac47398d028a471b94d186.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f437da1b6928c8453792f4ce8b2d9bddfa2d8eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
