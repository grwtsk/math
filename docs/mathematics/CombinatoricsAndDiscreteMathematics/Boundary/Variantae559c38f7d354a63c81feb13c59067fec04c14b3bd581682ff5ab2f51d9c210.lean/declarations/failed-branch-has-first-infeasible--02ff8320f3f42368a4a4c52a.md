# failed_branch_has_first_infeasible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:213406d0-e868-ef52-c080-57af941e4c48",
  "kind": "theorem",
  "lexical_name": "failed_branch_has_first_infeasible",
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
  "slug": "failed-branch-has-first-infeasible--02ff8320f3f42368a4a4c52a",
  "source": {
    "blob": "318ff4b29b1922f46f5c0c01462cad06952ffd67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ff8320f3f42368a4a4c52a9258a27e769b8794efbe7de15b7388f9b6d25d44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:213406d0-e868-ef52-c080-57af941e4c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem failed_branch_has_first_infeasible
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
      FailedBranchBoundaryCertificate branch) :
    ∃ node ∈ branch.nodes,
      FirstInfeasibleBoundary
        tree semantics constraints node :=
  ⟨certificate.boundaryNode,
    certificate.boundaryMember,
    certificate.boundary⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variantae559c38f7d354a63c81feb13c59067fec04c14b3bd581682ff5ab2f51d9c210.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318ff4b29b1922f46f5c0c01462cad06952ffd67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
