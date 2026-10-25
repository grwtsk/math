# union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81a7a0506ba43cdeffd5e252c81b2ac9b63c28b8fbbba5bdb889bddead15c63e",
  "kind": "def",
  "lexical_name": "union",
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
  "slug": "union--ff1860e7858adb0dfdbf97ab",
  "source": {
    "blob": "d7aa549cd1ececd0db358b8a68350b56f4bf438a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9fef83e20ca860f72ce2205d34bd1afe036fbb173fc9274aeeae6e3f2541ec57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff1860e7858adb0dfdbf97ab6aa33ebd8141b1138c46eb4bdc00b272bca377c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9fef83e20ca860f72ce2205d34bd1afe036fbb173fc9274aeeae6e3f2541ec57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81a7a0506ba43cdeffd5e252c81b2ac9b63c28b8fbbba5bdb889bddead15c63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def union [BEq α] [Hashable α] (m₁ m₂ : DHashMap α β) : DHashMap α β where
  inner := Raw₀.union ⟨m₁.1, m₁.2.size_buckets_pos⟩ ⟨m₂.1, m₂.2.size_buckets_pos⟩
  wf := Std.DHashMap.Raw.WF.union₀ m₁.2 m₂.2

/--
Computes the intersection of the given hash maps. The result will only contain entries from the first map.

This function always iterates through the smaller map, so the expected runtime is
`O(min(m₁.size, m₂.size))`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9fef83e20ca860f72ce2205d34bd1afe036fbb173fc9274aeeae6e3f2541ec57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9fef83e20ca860f72ce2205d34bd1afe036fbb173fc9274aeeae6e3f2541ec57.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7aa549cd1ececd0db358b8a68350b56f4bf438a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
