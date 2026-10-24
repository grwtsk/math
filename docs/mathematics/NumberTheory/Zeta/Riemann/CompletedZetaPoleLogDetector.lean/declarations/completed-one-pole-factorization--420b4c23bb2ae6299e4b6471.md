# completed_one_pole_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2fb51f2-f5ad-4864-b3ff-b7f31a7475ec",
  "kind": "theorem",
  "lexical_name": "completed_one_pole_factorization",
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
  "slug": "completed-one-pole-factorization--420b4c23bb2ae6299e4b6471",
  "source": {
    "blob": "eac118be2215d95e026dbaa78eeb4559dfcde0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:420b4c23bb2ae6299e4b647122589353ad1a799b3e38922d4d4f8f341c414977",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2fb51f2-f5ad-4864-b3ff-b7f31a7475ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_one_pole_factorization :
    completedRiemannZeta =ᶠ[𝓝[≠] (1 : ℂ)] fun s => (s - 1) ^ (-1 : ℤ) * onePoleUnit s := by
  have hn : ∀ᶠ s in 𝓝 (1 : ℂ), s ≠ 0 := by
    change ({0}ᶜ : Set ℂ) ∈ 𝓝 (1 : ℂ)
    exact compl_singleton_mem_nhds (by norm_num : (1 : ℂ) ≠ 0)
  have hother : ∀ᶠ s in 𝓝[≠] (1 : ℂ), s ≠ 0 := hn.filter_mono nhdsWithin_le_nhds
  filter_upwards [self_mem_nhdsWithin, hother] with s hs hs0
  have hs1 : s ≠ 1 := by simpa using hs
  rw [completedRiemannZeta_eq, zpow_neg_one]
  unfold onePoleUnit
  field_simp [hs0, sub_ne_zero.mpr hs1, sub_ne_zero.mpr (Ne.symm hs1)]
  ring

/-- The actual completed source is meromorphic of signed order −1 at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eac118be2215d95e026dbaa78eeb4559dfcde0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
