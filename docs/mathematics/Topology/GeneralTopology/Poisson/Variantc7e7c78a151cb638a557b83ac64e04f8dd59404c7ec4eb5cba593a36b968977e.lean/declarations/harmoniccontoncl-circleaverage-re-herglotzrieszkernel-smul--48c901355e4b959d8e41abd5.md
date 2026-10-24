# HarmonicContOnCl.circleAverage_re_herglotzRieszKernel_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2940bfab-60b3-32dc-936c-38af89c105c7",
  "kind": "theorem",
  "lexical_name": "HarmonicContOnCl.circleAverage_re_herglotzRieszKernel_smul",
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
  "slug": "harmoniccontoncl-circleaverage-re-herglotzrieszkernel-smul--48c901355e4b959d8e41abd5",
  "source": {
    "blob": "adafd9c56f6ed43efd5d54bdac30205c00e490e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c901355e4b959d8e41abd52de23791ba8586ac0e1fdbce3d28dae4785f415a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2940bfab-60b3-32dc-936c-38af89c105c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HarmonicContOnCl.circleAverage_re_herglotzRieszKernel_smul
    (hf : HarmonicContOnCl f (ball c R)) (hw : w ∈ ball c R) :
    Real.circleAverage ((re ∘ herglotzRieszKernel c w) • f) c R = f w := by
  apply ContinuousOn.eq_of_eqOn_Ioo (r := ‖w - c‖)
  · apply ContinuousOn.circleAverage
    · rw [herglotzRieszKernel_fun_def]
      apply (continuousOn_herglotz_riesz hw).smul (hf.2.mono _)
      grind [closure_ball c (pos_of_mem_ball hw).ne', mem_closedBall_iff_norm]
    · grind [norm_nonneg (w - c)]
  · grind [mem_ball_iff_norm]
  · intro r hr
    rw [HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul
      (hf.1.mono (closedBall_subset_ball hr.2)) (by grind [mem_ball_iff_norm])]

/--
**Poisson integral formula** for harmonic functions on arbitrary disks in the complex plane,
formulated with the Poisson kernel of integration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poisson/Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adafd9c56f6ed43efd5d54bdac30205c00e490e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
