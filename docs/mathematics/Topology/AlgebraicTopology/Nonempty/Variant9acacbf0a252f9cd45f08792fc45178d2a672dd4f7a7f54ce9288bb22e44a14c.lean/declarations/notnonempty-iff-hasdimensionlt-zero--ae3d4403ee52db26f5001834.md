# notNonempty_iff_hasDimensionLT_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01df44c58e8894ef2354106e4436508b55115288",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dd49088-1441-72a3-ec85-c5a0ea208cbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec78787a-9222-3cc7-ca6e-aeef6b0c5a56",
  "kind": "lemma",
  "lexical_name": "notNonempty_iff_hasDimensionLT_zero",
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
  "slug": "notnonempty-iff-hasdimensionlt-zero--ae3d4403ee52db26f5001834",
  "source": {
    "blob": "01df44c58e8894ef2354106e4436508b55115288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/Topology/AlgebraicTopology/Nonempty/Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3d4403ee52db26f5001834fdfa29999179a8085932225949ddce57af77795d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Nonempty/Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec78787a-9222-3cc7-ca6e-aeef6b0c5a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma notNonempty_iff_hasDimensionLT_zero :
    ¬ X.Nonempty ↔ X.HasDimensionLT 0 := by
  simp only [not_nonempty_iff]
  refine ⟨fun _ ↦ ⟨fun n hn ↦ ?_⟩, fun _ ↦ ⟨fun x ↦ ?_⟩⟩
  · have := Function.isEmpty (X.map (⦋0⦌.const ⦋n⦌ 0).op)
    subsingleton
  · exact (lt_self_iff_false _).1 (X.dim_lt_of_nonDegenerate ⟨x, by simp⟩ 0)

variable {X} in
/-- If a simplicial set is not nonempty, it is an initial object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Nonempty/Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Nonempty/Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01df44c58e8894ef2354106e4436508b55115288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
