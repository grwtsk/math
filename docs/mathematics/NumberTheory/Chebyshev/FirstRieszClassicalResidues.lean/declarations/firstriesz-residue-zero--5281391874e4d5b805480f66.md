# firstRiesz_residue_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:911e7176-3f6a-9f31-33ba-29df556f6ef5",
  "kind": "theorem",
  "lexical_name": "firstRiesz_residue_zero",
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
  "slug": "firstriesz-residue-zero--5281391874e4d5b805480f66",
  "source": {
    "blob": "40ef73391cf122ae4cabf330377dc8e72849137c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5281391874e4d5b805480f6617cf201b72cb047c55e25f1d9f96f9d957bb3e34",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:911e7176-3f6a-9f31-33ba-29df556f6ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstRiesz_residue_zero (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * (-logDeriv riemannZeta s * firstRieszKernel x s))
      (𝓝[≠] 0) (𝓝 (-(x : ℂ) * Complex.log (2 * Real.pi))) := by
  have hp : logPower x (1 : ℂ) = (x : ℂ) := by
    simpa [logPower] using exp_real_log hx
  have hc : ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s * logPower x (s + 1) / (s + 1)) 0 :=
    (continuousAt_neg_logDeriv_zero.mul (by unfold logPower; fun_prop)).div
      (by fun_prop) (by norm_num)
  have hl := hc.tendsto.mono_left (show 𝓝[≠] (0 : ℂ) ≤ 𝓝 0 from nhdsWithin_le_nhds)
  have he : (fun s : ℂ => s * (-logDeriv riemannZeta s * firstRieszKernel x s)) =ᶠ[𝓝[≠] 0]
      (fun s : ℂ => -logDeriv riemannZeta s * logPower x (s + 1) / (s + 1)) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    have hs0 : s ≠ 0 := hs
    dsimp [firstRieszKernel]
    field_simp
  simpa only [zero_add, hp, div_one, logDeriv_riemannZeta_zero, mul_comm, neg_mul, mul_neg] using hl.congr' he.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ef73391cf122ae4cabf330377dc8e72849137c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
