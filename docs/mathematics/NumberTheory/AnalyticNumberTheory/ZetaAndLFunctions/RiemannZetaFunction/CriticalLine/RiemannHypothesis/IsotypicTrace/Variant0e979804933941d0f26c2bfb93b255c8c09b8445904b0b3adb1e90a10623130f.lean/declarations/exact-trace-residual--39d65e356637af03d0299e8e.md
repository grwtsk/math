# exact_trace_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11caf428-ab2c-44a3-cc36-ff73cd9bac20",
  "kind": "theorem",
  "lexical_name": "exact_trace_residual",
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
  "slug": "exact-trace-residual--39d65e356637af03d0299e8e",
  "source": {
    "blob": "6248c977585be64cdcd9e1d06e3f13e10e5a5a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d65e356637af03d0299e8e0d07396d6e3d5eddd4d3d1ad6b059f9d429c44de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11caf428-ab2c-44a3-cc36-ff73cd9bac20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_trace_residual {G V : Type*} [Group G] [Fintype G]
    [AddCommGroup V] [Module ℂ V] (rho : G →* Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ)
    (chi : G →* ℂ) (hchi : ∃ h, chi h ≠ 1) (v : V) :
    ell (orbitTrace rho v) = ∑ g, readoutResidual rho ell chi v g := by
  have hs : (∑ g, chi g) = 0 := by
    obtain ⟨h, hh⟩ := hchi
    exact scalar_covariant_trace_zero chi chi hh (fun g ↦ chi.map_mul h g)
  unfold orbitTrace readoutResidual
  rw [map_sum, Finset.sum_sub_distrib, ← Finset.sum_mul, hs, zero_mul, sub_zero]

/-- Approximate equivariance pays every retained group residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6248c977585be64cdcd9e1d06e3f13e10e5a5a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
