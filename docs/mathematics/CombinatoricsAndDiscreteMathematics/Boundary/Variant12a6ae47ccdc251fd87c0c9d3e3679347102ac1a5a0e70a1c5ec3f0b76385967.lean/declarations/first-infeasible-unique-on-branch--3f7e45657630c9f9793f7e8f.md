# first_infeasible_unique_on_branch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6094c4b051d720db368be11060ea9739703e4498",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f97b74c3-9568-2826-c7ce-971f1527342d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f286d02-6c39-9482-1e63-dee867d52fd8",
  "kind": "theorem",
  "lexical_name": "first_infeasible_unique_on_branch",
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
  "slug": "first-infeasible-unique-on-branch--3f7e45657630c9f9793f7e8f",
  "source": {
    "blob": "6094c4b051d720db368be11060ea9739703e4498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f7e45657630c9f9793f7e8f1d55e3910b6d1fec8cfcb07c1e797e0639d57a81",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f286d02-6c39-9482-1e63-dee867d52fd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_infeasible_unique_on_branch
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint}
    {constraints : Finset Constraint}
    {branch : RootedBranch tree}
    (certificate :
      FailedBranchBoundaryCertificate branch)
    {candidate : Node}
    (candidateMember :
      candidate ∈ branch.nodes)
    (candidateBoundary :
      FirstInfeasibleBoundary
        tree semantics constraints candidate) :
    candidate = certificate.boundaryNode :=
  certificate.uniqueOnBranch
    candidate candidateMember candidateBoundary

end Mathematics.BinaryFrontier.Refinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6094c4b051d720db368be11060ea9739703e4498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
