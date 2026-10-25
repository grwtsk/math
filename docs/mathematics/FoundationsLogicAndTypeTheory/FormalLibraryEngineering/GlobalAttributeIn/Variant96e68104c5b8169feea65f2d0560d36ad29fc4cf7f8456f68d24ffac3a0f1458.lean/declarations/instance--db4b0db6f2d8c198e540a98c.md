# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24855b469a4b7ad54acead9ef1b88db2ced2aa821cdcf1dd9ec9e2f7dd6c2bf4",
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
  "slug": "instance--db4b0db6f2d8c198e540a98c",
  "source": {
    "blob": "53808fbc216033b3d3c2599d1c7e1f4db75ec29b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db4b0db6f2d8c198e540a98ced69e06df166b2938b3aa790d9d8730549f00cde",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24855b469a4b7ad54acead9ef1b88db2ced2aa821cdcf1dd9ec9e2f7dd6c2bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial instance [Monad m] : ForIn m TopDownSkipQuot Syntax where
  forIn := fun ⟨stx⟩ init f => do
    let rec @[specialize] loop stx b [Inhabited (type_of% b)] := do
      if stx.isQuot then return ForInStep.yield b
      match (← f stx b) with
      | ForInStep.yield b' =>
        let mut b := b'
        if let Syntax.node _ _ args := stx then
          for arg in args do
            match (← loop arg b) with
            | ForInStep.yield b' => b := b'
            | ForInStep.done b'  => return ForInStep.done b'
        return ForInStep.yield b
      | ForInStep.done b => return ForInStep.done b
    match (← @loop stx init ⟨init⟩) with
    | ForInStep.yield b => return b
    | ForInStep.done b  => return b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53808fbc216033b3d3c2599d1c7e1f4db75ec29b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
