# LE.le_opposite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e252e427-84e4-b9c7-77a5-581f7ac04bc8",
  "kind": "theorem",
  "lexical_name": "LE.le_opposite_iff",
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
  "slug": "le-le-opposite-iff--37edc256d4c1711ca4a4ba14",
  "source": {
    "blob": "d95c9e3c2e94cbffc3b9374da282f1b38d6bd834",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37edc256d4c1711ca4a4ba148e9c60fc2e37f740e7f01f4522b8a9ab196653a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e252e427-84e4-b9c7-77a5-581f7ac04bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem LE.le_opposite_iff {le : LE α} {a b : α} :
    (haveI := le.opposite; a ≤ b) ↔ b ≤ a := by
  exact Iff.rfl

/--
Inverts an {name}`LT` instance.

The result is an {lean}`LT α` instance where {lit}`a < b` holds when {name}`lt` would have
{lit}`b < a` hold.

If {name}`lt` obeys laws, then {lean}`lt.opposite` obeys the opposite laws.
To automatically derive these laws, use {lit}`open scoped Std.OppositeOrderInstances`.

For example, one can use the derived instances to prove properties about the opposite {name}`LT`
instance:

```lean
open scoped Std.OppositeOrderInstances in
example [LE α] [LT α] [Std.LawfulOrderLT α] [Std.IsLinearOrder α] {x y : α} :
    letI : LE α := LE.opposite inferInstance
    letI : LT α := LT.opposite inferInstance
    ¬ y ≤ x ↔ x < y :=
  letI : LE α := LE.opposite inferInstance
  letI : LT α := LT.opposite inferInstance
  Std.not_le
```

Without the `open scoped` command, Lean would not find the {lit}`LawfulOrderLT α`
and {lit}`IsLinearOrder α` instances for the opposite order that are required by {name}`not_le`.
-/
@[instance_reducible]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95c9e3c2e94cbffc3b9374da282f1b38d6bd834` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
