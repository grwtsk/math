# exp_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbdd2d47b2001ad40b53c770108404f4fdd5c2ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccc623defc1411da5f9a14890bc4b09bfd59bd14aa687e8f2d1ead4dd04f26a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:394afb83-152a-4d71-9e43-07a56ec2c3e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:014ca1b5-4a03-aba9-a8a9-591a882ae6ef",
  "kind": "theorem",
  "lexical_name": "exp_bounded",
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
  "slug": "exp-bounded--0129917c4e34cffad3a27820",
  "source": {
    "blob": "fbdd2d47b2001ad40b53c770108404f4fdd5c2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variantccc623defc1411da5f9a14890bc4b09bfd59bd14aa687e8f2d1ead4dd04f26a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0129917c4e34cffad3a27820ec88e48e3bcb68011f421d7b88a184d7bf7c68a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variantccc623defc1411da5f9a14890bc4b09bfd59bd14aa687e8f2d1ead4dd04f26a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:014ca1b5-4a03-aba9-a8a9-591a882ae6ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_bounded : ∀ x ∈ I01', Expr.eval (fun _ => x) exprExp ≤ (3 : ℚ) :=
  verify_upper_bound exprExp exprExp_core I01' 3 { taylorDepth := 10 } (by native_decide)

-- ============================================================================
-- Section: Discovery Commands (README lines 78-86)
-- ============================================================================

-- Find global minimum (interactive command - just test it compiles)
#minimize (fun x => x^2 + Real.sin x) on [-2, 2]

-- Explore function behavior (interactive command)
#explore (Expr.cos (Expr.var 0)) on [0, 4]

-- ============================================================================
-- Section: Neural Network (README lines 198-211)
-- ============================================================================

open LeanCert.ML

-- Define a 2-layer network
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variantccc623defc1411da5f9a14890bc4b09bfd59bd14aa687e8f2d1ead4dd04f26a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variantccc623defc1411da5f9a14890bc4b09bfd59bd14aa687e8f2d1ead4dd04f26a2.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbdd2d47b2001ad40b53c770108404f4fdd5c2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
