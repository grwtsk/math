# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9cb6c29ae6aa3d4b809d45422581f5a6099a496416ff98323e87f90e25ac470",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a0535e7dbfbc696fcf51f8dd",
  "source": {
    "blob": "5199c8a55a7a4fe319e2ad61ba290e868fc7411a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 291,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0535e7dbfbc696fcf51f8ddf87270339c51bff9a36a89ce69d907da7dc8209c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9cb6c29ae6aa3d4b809d45422581f5a6099a496416ff98323e87f90e25ac470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MetricSpace ℍ :=
  metricSpaceAux.replaceTopology <| by
    refine' le_antisymm (continuous_id_iff_le.1 _) _
    · refine' (@continuous_iff_continuous_dist ℍ ℍ metricSpaceAux.toPseudoMetricSpace _ _).2 _
      have : ∀ x : ℍ × ℍ, 2 * Real.sqrt (x.1.im * x.2.im) ≠ 0 := fun x =>
        mul_ne_zero two_ne_zero (Real.sqrt_pos.2 <| mul_pos x.1.im_pos x.2.im_pos).ne'
      -- `continuity` fails to apply `Continuous.div`
      apply_rules [Continuous.div, Continuous.mul, continuous_const, Continuous.arsinh,
        Continuous.dist, continuous_coe.comp, continuous_fst, continuous_snd,
        Real.continuous_sqrt.comp, continuous_im.comp]
    · letI : MetricSpace ℍ := metricSpaceAux
      refine' le_of_nhds_le_nhds fun z => _
      rw [nhds_induced]
      refine' (nhds_basis_ball.le_basis_iff (nhds_basis_ball.comap _)).2 fun R hR => _
      have h₁ : 1 < R / im z + 1 := lt_add_of_pos_left _ (div_pos hR z.im_pos)
      have h₀ : 0 < R / im z + 1 := one_pos.trans h₁
      refine' ⟨log (R / im z + 1), Real.log_pos h₁, _⟩
      refine' fun w hw => (dist_coe_le w z).trans_lt _
      rwa [← lt_div_iff' z.im_pos, sub_lt_iff_lt_add, ← Real.lt_log_iff_exp_lt h₀]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5199c8a55a7a4fe319e2ad61ba290e868fc7411a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
