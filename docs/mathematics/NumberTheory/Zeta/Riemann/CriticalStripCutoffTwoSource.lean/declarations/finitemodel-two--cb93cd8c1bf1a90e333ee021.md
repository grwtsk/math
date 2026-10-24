# finiteModel_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a07d2be-4cf7-8af3-6ee7-67f9fa30cae0",
  "kind": "theorem",
  "lexical_name": "finiteModel_two",
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
  "slug": "finitemodel-two--cb93cd8c1bf1a90e333ee021",
  "source": {
    "blob": "707808984bfd819e6237f65cbdfc936d8c0a6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb93cd8c1bf1a90e333ee021d1bee5ef7da4e4dbd5d3a9e142f74381118d385d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a07d2be-4cf7-8af3-6ee7-67f9fa30cae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteModel_two (s : ℂ) : finiteModel 2 s = (s-1) + power s*coefficient s := by
  have h1 := negative_shift s 1
  have h3 := negative_shift s 3
  have h5 := negative_shift s 5
  norm_num only [Nat.cast_one, Nat.cast_ofNat] at h1 h3 h5
  have hend : (2 : ℂ) ^ (1-s) = 2*power s := by
    rw [show 1-s = (1 : ℂ) + -s by ring,
      Complex.cpow_add _ _ (by norm_num : (2 : ℂ) ≠ 0), Complex.cpow_one]
    rfl
  have hsum : finiteDirichletPowerSum 2 s = 1+power s := by
    rw [finiteDirichletPowerSum, show Finset.Icc (1 : ℕ) 2 = {1,2} from by decide]
    simp [power]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  norm_num only [Nat.cast_ofNat]
  rw [hsum, hend, h1, h3, h5]
  unfold power coefficient
  ring

/-- The exact residual remains attached to the existing sextic tail at cutoff two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707808984bfd819e6237f65cbdfc936d8c0a6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
