# Attach.instIteratorLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:942b388a674f3eb21d7ce388453a1943712fdf1a3c23f602a117458998d31272",
  "kind": "instance",
  "lexical_name": "Attach.instIteratorLoop",
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
  "slug": "attach-institeratorloop--750527cb0cdb2cec5630262c",
  "source": {
    "blob": "7928d34bb63b549c3ecdcc3dfd6fb53a19f851ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:750527cb0cdb2cec5630262c53a3783b86abd6cfb693f4371878e06353607187",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:942b388a674f3eb21d7ce388453a1943712fdf1a3c23f602a117458998d31272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Attach.instIteratorLoop {α β : Type w} {m : Type w → Type w'} [Monad m]
    {n : Type x → Type x'} [Monad n] {P : β → Prop} [Iterator α m β] :
    IteratorLoop (Attach α m P) m n :=
  .defaultImplementation

end Iterators.Types

/--
“Attaches” individual proofs to an iterator of values that satisfy a predicate `P`, returning an
iterator with values in the corresponding subtype `{ x // P x }`.

**Termination properties:**

* `Finite` instance: only if the base iterator is finite
* `Productive` instance: only if the base iterator is productive
-/
@[always_inline, inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attach/Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7928d34bb63b549c3ecdcc3dfd6fb53a19f851ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
