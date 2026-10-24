# model_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eccf423-2c6e-bc8a-4b52-6e512fb0d86f",
  "kind": "theorem",
  "lexical_name": "model_integral",
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
  "slug": "model-integral--34fadb370326f9fda5360d12",
  "source": {
    "blob": "8334ab2bdf2b2b40366934bcfc5d46fa935c6e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34fadb370326f9fda5360d12448c995d11ca65bc35ef887bf0b34da8982467de",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eccf423-2c6e-bc8a-4b52-6e512fb0d86f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_integral {T q : ℝ} (hT : 0 ≤ T) (hq : -1 < q) :
    (∫ u in Ioc 0 T, (1 + u) ^ q) =
      ((1 + T) ^ (q + 1) - 1) / (q + 1) := by
  rw [← intervalIntegral.integral_of_le hT]
  calc
    (∫ u in (0 : ℝ)..T, (1 + u) ^ q) =
        ∫ u in (0 : ℝ)..T, (u + 1) ^ q := by
      congr 1
      funext u
      rw [add_comm]
    _ = ∫ u in (0 + 1 : ℝ)..(T + 1), u ^ q :=
      intervalIntegral.integral_comp_add_right (fun u : ℝ ↦ u ^ q) 1
    _ = ((1 + T) ^ (q + 1) - 1) / (q + 1) := by
      rw [integral_rpow (Or.inl hq)]
      simp only [zero_add, Real.one_rpow, add_comm T 1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8334ab2bdf2b2b40366934bcfc5d46fa935c6e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
