# first_square_upper_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cc2cefe-2c25-a2db-63cf-b8e5e2e45446",
  "kind": "theorem",
  "lexical_name": "first_square_upper_correction",
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
  "slug": "first-square-upper-correction--c2a715a7d85278ab186b141c",
  "source": {
    "blob": "8134904a6da6686ac7dff6008676d79e3f877fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a715a7d85278ab186b141cf30c2e6ad0f65be87f3e63ecd5ee1906ba1d88bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc2cefe-2c25-a2db-63cf-b8e5e2e45446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_square_upper_correction : properPrimePowerMass 1 4 = Real.log 2 := by
  have hi : Finset.Ioc (1 : ℕ) 4 = {2, 3, 4} := by decide
  have h2 : Nat.Prime 2 := by decide
  have h3 : Nat.Prime 3 := by decide
  have h4 : ¬ Nat.Prime 4 := by decide
  have hv : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
    simpa using
      (ArithmeticFunction.vonMangoldt_apply_pow (n := 2) (k := 2) (by decide)).trans
        (ArithmeticFunction.vonMangoldt_apply_prime h2)
  simp [properPrimePowerMass, hi, h2, h3, h4, hv]

/-- Omitting that upper endpoint strictly decreases the proper-power inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/Checks/PrimePowerMarginControls.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8134904a6da6686ac7dff6008676d79e3f877fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
