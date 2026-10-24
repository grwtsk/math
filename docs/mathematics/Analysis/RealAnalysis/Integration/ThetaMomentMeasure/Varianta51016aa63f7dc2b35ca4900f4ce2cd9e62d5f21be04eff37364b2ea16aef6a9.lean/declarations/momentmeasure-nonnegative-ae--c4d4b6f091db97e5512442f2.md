# momentMeasure_nonnegative_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75683688-ad4e-9401-6de1-17b9cabbefd6",
  "kind": "theorem",
  "lexical_name": "momentMeasure_nonnegative_ae",
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
  "slug": "momentmeasure-nonnegative-ae--c4d4b6f091db97e5512442f2",
  "source": {
    "blob": "80507dd15d009639e0d9e17caf34246efb511f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d4b6f091db97e5512442f28e96dd03d79d5cbfa9b87701dc9f71df6d25a85d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75683688-ad4e-9401-6de1-17b9cabbefd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentMeasure_nonnegative_ae (t : ℝ) : ∀ᵐ x ∂momentMeasure t, 0 ≤ x := by
  unfold momentMeasure
  apply (ae_map_iff (f := fun u : ℝ => u - t)
    (measurable_id.sub_const t).aemeasurable (p := fun x : ℝ => 0 ≤ x)
    measurableSet_Ici).mpr
  apply (withDensity_absolutelyContinuous
    (volume.restrict (Ici t)) (fun u => ENNReal.ofReal (thetaPhi u))).ae_le
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  exact sub_nonneg.mpr hu


/-- Continuous observables have the exact density/translation adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80507dd15d009639e0d9e17caf34246efb511f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
