# WithBot.WithTop.completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52049a167d374bdbec41f78f5903d4b428acdf6ef108db6941bcd9af094864fd",
  "kind": "instance",
  "lexical_name": "WithBot.WithTop.completeLattice",
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
  "slug": "withbot-withtop-completelattice--7fe182f0f197bb8f04b0e2c6",
  "source": {
    "blob": "f713f6784c42e60eefbdd34523575e4a02b98319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1598,
    "line": 1590,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantcb8e49a3cf6e421ea36155f10de50ef9725fce94cd44cf201a882bd72ae9bd53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fe182f0f197bb8f04b0e2c667e28fe677c54fbcb091c0dd0071f33bb0f77374",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantcb8e49a3cf6e421ea36155f10de50ef9725fce94cd44cf201a882bd72ae9bd53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52049a167d374bdbec41f78f5903d4b428acdf6ef108db6941bcd9af094864fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1590–1598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance WithBot.WithTop.completeLattice {α : Type*}
    [ConditionallyCompleteLattice α] : CompleteLattice (WithBot (WithTop α)) :=
  { instInfSet, instSupSet, instBoundedOrder, lattice with
    le_sSup := (@WithTop.WithBot.completeLattice αᵒᵈ _).sInf_le
    sSup_le := (@WithTop.WithBot.completeLattice αᵒᵈ _).le_sInf
    sInf_le := (@WithTop.WithBot.completeLattice αᵒᵈ _).le_sSup
    le_sInf := (@WithTop.WithBot.completeLattice αᵒᵈ _).sSup_le }
#align with_bot.with_top.complete_lattice WithBot.WithTop.completeLattice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantcb8e49a3cf6e421ea36155f10de50ef9725fce94cd44cf201a882bd72ae9bd53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantcb8e49a3cf6e421ea36155f10de50ef9725fce94cd44cf201a882bd72ae9bd53.lean#L1590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f713f6784c42e60eefbdd34523575e4a02b98319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
