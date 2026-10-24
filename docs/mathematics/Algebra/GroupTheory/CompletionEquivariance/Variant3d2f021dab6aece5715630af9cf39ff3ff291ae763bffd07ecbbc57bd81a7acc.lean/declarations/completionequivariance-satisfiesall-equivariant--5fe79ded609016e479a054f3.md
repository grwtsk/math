# CompletionEquivariance.satisfiesAll_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07338d3e-6439-70ee-50cb-ec836d284186",
  "kind": "theorem",
  "lexical_name": "CompletionEquivariance.satisfiesAll_equivariant",
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
  "slug": "completionequivariance-satisfiesall-equivariant--5fe79ded609016e479a054f3",
  "source": {
    "blob": "b0654cd0edd7d423d9f7f11fbe7427a75a8993ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 175,
    "path": "GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe79ded609016e479a054f3e03c8f126fd81ff3b84d89afdcb781fd6c436449",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07338d3e-6439-70ee-50cb-ec836d284186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompletionEquivariance.satisfiesAll_equivariant
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
    (automorphism : GroupCarrier)
    (completion : Full)
    (constraints : Finset Constraint) :
    semantics.SatisfiesAll
        completion constraints ↔
      semantics.SatisfiesAll
        (automorphism • completion)
        (transportFinset
          automorphism constraints) := by
  constructor
  · intro satisfies
      transportedConstraint transportedMember
    rcases
        mem_transportFinset.mp
          transportedMember with
      ⟨constraint, constraintMember, rfl⟩
    exact
      (equivariance.satisfaction_equivariant
        automorphism completion constraint).mp
        (satisfies
          constraint constraintMember)
  · intro transportedSatisfies
      constraint constraintMember
    have transformed :=
      transportedSatisfies
        (automorphism • constraint)
        (mem_transportFinset.mpr
          ⟨constraint, constraintMember, rfl⟩)
    exact
      (equivariance.satisfaction_equivariant
        automorphism completion constraint).mpr
        transformed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0654cd0edd7d423d9f7f11fbe7427a75a8993ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
