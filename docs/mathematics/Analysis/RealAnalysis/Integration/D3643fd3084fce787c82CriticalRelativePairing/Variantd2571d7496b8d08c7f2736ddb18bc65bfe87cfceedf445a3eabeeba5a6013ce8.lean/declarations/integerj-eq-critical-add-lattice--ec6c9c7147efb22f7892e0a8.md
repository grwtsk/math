# integerJ_eq_critical_add_lattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:163a3c41-2aee-3675-64ab-d19fe0ce021e",
  "kind": "theorem",
  "lexical_name": "integerJ_eq_critical_add_lattice",
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
  "slug": "integerj-eq-critical-add-lattice--ec6c9c7147efb22f7892e0a8",
  "source": {
    "blob": "0a99ef4f8897c2e38c12981ed6a85a8e6007a113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec6c9c7147efb22f7892e0a8c3c3467688e7b939dc070afe208381c60cb5234f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163a3c41-2aee-3675-64ab-d19fe0ce021e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerJ_eq_critical_add_lattice {A : ℝ} (hA : 1 ≤ A) :
    integerJ A = criticalRelativePairing A + latticePairing A := by
  rw [actual_log_stieltjes hA, ← integral_neg]
  have he : (fun t => -signedLogKernel A t) =
      (fun t => criticalKernel A t + latticeKernel A t) :=
    funext (kernel_exact_decomposition A)
  rw [he, integral_add (criticalKernel_integrable hA) (latticeKernel_integrable hA)]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a99ef4f8897c2e38c12981ed6a85a8e6007a113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
