# parent_infeasible_of_continuation_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "598a836a543702a3e603e0313ae1218e2ee875f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1142e09f-058e-2845-57c5-76e448d9125e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ebb1cda-1fb5-d063-866a-8a99fea958f1",
  "kind": "theorem",
  "lexical_name": "parent_infeasible_of_continuation_cover",
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
  "slug": "parent-infeasible-of-continuation-cover--ab6127ab66ec4ec21af50987",
  "source": {
    "blob": "598a836a543702a3e603e0313ae1218e2ee875f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab6127ab66ec4ec21af50987ac4bd6237be60e08b773ad3a9ebf6eb7c4652539",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ContinuationCover/Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ebb1cda-1fb5-d063-866a-8a99fea958f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parent_infeasible_of_continuation_cover
    {Partial Full Constraint : Type}
    [DecidableEq Partial]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {constraints : Finset Constraint}
    {parent : Partial}
    {children : Finset Partial}
    (cover : ContinuationCover semantics parent children)
    (childrenInfeasible :
      ∀ child ∈ children,
        Infeasible semantics constraints child) :
    Infeasible semantics constraints parent := by
  intro parentFeasible
  obtain ⟨full, parentExtends, satisfies⟩ := parentFeasible
  obtain ⟨child, childMember, childExtends⟩ :=
    cover.completionCovered full parentExtends
  exact childrenInfeasible child childMember
    ⟨full, childExtends, satisfies⟩

end Mathematics.BinaryFrontier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ContinuationCover/Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `598a836a543702a3e603e0313ae1218e2ee875f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
