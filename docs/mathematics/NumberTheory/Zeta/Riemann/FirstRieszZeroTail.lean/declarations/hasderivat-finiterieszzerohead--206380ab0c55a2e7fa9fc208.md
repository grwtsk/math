# hasDerivAt_finiteRieszZeroHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82ff9ca6-916b-978e-b043-158b880c4f1f",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_finiteRieszZeroHead",
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
  "slug": "hasderivat-finiterieszzerohead--206380ab0c55a2e7fa9fc208",
  "source": {
    "blob": "b69a61ac7b21eda82d7264213ce9b7bc4724a33e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:206380ab0c55a2e7fa9fc2084caf25ccd298d6ab7720ac66bec847ea2d9e9037",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82ff9ca6-916b-978e-b043-158b880c4f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_finiteRieszZeroHead (x T : ℝ) (hx : 0 < x) :
    HasDerivAt (fun t => finiteRieszZeroHead t T) (finiteHeightZeroHead x T) x := by
  have hρ1 (z : ZeroPoint) : z.1 + 1 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    have hs := (point_mem_strip z).1
    simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
    linarith
  have hd := (HasDerivAt.sum (u := heightHead T) (fun z _ =>
      (hasDerivAt_firstRieszZeroKernel x hx z.1 z.2.ne_zero (hρ1 z)).const_mul
        (multiplicity z : ℂ))).neg
  convert! hd using 1
  funext t
  simp [finiteRieszZeroHead, Finset.sum_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b69a61ac7b21eda82d7264213ce9b7bc4724a33e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
