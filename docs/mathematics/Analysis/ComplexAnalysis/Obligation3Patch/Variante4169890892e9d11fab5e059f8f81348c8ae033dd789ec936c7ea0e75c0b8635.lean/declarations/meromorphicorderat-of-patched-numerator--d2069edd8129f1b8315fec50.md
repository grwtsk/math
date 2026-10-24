# meromorphicOrderAt_of_patched_numerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f73d2cc6-09cb-e13e-e1bc-b508ad2d4e06",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_of_patched_numerator",
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
  "slug": "meromorphicorderat-of-patched-numerator--d2069edd8129f1b8315fec50",
  "source": {
    "blob": "f131e0ceaa9d64567f65da0488c399f89e37716a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2069edd8129f1b8315fec50c1c8380681ec801507f25777dcea13893b7d7d60",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f73d2cc6-09cb-e13e-e1bc-b508ad2d4e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicOrderAt_of_patched_numerator {f H : ℂ → ℂ}
    (hH : AnalyticAt ℂ H 0) (hH0 : H 0 ≠ 0)
    (heq : ∀ᶠ w in 𝓝[≠] (0 : ℂ), f w = H w / w ^ 9) :
    meromorphicOrderAt f 0 = (-9 : ℤ) := by
  apply (meromorphicOrderAt_eq_int_iff (meromorphicAt_of_patched_numerator hH heq)).mpr
  refine ⟨H, hH, hH0, ?_⟩
  filter_upwards [heq] with w hw
  rw [hw]
  simp [smul_eq_mul, zpow_neg, div_eq_mul_inv, mul_comm]

/-- A nonzero cleared limit and punctured holomorphy give a patched analytic unit and exact order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f131e0ceaa9d64567f65da0488c399f89e37716a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
