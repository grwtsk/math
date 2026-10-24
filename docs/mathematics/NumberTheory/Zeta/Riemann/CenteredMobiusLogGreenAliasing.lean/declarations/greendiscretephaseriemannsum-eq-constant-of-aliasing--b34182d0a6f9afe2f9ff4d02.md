# greenDiscretePhaseRiemannSum_eq_constant_of_aliasing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f17f6c5-35a1-f42f-e4c0-0c42791c1b3c",
  "kind": "theorem",
  "lexical_name": "greenDiscretePhaseRiemannSum_eq_constant_of_aliasing",
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
  "slug": "greendiscretephaseriemannsum-eq-constant-of-aliasing--b34182d0a6f9afe2f9ff4d02",
  "source": {
    "blob": "c1b0c8dcef46994b8ad07b035be53a2dc62b994b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b34182d0a6f9afe2f9ff4d02e91ecb64dd8d2b1a7452e236a670386b136b313e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f17f6c5-35a1-f42f-e4c0-0c42791c1b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenDiscretePhaseRiemannSum_eq_constant_of_aliasing
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hk : GreenMeshAliasing X k) :
    greenDiscretePhaseRiemannSum X k =
      ∑ j ∈ Finset.Icc 1 X,
        ((1 / (X : ℝ) : ℝ) : ℂ) *
          ((1 : ℂ) / (1 + (greenRightMeshPoint X j : ℂ))) := by
  unfold greenDiscretePhaseRiemannSum
  apply Finset.sum_congr rfl
  intro j _
  rw [fourier_mesh_eq_one_of_aliasing hX hk j]

/-- The aliasing phase residual minus constant residual is purely the
difference of the two continuum integrals; the discrete mesh terms cancel
exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b0c8dcef46994b8ad07b035be53a2dc62b994b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
