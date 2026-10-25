# Min.max_oppositeMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a63dfbf7-a552-3f3b-d6ef-24d17915e0c6",
  "kind": "theorem",
  "lexical_name": "Min.max_oppositeMax",
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
  "slug": "min-max-oppositemax--8b2e5a9794026c55d49e756a",
  "source": {
    "blob": "d95c9e3c2e94cbffc3b9374da282f1b38d6bd834",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b2e5a9794026c55d49e756ada39ec0d6288a1a5182e8d1b86235d53fa113aa0",
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

Occurrence: `result:a63dfbf7-a552-3f3b-d6ef-24d17915e0c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem Min.max_oppositeMax {min : Min α} {a b : α} :
    (haveI := min.oppositeMax; Max.max a b) = Min.min a b :=
  (rfl)

/--
Creates a {name}`Min` instance from a {name}`Max` instance.

The result is a {lean}`Min α` instance that uses {lean}`max.max` as its {name}`min` operation.

If {name}`max` obeys laws, then {lean}`max.oppositeMin` obeys the corresponding laws for {name}`Min`.
To automatically derive these laws, use {lit}`open scoped Std.OppositeOrderInstances`.

For example, one can use the derived instances to prove properties about the opposite {name}`Min`
instance:

```lean
open scoped Std.OppositeOrderInstances in
example [LE α] [DecidableLE α] [Max α] [Std.LawfulOrderLeftLeaningMax α] {a b : α} :
    letI : LE α := LE.opposite inferInstance
    letI : Min α := (inferInstance : Max α).oppositeMin
    min a b = if a ≤ b then a else b :=
  letI : LE α := LE.opposite inferInstance
  letI : Min α := (inferInstance : Max α).oppositeMin
  Std.min_eq_if
```

Without the `open scoped` command, Lean would not find the {lit}`LawfulOrderLeftLeaningMin α`
instance for the opposite order that is required by {name}`min_eq_if`.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95c9e3c2e94cbffc3b9374da282f1b38d6bd834` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
