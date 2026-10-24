# source_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7befc5fc-cf9b-34b8-03ee-dd19d9f92a2b",
  "kind": "theorem",
  "lexical_name": "source_error",
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
  "slug": "source-error--ea23f19a3432266bbe18dd57",
  "source": {
    "blob": "cdac2fc55af87acb9c2b6a8e98e532d574978a1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea23f19a3432266bbe18dd57a592694ee4179a7911fed644104a728f6bccd039",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7befc5fc-cf9b-34b8-03ee-dd19d9f92a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_error {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ} {B : ℝ}
    (hs : 0 < s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - model N (p + 1) s‖ ≤
      ‖s - 1‖ * ((∏ j ∈ Finset.range (2 * (p + 1)), (B + (j : ℝ))) /
        ((2 * (p + 1)).factorial : ℝ) *
        ((GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli.majorant (2 * (p + 1)) : ℝ) /
          (((2 * (p + 1) - 1 : ℕ) : ℝ) * (N : ℝ) ^ (2 * (p + 1) - 1)))) := by
  rw [source_residual hN p hs, norm_mul]
  exact mul_le_mul_of_nonneg_left
    (PeriodicBernoulliMellin.remainder_norm_le_nat (by omega)
      (by exact_mod_cast hN) hs.le hB) (norm_nonneg _)

/-- A uniform normalized-source remainder transports to the derivative even on
a disk containing one. The finite model AND the actual source are entire. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdac2fc55af87acb9c2b6a8e98e532d574978a1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
