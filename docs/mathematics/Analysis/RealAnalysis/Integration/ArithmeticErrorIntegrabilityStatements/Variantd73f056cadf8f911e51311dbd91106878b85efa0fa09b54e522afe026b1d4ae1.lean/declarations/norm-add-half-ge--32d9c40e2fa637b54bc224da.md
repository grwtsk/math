# norm_add_half_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80da45f1-001a-204c-2f59-107130e159a3",
  "kind": "theorem",
  "lexical_name": "norm_add_half_ge",
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
  "slug": "norm-add-half-ge--32d9c40e2fa637b54bc224da",
  "source": {
    "blob": "6bc109d05a61ddb83b3e72440c5e83826a0a27e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variantd73f056cadf8f911e51311dbd91106878b85efa0fa09b54e522afe026b1d4ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d9c40e2fa637b54bc224da000462db9d8ae0b32a87da0740e463dc21073492",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variantd73f056cadf8f911e51311dbd91106878b85efa0fa09b54e522afe026b1d4ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80da45f1-001a-204c-2f59-107130e159a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_add_half_ge (w : ℂ) (hw : 0 ≤ w.re) : ‖w‖ ≤ ‖w + 1/2‖ := by
  have h0 : ‖w‖^2 = w.re^2 + w.im^2 := by
    rw [← Complex.normSq_eq_norm_sq]
    simp [Complex.normSq_apply, pow_two]
  have h1 : ‖w + 1/2‖^2 = (w.re + 1/2)^2 + w.im^2 := by
    rw [← Complex.normSq_eq_norm_sq]
    simp [Complex.normSq_apply, pow_two]
  nlinarith [norm_nonneg w, norm_nonneg (w + 1/2)]

/-- The actual reduced filter has an explicit fourth-power lower bound outside the finite disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variantd73f056cadf8f911e51311dbd91106878b85efa0fa09b54e522afe026b1d4ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityStatements/Variantd73f056cadf8f911e51311dbd91106878b85efa0fa09b54e522afe026b1d4ae1.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bc109d05a61ddb83b3e72440c5e83826a0a27e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
