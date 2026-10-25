# updateOsetImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5ebfba425b0d93b9e1d275975dc387a0e5dfd5ada7921e5a6d01f1942372b1c",
  "kind": "def",
  "lexical_name": "updateOsetImp",
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
  "slug": "updateosetimp--9e7b1c997fb6a7945b43a4fc",
  "source": {
    "blob": "c371cf773f9bfea2c1daa81d460c728223aafab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 684,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e7b1c997fb6a7945b43a4fc4e2fec5b8a79c040498434ed8326e29c2ee69b69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5ebfba425b0d93b9e1d275975dc387a0e5dfd5ada7921e5a6d01f1942372b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private unsafe def updateOsetImp (c : Code pu) (fvarId' : FVarId)
    (i' : Nat) (y' : Arg pu) (k' : Code pu) : Code pu :=
  match c with
  | .oset fvarId i y k _ =>
    if ptrEq fvarId fvarId' && i == i' && ptrEq y y' && ptrEq k k' then
      c
    else
      .oset fvarId' i' y' k'
  | _ => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c371cf773f9bfea2c1daa81d460c728223aafab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
