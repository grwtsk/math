# wiggle_bounded_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7d8641349b62a7d624313c43a990daa54fa872b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:832de28c-9a8b-a71b-59e5-e75f791b3d78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e22bea9b-ed4e-dc0f-fb0c-8a72adcbbd58",
  "kind": "theorem",
  "lexical_name": "wiggle_bounded_below",
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
  "slug": "wiggle-bounded-below--0ba42c96cfff365d727d5c84",
  "source": {
    "blob": "c7d8641349b62a7d624313c43a990daa54fa872b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba42c96cfff365d727d5c84b1851e58b8b80d3912deb35399695220d9e8d9d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e22bea9b-ed4e-dc0f-fb0c-8a72adcbbd58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wiggle_bounded_below :
    ∀ x ∈ I_wiggle, (-1 : ℚ) ≤ Expr.eval (fun _ => x) exprWiggle := by
  interval_ge exprWiggle, exprWiggle_core, I_wiggle, (-1)

/-! ## 7. Type Safety of IntervalRat

The `IntervalRat` structure requires `lo ≤ hi` as a field, so invalid intervals
cannot be constructed. This is proven by the type system itself.
-/

-- This demonstrates that IntervalRat is always valid by construction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7d8641349b62a7d624313c43a990daa54fa872b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
