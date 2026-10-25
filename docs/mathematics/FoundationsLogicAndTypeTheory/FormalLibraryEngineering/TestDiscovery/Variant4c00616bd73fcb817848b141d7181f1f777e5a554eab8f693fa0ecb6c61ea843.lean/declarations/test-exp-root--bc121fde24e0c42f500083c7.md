# test_exp_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55e8fdf-a1da-7e83-e96f-7571953b62f1",
  "kind": "theorem",
  "lexical_name": "test_exp_root",
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
  "slug": "test-exp-root--bc121fde24e0c42f500083c7",
  "source": {
    "blob": "f750735ba240f5db8a629c8113eac5cebe8979db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc121fde24e0c42f500083c7ba3af90b145f3d82b29f0fb81bac6472c9de91aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55e8fdf-a1da-7e83-e96f-7571953b62f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_exp_root : ∃ x ∈ I_0_1,
    Expr.eval (fun _ => x) (Expr.add (Expr.exp (Expr.var 0)) (Expr.neg (Expr.const 2))) = 0 := by
  refine LeanCert.Validity.RootFinding.verify_sign_change _ ?_ _ defaultCfg ?_ ?_
  · exact ExprSupportedCore.add (ExprSupportedCore.exp (ExprSupportedCore.var 0))
      (ExprSupportedCore.neg (ExprSupportedCore.const 2))
  · exact LeanCert.Meta.exprSupportedCore_continuousOn _ (ExprSupportedCore.add
      (ExprSupportedCore.exp (ExprSupportedCore.var 0))
      (ExprSupportedCore.neg (ExprSupportedCore.const 2)))
      (LeanCert.Meta.exprContinuousDomainValid_of_ExprSupported (ExprSupported.add
        (ExprSupported.exp (ExprSupported.var 0))
        (ExprSupported.neg (ExprSupported.const 2))))
  · native_decide

-- Test 5: cos(x) = 0 has a root (π/2 ≈ 1.57)
-- cos(1) ≈ 0.54 > 0, cos(2) ≈ -0.42 < 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f750735ba240f5db8a629c8113eac5cebe8979db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
