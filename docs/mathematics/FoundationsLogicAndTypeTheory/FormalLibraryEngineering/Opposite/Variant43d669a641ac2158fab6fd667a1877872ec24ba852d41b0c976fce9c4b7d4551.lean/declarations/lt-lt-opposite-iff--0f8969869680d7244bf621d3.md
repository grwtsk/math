# LT.lt_opposite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22d1d3e866ffb3d514b69ca65ddd502e916650cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:286fed3d-4f3c-2d49-8a87-cc8ac01d838f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caea3932-1bed-6068-3b76-a0241fb8b854",
  "kind": "theorem",
  "lexical_name": "LT.lt_opposite_iff",
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
  "slug": "lt-lt-opposite-iff--0f8969869680d7244bf621d3",
  "source": {
    "blob": "22d1d3e866ffb3d514b69ca65ddd502e916650cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f8969869680d7244bf621d32717a8c0993d2a40754c37d88b4f7679c8fa035c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caea3932-1bed-6068-3b76-a0241fb8b854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem LT.lt_opposite_iff {lt : LT α} {a b : α} :
    (haveI := lt.opposite; a < b) ↔ b < a := by
  exact Iff.rfl

/--
Creates a {name}`Max` instance from a {name}`Min` instance.

The result is a {lean}`Max α` instance that uses {lean}`min.min` as its {name}`max` operation.

If {name}`min` obeys laws, then {lean}`min.oppositeMax` obeys the corresponding laws for {name}`Max`.
To automatically derive these laws, use {lit}`open scoped Std.OppositeOrderInstances`.

For example, one can use the derived instances to prove properties about the opposite {name}`Max`
instance:

```lean
open scoped Std.OppositeOrderInstances in
example [LE α] [DecidableLE α] [Min α] [Std.LawfulOrderLeftLeaningMin α] {a b : α} :
    letI : LE α := LE.opposite inferInstance
    letI : Max α := (inferInstance : Min α).oppositeMax
    max a b = if b ≤ a then a else b :=
  letI : LE α := LE.opposite inferInstance
  letI : Max α := (inferInstance : Min α).oppositeMax
  Std.max_eq_if
```

Without the `open scoped` command, Lean would not find the {lit}`LawfulOrderLeftLeaningMax α`
instance for the opposite order that is required by {name}`max_eq_if`.
-/
@[instance_reducible]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22d1d3e866ffb3d514b69ca65ddd502e916650cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
