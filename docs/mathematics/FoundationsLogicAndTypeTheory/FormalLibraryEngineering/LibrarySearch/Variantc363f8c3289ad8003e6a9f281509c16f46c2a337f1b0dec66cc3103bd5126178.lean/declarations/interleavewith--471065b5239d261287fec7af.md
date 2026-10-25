# interleaveWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cac1e8a2344a93c7c5fb50e96f459b50edcfb9aaabddabf790305929aca0f3e",
  "kind": "def",
  "lexical_name": "interleaveWith",
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
  "slug": "interleavewith--471065b5239d261287fec7af",
  "source": {
    "blob": "2296198ad773bb12be7a314a97f67b1dff8e05c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:471065b5239d261287fec7af67fb636bb266d8ddb04201fb4068a4a50dfd2d6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cac1e8a2344a93c7c5fb50e96f459b50edcfb9aaabddabf790305929aca0f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def interleaveWith {α β γ} (f : α → γ) (x : Array α) (g : β → γ) (y : Array β) : Array γ :=
    Id.run do
  let mut res := Array.mkEmpty (x.size + y.size)
  let n := min x.size y.size
  for h : i in *...n do
    have p : i < min x.size y.size := Std.Rio.lt_upper_of_mem h
    res := res.push (f x[i])
    res := res.push (g y[i])
  let last :=
        if x.size > n then
          (x.extract n x.size).map f
        else
          (y.extract n y.size).map g
  pure $ res ++ last

/--
An exception ID that indicates further speculation on candidate lemmas should stop
and current results should be returned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2296198ad773bb12be7a314a97f67b1dff8e05c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
