# transportPrimitiveCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65762cc99290c9652db946c90c679cb3737e2d4e3a0ce19458984dfc7fe41ac8",
  "kind": "def",
  "lexical_name": "transportPrimitiveCore",
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
  "slug": "transportprimitivecore--e383a0c3cd6ba7b505ad4886",
  "source": {
    "blob": "f5ef71292abadfb6a59034952fa85abfc9be3691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 80,
    "path": "GRWTSK/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e383a0c3cd6ba7b505ad4886d501b5643a34f285389bcd5e853b683f89da1347",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65762cc99290c9652db946c90c679cb3737e2d4e3a0ce19458984dfc7fe41ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportPrimitiveCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    (equivariance :
      CompletionEquivariance
        semantics GroupCarrier)
    {registry : Finset Constraint}
    {partial : Partial}
    (automorphism : GroupCarrier)
    (core :
      Obstruction.PrimitiveCore
        semantics registry partial) :
    Obstruction.PrimitiveCore
      semantics
      (transportFinset automorphism registry)
      (automorphism • partial) where
  constraints :=
    transportFinset
      automorphism core.constraints
  subset_registry :=
    transportFinset_subset
      core.subset_registry
  nonempty :=
    transportFinset_nonempty core.nonempty
  infeasible :=
    (equivariance.infeasible_equivariant
      automorphism core.constraints partial).mp
      core.infeasible
  deletion_minimal := by
    intro transformedConstraint
      transformedMember
    rcases
        mem_transportFinset.mp
          transformedMember with
      ⟨constraint, constraintMember,
        transformed⟩
    subst transformedConstraint
    have transportedFeasible :=
      (equivariance.feasible_equivariant
        automorphism
        (core.constraints.erase constraint)
        partial).mp
        (core.deletion_minimal
          constraint constraintMember)
    simpa [transportFinset_erase] using
      transportedFeasible

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ef71292abadfb6a59034952fa85abfc9be3691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
