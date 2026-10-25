# instRxcLawfulHasSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e75487a35b35db2ee102b81608b56458d577bde1bb3c10e69fa5fe5a2e66102e",
  "kind": "instance",
  "lexical_name": "instRxcLawfulHasSize",
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
  "slug": "instrxclawfulhassize--303d965b40e37304a92a4077",
  "source": {
    "blob": "f32285ef2b6b568f5b86e81b1787859bfcbc0b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:303d965b40e37304a92a4077d024461b4196e234297d21b353f9412427f69878",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e75487a35b35db2ee102b81608b56458d577bde1bb3c10e69fa5fe5a2e66102e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance instRxcLawfulHasSize [m : HasModel α β] [Rxc.HasSize β] [Rxc.LawfulHasSize β] :
    Rxc.LawfulHasSize α where
  size_eq_zero_of_not_le lo hi := by
    simp only [m.le_iff_encode_le, Rxc.HasSize.size]
    apply Rxc.LawfulHasSize.size_eq_zero_of_not_le
  size_eq_one_of_succ?_eq_none lo hi := by
    simp only [m.le_iff_encode_le, Rxc.HasSize.size,
      show succ? lo = none ↔ succ? (m.encode lo) = none by simp [m.succ?_encode]]
    apply Rxc.LawfulHasSize.size_eq_one_of_succ?_eq_none
  size_eq_succ_of_succ?_eq_some lo hi x := by
    have : ∀ x, succ? lo = some x ↔ succ? (m.encode lo) = some (m.encode x) := by
      simp [m.succ?_encode, ← Option.map_some, Option.map_inj_right m.eq_of_encode_eq]
    simp only [m.le_iff_encode_le, Rxc.HasSize.size, this]
    apply Rxc.LawfulHasSize.size_eq_succ_of_succ?_eq_some

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f32285ef2b6b568f5b86e81b1787859bfcbc0b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
