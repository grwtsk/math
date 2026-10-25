# test_x_root

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
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:719202cf-5f54-a1c9-9724-ad9c06f1969e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d19fe01-d529-041d-d34a-482f808229a7",
  "kind": "theorem",
  "lexical_name": "test_x_root",
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
  "slug": "test-x-root--6ac5793c4ba5dd8a064ab54b",
  "source": {
    "blob": "4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac5793c4ba5dd8a064ab54b3393ccb0c29504efbf229fcb524ccfc1ccf17259",
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

Occurrence: `result:7d19fe01-d529-041d-d34a-482f808229a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_x_root : ∃ x ∈ I_neg1_1, Expr.eval (fun _ => x) (Expr.var 0) = 0 := by
  -- Manual application to verify the theorem works
  refine LeanCert.Validity.RootFinding.verify_sign_change _ ?_ _ defaultCfg ?_ ?_
  · exact ExprSupportedCore.var 0
  · exact LeanCert.Meta.exprSupportedCore_continuousOn (Expr.var 0) (ExprSupportedCore.var 0)
      (LeanCert.Meta.exprContinuousDomainValid_of_ExprSupported (ExprSupported.var 0))
  · native_decide

-- Test 2: x² - 2 = 0 has a root on [1, 2] (f(1) = -1 < 0, f(2) = 2 > 0)
-- This proves √2 exists!
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
