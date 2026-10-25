# ProjReductionKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ee008ae23d0b315886fde2203b906809ca43201ee46728b115c3ac901bb7d7d",
  "kind": "inductive",
  "lexical_name": "ProjReductionKind",
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
  "slug": "projreductionkind--bd980839f262b6da4a702a29",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd980839f262b6da4a702a2988a99a6a5323338fce1eef81c92004ece96ef319",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ee008ae23d0b315886fde2203b906809ca43201ee46728b115c3ac901bb7d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProjReductionKind where
  /-- Projections `s.i` are not reduced at `whnfCore`. -/
  | no
  /--
  Projections `s.i` are reduced at `whnfCore`, and `whnfCore` is used at `s` during the process.
  Recall that `whnfCore` does not perform `delta` reduction (i.e., it will not unfold constant declarations).
  -/
  | yes
  /--
  Projections `s.i` are reduced at `whnfCore`, and `whnf` is used at `s` during the process.
  Recall that `whnfCore` does not perform `delta` reduction (i.e., it will not unfold constant declarations), but `whnf` does.
  -/
  | yesWithDelta
  /--
  Projections `s.i` are reduced at `whnfCore`, and `whnfAtMostI` is used at `s` during the process.
  Recall that `whnfAtMostI` is like `whnf` but uses transparency at most `instances`.
  This option is stronger than `yes`, but weaker than `yesWithDelta`.
  We use this option to ensure we reduce projections to prevent expensive defeq checks when unifying TC operations.
  When unifying e.g. `(@Field.toNeg α inst1).1 =?= (@Field.toNeg α inst2).1`,
  we only want to unify negation (and not all other field operations as well).
  Unifying the field instances slowed down unification: https://github.com/leanprover/lean4/issues/1986
  -/
  | yesWithDeltaI
  deriving DecidableEq, Inhabited, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
