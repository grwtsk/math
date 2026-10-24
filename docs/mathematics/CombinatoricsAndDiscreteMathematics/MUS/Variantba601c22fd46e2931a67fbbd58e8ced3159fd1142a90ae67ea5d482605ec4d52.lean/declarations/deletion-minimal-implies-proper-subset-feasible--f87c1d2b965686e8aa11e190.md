# deletion_minimal_implies_proper_subset_feasible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf5b7baa-7c81-c94d-7809-b33b8a38554a",
  "kind": "theorem",
  "lexical_name": "deletion_minimal_implies_proper_subset_feasible",
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
  "slug": "deletion-minimal-implies-proper-subset-feasible--f87c1d2b965686e8aa11e190",
  "source": {
    "blob": "0f335d9cd18dada9016a5e6c125bdee11db5565e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variantba601c22fd46e2931a67fbbd58e8ced3159fd1142a90ae67ea5d482605ec4d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87c1d2b965686e8aa11e190f9b6cab1f96f0d97b4b5ad86a058a384ab618f83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MUS/Variantba601c22fd46e2931a67fbbd58e8ced3159fd1142a90ae67ea5d482605ec4d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf5b7baa-7c81-c94d-7809-b33b8a38554a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deletion_minimal_implies_proper_subset_feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {registry core subset : Finset Constraint}
    {state : Partial}
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (proper : subset ⊂ core) :
    Feasible semantics subset state := by
  obtain ⟨removed, removedMember, subsetWithoutRemoved⟩ :=
    Finset.ssubset_iff_exists_subset_erase.mp proper
  exact feasible_of_constraint_subset
    semantics
    subsetWithoutRemoved
    (primitive.deletion_feasible
      removed removedMember)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MUS/Variantba601c22fd46e2931a67fbbd58e8ced3159fd1142a90ae67ea5d482605ec4d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variantba601c22fd46e2931a67fbbd58e8ced3159fd1142a90ae67ea5d482605ec4d52.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f335d9cd18dada9016a5e6c125bdee11db5565e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
