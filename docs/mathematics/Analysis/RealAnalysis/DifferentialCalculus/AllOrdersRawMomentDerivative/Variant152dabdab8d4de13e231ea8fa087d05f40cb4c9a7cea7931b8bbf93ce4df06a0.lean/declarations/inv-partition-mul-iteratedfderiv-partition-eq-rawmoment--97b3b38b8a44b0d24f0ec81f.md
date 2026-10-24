# inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c37475b1-9159-4947-dcc6-c1f4cf37deb2",
  "kind": "theorem",
  "lexical_name": "inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment",
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
  "slug": "inv-partition-mul-iteratedfderiv-partition-eq-rawmoment--97b3b38b8a44b0d24f0ec81f",
  "source": {
    "blob": "8e45c6b0e10243903e077bec55756f2879e6ad1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b3b38b8a44b0d24f0ec81f7b74b6caa6a29f04bb81f69ff9b6e0a03363db4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c37475b1-9159-4947-dcc6-c1f4cf37deb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment
    (n : ℕ)
    (theta : E)
    (directions : Fin n → E) :
    (F.partition theta)⁻¹ *
        iteratedFDeriv ℝ n F.partition theta directions =
      F.rawMomentHierarchy theta n directions := by
  rw [F.iteratedFDeriv_partition_eq_partition_mul_rawMoment]
  rw [← mul_assoc, inv_mul_cancel₀ (ne_of_gt (F.partition_pos theta))]
  simp

/-- Equivalent quotient form of the all-orders raw-moment identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e45c6b0e10243903e077bec55756f2879e6ad1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
