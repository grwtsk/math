# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50b15feac099536d06a5619b6e2ceecafcd08d63261c0dd41c920663ae3f1f3e",
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
  "slug": "instance--9dc0fe633b014c7bd0f277cb",
  "source": {
    "blob": "cb462c54f7e7d145a02a8b77914e7fa2efebc86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variante74c419c62ee2222c42dd3b60d60ea6f5b263a59afaca6a7fbf2dd197e103924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dc0fe633b014c7bd0f277cb42c2d183a5b71a355fcfdd7fde5e4868e70385f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variante74c419c62ee2222c42dd3b60d60ea6f5b263a59afaca6a7fbf2dd197e103924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50b15feac099536d06a5619b6e2ceecafcd08d63261c0dd41c920663ae3f1f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LawfulMonadLiftBindFunction (n := n) (fun _ _ f x => lift x >>= f)] [LawfulMonad n] :
    LawfulMonadLiftFunction lift where
  lift_pure {γ} a := by
    simpa using LawfulMonadLiftBindFunction.liftBind_pure (n := n)
      (liftBind := fun _ _ f x => lift x >>= f) (γ := γ) (δ := γ) pure a
  lift_bind {β γ} x g := by
    simpa using LawfulMonadLiftBindFunction.liftBind_bind (n := n)
      (liftBind := fun _ _ f x => lift x >>= f) (β := β) (γ := γ) (δ := γ) pure x g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variante74c419c62ee2222c42dd3b60d60ea6f5b263a59afaca6a7fbf2dd197e103924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLiftFunction/Variante74c419c62ee2222c42dd3b60d60ea6f5b263a59afaca6a7fbf2dd197e103924.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb462c54f7e7d145a02a8b77914e7fa2efebc86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
