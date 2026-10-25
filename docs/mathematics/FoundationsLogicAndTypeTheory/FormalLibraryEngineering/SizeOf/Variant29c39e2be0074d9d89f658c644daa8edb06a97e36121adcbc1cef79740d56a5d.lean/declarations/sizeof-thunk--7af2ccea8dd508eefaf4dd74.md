# sizeOf_thunk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b6a0500-4ed1-596d-08ec-0b510d74508e",
  "kind": "theorem",
  "lexical_name": "sizeOf_thunk",
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
  "slug": "sizeof-thunk--7af2ccea8dd508eefaf4dd74",
  "source": {
    "blob": "7b52efc590d22e34cd03f60d5bc83d0910187e48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af2ccea8dd508eefaf4dd749e8e3291324f846b1251ec463040387fe93b4b5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6a0500-4ed1-596d-08ec-0b510d74508e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem sizeOf_thunk [SizeOf α] (f : Unit → α) : sizeOf f = sizeOf (f ()) :=
  rfl

deriving instance SizeOf for PUnit
deriving instance SizeOf for Prod
deriving instance SizeOf for PProd
deriving instance SizeOf for MProd
deriving instance SizeOf for Bool
deriving instance SizeOf for Subtype
deriving instance SizeOf for PLift
deriving instance SizeOf for ULift
deriving instance SizeOf for Decidable
deriving instance SizeOf for Fin
deriving instance SizeOf for BitVec
deriving instance SizeOf for UInt8
deriving instance SizeOf for UInt16
deriving instance SizeOf for UInt32
deriving instance SizeOf for UInt64
deriving instance SizeOf for USize
deriving instance SizeOf for Char
deriving instance SizeOf for Option
deriving instance SizeOf for List
deriving instance SizeOf for Array
deriving instance SizeOf for ByteArray
deriving instance SizeOf for String
deriving instance SizeOf for String.Pos.Raw
deriving instance SizeOf for Substring.Raw
deriving instance SizeOf for Except
deriving instance SizeOf for EStateM.Result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b52efc590d22e34cd03f60d5bc83d0910187e48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
