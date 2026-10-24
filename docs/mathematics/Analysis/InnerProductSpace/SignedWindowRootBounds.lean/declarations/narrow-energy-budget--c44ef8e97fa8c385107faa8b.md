# narrow_energy_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09fdc08a-89c5-c9b8-37cf-8966cf4b9b2f",
  "kind": "theorem",
  "lexical_name": "narrow_energy_budget",
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
  "slug": "narrow-energy-budget--c44ef8e97fa8c385107faa8b",
  "source": {
    "blob": "e9722238202ea6a32049e45d036a9d1e60cf9af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44ef8e97fa8c385107faa8be6042b516e641a0dbcd78d2f1c55fbce9d818649",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedWindowRootBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09fdc08a-89c5-c9b8-37cf-8966cf4b9b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem narrow_energy_budget {b T childBudget : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) (hchild : packetEnergy cert.child ≤ childBudget) :
    packetEnergy parent ≤
      (Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget)^2 := by
  have ht := narrow_root_transport cert
  have hm := Real.sqrt_le_sqrt
    (mul_le_mul_of_nonneg_left hchild cert.transport_nonnegative)
  have hroot : Real.sqrt (packetEnergy parent) ≤
      Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget := by linarith
  have he := Real.sq_sqrt (packetEnergy_nonnegative parent)
  have hn := Real.sqrt_nonneg (packetEnergy parent)
  have hb : 0 ≤ Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget := by positivity
  nlinarith

/-- A derivation using the original broad certificates and the sharper narrow ledger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedWindowRootBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9722238202ea6a32049e45d036a9d1e60cf9af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
