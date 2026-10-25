# getSlot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb92e5999024c8e4e5231a83a32a3b47687eba183b58439daef90e5b3267f96",
  "kind": "def",
  "lexical_name": "getSlot",
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
  "slug": "getslot--9ded2ae67f71ec3694aa19bf",
  "source": {
    "blob": "5625a962d4d47f85e3f82e85e6ab173e7fa4a3c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant96747379d687536a00540fe15cca2d523eb5238a9e3749faa15d8b68027462af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ded2ae67f71ec3694aa19bf73a0b916eb41c6cde41435ffc0bfa5fb2c6af5e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant96747379d687536a00540fe15cca2d523eb5238a9e3749faa15d8b68027462af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb92e5999024c8e4e5231a83a32a3b47687eba183b58439daef90e5b3267f96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getSlot
    [Monad m] [MonadLiftT (ST IO.RealWorld) m] (place : Nat) :
    AtomicT (Bounded.State α) m (IO.Ref (Slot α)) := do
  let st ← get
  let idx := (@Fin.ofNat st.capacity ⟨Nat.ne_zero_of_lt st.capacity.property⟩ place)
  return st.buffer.get idx

/--
Subscribes a new `Receiver` in the `Bounded` channel.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant96747379d687536a00540fe15cca2d523eb5238a9e3749faa15d8b68027462af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant96747379d687536a00540fe15cca2d523eb5238a9e3749faa15d8b68027462af.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5625a962d4d47f85e3f82e85e6ab173e7fa4a3c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
