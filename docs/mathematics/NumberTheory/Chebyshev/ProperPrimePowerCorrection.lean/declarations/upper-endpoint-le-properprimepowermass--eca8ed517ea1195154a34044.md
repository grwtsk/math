# upper_endpoint_le_properPrimePowerMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f9d4c58-fd6f-76e2-0009-daa1ce316d6b",
  "kind": "theorem",
  "lexical_name": "upper_endpoint_le_properPrimePowerMass",
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
  "slug": "upper-endpoint-le-properprimepowermass--eca8ed517ea1195154a34044",
  "source": {
    "blob": "f0608838559f5b7cac636f47b233c385eb9d97fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eca8ed517ea1195154a340445059a78930c129b3098fd4b73df579b99b6319ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f9d4c58-fd6f-76e2-0009-daa1ce316d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_endpoint_le_properPrimePowerMass (a b : ℕ) (hab : a < b)
    (hb : ¬ Nat.Prime b) :
    ArithmeticFunction.vonMangoldt b ≤ properPrimePowerMass a b := by
  unfold properPrimePowerMass
  apply Finset.single_le_sum (f := fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℝ))
    (fun _ _ => ArithmeticFunction.vonMangoldt_nonneg)
  exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hab, le_rfl⟩, hb⟩

/-- If n+1 is prime, its square contributes log(n+1) at the closed upper endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0608838559f5b7cac636f47b233c385eb9d97fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
