# test_sin_root

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
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84393718-d2fe-fa98-7748-9bcde2e114bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25f561b1-3fbd-9761-02ab-b3098a1dac93",
  "kind": "theorem",
  "lexical_name": "test_sin_root",
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
  "slug": "test-sin-root--76ee23bdba6662093f62d4e1",
  "source": {
    "blob": "4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ee23bdba6662093f62d4e117003adb1e621c8ddf1b5b57eca3c1b125555538",
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

Occurrence: `result:25f561b1-3fbd-9761-02ab-b3098a1dac93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_sin_root : ∃ x ∈ I_3_4, Expr.eval (fun _ => x) (Expr.sin (Expr.var 0)) = 0 := by
  refine LeanCert.Validity.RootFinding.verify_sign_change _ ?_ _ defaultCfg ?_ ?_
  · exact ExprSupportedCore.sin (ExprSupportedCore.var 0)
  · exact LeanCert.Meta.exprSupportedCore_continuousOn _ (ExprSupportedCore.sin (ExprSupportedCore.var 0))
      (LeanCert.Meta.exprContinuousDomainValid_of_ExprSupported (ExprSupported.sin (ExprSupported.var 0)))
  · native_decide

-- Test 4: exp(x) - 2 = 0 has a root (ln(2) ≈ 0.693)
-- f(0) = 1 - 2 = -1 < 0, f(1) = e - 2 ≈ 0.718 > 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
