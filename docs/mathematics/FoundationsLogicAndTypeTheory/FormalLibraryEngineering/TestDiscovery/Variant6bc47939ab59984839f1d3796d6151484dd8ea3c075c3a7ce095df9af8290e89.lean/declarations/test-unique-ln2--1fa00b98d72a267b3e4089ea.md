# test_unique_ln2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33480ddc-1810-9fa4-0ba3-0c9412960cab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9f7b89e-7451-3a70-8874-3826821ac2dc",
  "kind": "theorem",
  "lexical_name": "test_unique_ln2",
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
  "slug": "test-unique-ln2--1fa00b98d72a267b3e4089ea",
  "source": {
    "blob": "4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fa00b98d72a267b3e4089ea7c84b280fa3ed65312d6dcc67b6a05d86ac1181f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9f7b89e-7451-3a70-8874-3826821ac2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_unique_ln2 : ∃! x, x ∈ I_0_1 ∧
    Expr.eval (fun _ => x) (Expr.add (Expr.exp (Expr.var 0)) (Expr.neg (Expr.const 2))) = 0 := by
  interval_unique_root

-- NOTE: Tests for sin(x)=0 on [3,4] and cos(x)=0 on [1,2] are commented out because
-- the Newton contraction check fails on these wider intervals (the tactic needs tighter
-- initial brackets for transcendental functions).
-- The interval arithmetic is sound, but these intervals are too wide for single-step contraction.

/-! ## interval_integrate Tests

The `interval_integrate` tactic proves goals of the form `∫ x in lo..hi, f(x) ∈ bound`
where the bound is computed via interval arithmetic.
-/

-- Test 1: ∫_0^1 x dx = 1/2, should be in [0, 1] (conservative bound)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
