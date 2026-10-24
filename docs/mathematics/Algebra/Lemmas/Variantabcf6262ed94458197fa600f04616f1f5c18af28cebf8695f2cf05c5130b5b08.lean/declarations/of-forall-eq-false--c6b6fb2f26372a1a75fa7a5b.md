# of_forall_eq_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa45781acb3514380b89cbe57f048e0403f59999",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2e6d3e6-588a-4542-e209-516277624868",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18d1da57-0c83-615b-b579-c4bd7138e62d",
  "kind": "theorem",
  "lexical_name": "of_forall_eq_false",
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
  "slug": "of-forall-eq-false--c6b6fb2f26372a1a75fa7a5b",
  "source": {
    "blob": "aa45781acb3514380b89cbe57f048e0403f59999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 153,
    "path": "GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b6fb2f26372a1a75fa7a5b3603e66e6c80d75b596a2a301bf9c2244c8aa6b9",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18d1da57-0c83-615b-b579-c4bd7138e62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_forall_eq_false (α : Sort u) (p : α → Prop) (h : (∀ x : α, p x) = False) : ∃ x : α, ¬ p x := by simp_all

/-! dite -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa45781acb3514380b89cbe57f048e0403f59999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
