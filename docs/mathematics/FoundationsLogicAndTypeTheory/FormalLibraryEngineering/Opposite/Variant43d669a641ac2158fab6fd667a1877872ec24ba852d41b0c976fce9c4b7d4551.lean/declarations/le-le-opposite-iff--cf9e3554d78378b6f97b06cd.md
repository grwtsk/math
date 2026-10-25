# LE.le_opposite_iff

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
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93d55ab9-5e1a-c4b9-e6d3-9e4fae63fdd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7adc0b2c-45e8-2570-34da-912289880585",
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
  "slug": "le-le-opposite-iff--cf9e3554d78378b6f97b06cd",
  "source": {
    "blob": "22d1d3e866ffb3d514b69ca65ddd502e916650cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9e3554d78378b6f97b06cdf4d030201d6a445b377e9431c5293f1eaf7dd921",
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

Occurrence: `result:7adc0b2c-45e8-2570-34da-912289880585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–93.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22d1d3e866ffb3d514b69ca65ddd502e916650cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
