# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf327239ada2e9f16eb2c0e25ccbf3015c917e5aff06f9e15be24e32b47e1bbf",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b2fc2923db5037cc2d384f0b",
  "source": {
    "blob": "ac868eb7effc3cdc4dbbf80bb38ec5b1e1ba4c30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variantbc5912c44eb77a58e8e2d129c0f721cc6670338a86f866a6e5771c2eaff1f206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2fc2923db5037cc2d384f0b2253898a8bfe79574fe40226e3fa80ec8c2c38a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variantbc5912c44eb77a58e8e2d129c0f721cc6670338a86f866a6e5771c2eaff1f206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf327239ada2e9f16eb2c0e25ccbf3015c917e5aff06f9e15be24e32b47e1bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Monad m] [LawfulMonad m] : LawfulMonad (OptionT m) where
  id_map         := by intros; apply ext; simp
  map_const      := by intros; rfl
  seqLeft_eq     := OptionT.seqLeft_eq
  seqRight_eq    := OptionT.seqRight_eq
  pure_seq       := by intros; apply ext; simp [OptionT.seq_eq, Option.elimM, Option.elim]
  bind_pure_comp := OptionT.bind_pure_comp
  bind_map       := by intros; rfl
  pure_bind      := by intros; apply ext; simp [Option.elimM, Option.elim]
  bind_assoc     := by intros; apply ext; simp [Option.elimM, Option.elim]; apply bind_congr; intro a; cases a <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variantbc5912c44eb77a58e8e2d129c0f721cc6670338a86f866a6e5771c2eaff1f206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variantbc5912c44eb77a58e8e2d129c0f721cc6670338a86f866a6e5771c2eaff1f206.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac868eb7effc3cdc4dbbf80bb38ec5b1e1ba4c30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
