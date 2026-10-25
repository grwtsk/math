# Impl.floatQMatchPairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeb6705bb34608c4f1d97fa5ac4ac52531a58ee68c112b2af13d55b4d37e2bfb",
  "kind": "def",
  "lexical_name": "Impl.floatQMatchPairs",
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
  "slug": "impl-floatqmatchpairs--4c395a8b53dac47b3e1ba340",
  "source": {
    "blob": "5f7bb4818f9a2c77def24c69e69e6872ea14682a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 338,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c395a8b53dac47b3e1ba3406ba8965f53b05ff7cb3465ace21ce154b705ddfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeb6705bb34608c4f1d97fa5ac4ac52531a58ee68c112b2af13d55b4d37e2bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Impl.floatQMatchPairs : Term → StateT (Array (Term × Ident)) MacroM Term
  | `(~q($term)) =>
    withFreshMacroScope do
      let x : Ident ← `(x)
      modify (·.push (term, x))
      `($x)
  | stx => do match stx with
    | ⟨.node i k args⟩ => return ⟨.node i k (← args.mapM (floatQMatchPairs ⟨·⟩))⟩
    | stx => return stx

/-- A floated-out auxiliary binding: `let $name : $type := $value`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f7bb4818f9a2c77def24c69e69e6872ea14682a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
