# recoverSurgeryTransaction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ba8b9cb9bf1daff999292cd01b084f5f2c557dff83d0dcf319ed0215c46c78b",
  "kind": "def",
  "lexical_name": "recoverSurgeryTransaction",
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
  "slug": "recoversurgerytransaction--195627741361774fb9e07c57",
  "source": {
    "blob": "f35c1f2827dcd3bd8ac0249efe6b715c8e296bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:195627741361774fb9e07c5731d1d10f434116cfa4339f5faf5d1c22e096abc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ba8b9cb9bf1daff999292cd01b084f5f2c557dff83d0dcf319ed0215c46c78b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def recoverSurgeryTransaction
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  match transaction.journal.state with
  | .committed =>
      if live = transaction.stagedModel then
        .committed transaction live
      else
        .manualRecovery {
          transaction with
          journal := {
            transaction.journal with state := .manualRecoveryRequired } } live
  | .rolledBack =>
      if live = transaction.baseModel then .advanced transaction live
      else .manualRecovery {
        transaction with
        journal := {
          transaction.journal with state := .manualRecoveryRequired } } live
  | .manualRecoveryRequired => .manualRecovery transaction live
  | .prepared | .filesStaged | .renaming | .rollbackStarted =>
      rollbackSurgeryTransaction {
        transaction with
        journal := { transaction.journal with state := .rollbackStarted } } live

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f35c1f2827dcd3bd8ac0249efe6b715c8e296bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
