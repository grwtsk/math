# mkHCongrProofHelper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2f4fdb5848c4db4c9c489b2c132fc5c36ed39d855cbbae4915e97471df5a729",
  "kind": "def",
  "lexical_name": "mkHCongrProofHelper",
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
  "slug": "mkhcongrproofhelper--d763c76ccbcc859d07fe19ed",
  "source": {
    "blob": "8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d763c76ccbcc859d07fe19edc25429f3f56d14eaf3a703095282284a81d39655",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2f4fdb5848c4db4c9c489b2c132fc5c36ed39d855cbbae4915e97471df5a729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def mkHCongrProofHelper (thm : CongrTheorem) (lhs rhs : Expr) (i : Nat) : GoalM Expr := do
    if i > 0 then
      let i := i - 1
      let proof ← mkHCongrProofHelper thm lhs.appFn! rhs.appFn! i
      let a₁  := lhs.appArg!
      let a₂  := rhs.appArg!
      let k   := thm.argKinds[i]!
      return mkApp3 proof a₁ a₂ (← mkEqProofCore a₁ a₂ (k matches .heq))
    else
      return thm.proof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
