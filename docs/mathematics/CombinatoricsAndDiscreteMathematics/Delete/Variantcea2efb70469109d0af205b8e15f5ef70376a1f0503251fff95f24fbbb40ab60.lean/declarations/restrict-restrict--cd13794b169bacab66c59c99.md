# restrict_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5f48428026a4aee1d8be803f47375107f485522",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db6d4b71-aacd-9dd8-4da3-fbcc25314d2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ff6c625-f5ac-603a-4100-ce129a27df46",
  "kind": "lemma",
  "lexical_name": "restrict_restrict",
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
  "slug": "restrict-restrict--cd13794b169bacab66c59c99",
  "source": {
    "blob": "f5f48428026a4aee1d8be803f47375107f485522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd13794b169bacab66c59c99ec7a23dfb238451c0b0dde0cae1a4718ea5325c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ff6c625-f5ac-603a-4100-ce129a27df46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrict_restrict (G : Graph α β) (F₁ F₂ : Set β) :
    (G.restrict F₁).restrict F₂ = G.restrict (F₁ ∩ F₂) := by
  refine (Compatible.of_le_le (G := G) (restrict_le.trans (by simp)) (by simp)).ext (by simp) ?_
  simp only [edgeSet_restrict]
  rw [← inter_assoc, inter_comm _ F₂]

/-- Delete a set `F` of edges from `G`. This is a special case of `restrict`,
but we define it with `copy` so that the edge set is definitionally equal to `E(G) \ F`. -/
@[expose, simps! (attr := grind =)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f48428026a4aee1d8be803f47375107f485522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
