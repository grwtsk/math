# test_argmax_native_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32795e34e3b81cee663c84e644086d6bfbe6db96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2194aeb2-58fa-d48d-6a6c-53a1fdb27339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b01f2de2-333f-b9ae-fd53-10ef509e651a",
  "kind": "theorem",
  "lexical_name": "test_argmax_native_linear",
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
  "slug": "test-argmax-native-linear--0daeb9b477fae538f2d3687d",
  "source": {
    "blob": "32795e34e3b81cee663c84e644086d6bfbe6db96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0daeb9b477fae538f2d3687da5db40ac5707416a9d239ec0f411acb9e0b6be02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b01f2de2-333f-b9ae-fd53-10ef509e651a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_argmax_native_linear : ∃ x ∈ Set.Icc (0 : ℝ) 1, ∀ y ∈ Set.Icc (0 : ℝ) 1,
    2 * y + 1 ≤ 2 * x + 1 := by
  interval_argmax

-- Note: interval_argmax with transcendental functions (sin, exp) may require
-- higher Taylor depth due to interval arithmetic precision. For such cases,
-- consider using interval_maximize instead to prove the bound exists.

/-! ### `interval_argmin` - Find argmin point

Proves ∃ x ∈ I, ∀ y ∈ I, f(x) ≤ f(y) by finding the minimizer and using
transitivity via a concrete bound.

NOTE: interval_argmin works best when the argmin is at a rational point that
the optimizer can find exactly (e.g., interval endpoints for monotonic functions).
-/

-- Simple linear: min of x on [0, 1] (argmin at x=0)
-- Using Expr AST syntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32795e34e3b81cee663c84e644086d6bfbe6db96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
