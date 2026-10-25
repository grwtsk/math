# test_opt_xsq_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4621594-0a94-14c8-62e6-cf7876a0567b",
  "kind": "theorem",
  "lexical_name": "test_opt_xsq_le_one",
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
  "slug": "test-opt-xsq-le-one--01610fceae162f3a04afbd4d",
  "source": {
    "blob": "61bddb4cb8b1b3c47c1462c74dad89a8fea1387d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01610fceae162f3a04afbd4dbf1a457df3888c10e327f6d2ecbcb41c669cfb1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4621594-0a94-14c8-62e6-cf7876a0567b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_opt_xsq_le_one : ∀ ρ, Box.envMem ρ B01 → (∀ i, i ≥ B01.length → ρ i = 0) →
    Expr.eval ρ (Expr.mul (Expr.var 0) (Expr.var 0)) ≤ (1 : ℚ) :=
  verify_global_upper_bound
    (Expr.mul (Expr.var 0) (Expr.var 0))
    (ExprSupported.mul (ExprSupported.var 0) (ExprSupported.var 0))
    B01 1 ⟨1000, 1/1000, false, 10⟩
    (by native_decide)

-- Example: Using verify_global_lower_bound manually for 0 ≤ x²
open LeanCert.Engine.Optimization in
open LeanCert.Validity.GlobalOpt in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant70f2f3c53ae5e27af3482ebc1434156becaba7420577b518eeeba57bcb3bfc33.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61bddb4cb8b1b3c47c1462c74dad89a8fea1387d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
