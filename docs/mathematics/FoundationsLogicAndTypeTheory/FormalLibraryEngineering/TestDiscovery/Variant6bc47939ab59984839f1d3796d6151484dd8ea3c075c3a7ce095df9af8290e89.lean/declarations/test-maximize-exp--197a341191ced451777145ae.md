# test_maximize_exp

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
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99eb8246-59f8-332e-4e6c-4907410222d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56002634-1e5a-3d50-3011-dcc3422391fa",
  "kind": "theorem",
  "lexical_name": "test_maximize_exp",
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
  "slug": "test-maximize-exp--197a341191ced451777145ae",
  "source": {
    "blob": "4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:197a341191ced451777145ae63eb4fe50c42e366e3c2cb092940c59de29e7ad0",
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

Occurrence: `result:56002634-1e5a-3d50-3011-dcc3422391fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_maximize_exp : ∃ M : ℚ, ∀ x ∈ I_0_1,
    Expr.eval (fun _ => x) (Expr.exp (Expr.var 0)) ≤ M := by
  interval_maximize

/-! ## #explore Command Tests

The `#explore` command analyzes a function on an interval and reports:
- Range bounds (min/max)
- Sign change detection (root existence)
-/

-- Explore x² on [-1, 1]: range is [0, 1], no sign change
#explore (Expr.mul (Expr.var 0) (Expr.var 0)) on [-1, 1]

-- Explore sin(x) on [0, 7]: range is approximately [-1, 1], has sign changes
#explore (Expr.sin (Expr.var 0)) on [0, 7]

-- Explore x² - 2 on [1, 2]: has sign change (√2 exists)
#explore (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))) on [1, 2]

-- Explore exp(x) on [0, 1]: range is [1, e], no sign change (always positive)
#explore (Expr.exp (Expr.var 0)) on [0, 1]

-- Explore cos(x) on [0, 4]: has sign change (π/2 ≈ 1.57 root)
#explore (Expr.cos (Expr.var 0)) on [0, 4]

-- Explore x on [-2, 2]: has sign change at 0
#explore (Expr.var 0) on [-2, 2]

/-! ## interval_unique_root Tests

The `interval_unique_root` tactic proves `∃! x ∈ I, f(x) = 0` by:
1. Checking Newton iteration contracts (derivative bounded away from 0)
2. Using Rolle's theorem for uniqueness
3. Using IVT for existence (via contraction)

NOTE: These tests require the theorem with a `sorry` for the existence part.
The tactic will work at runtime but the proof contains `sorry`.
-/

-- Test 1: √2 is unique root of x² - 2 on [1, 2]
-- f'(x) = 2x ≥ 2 > 0 on [1,2], so strictly monotonic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
