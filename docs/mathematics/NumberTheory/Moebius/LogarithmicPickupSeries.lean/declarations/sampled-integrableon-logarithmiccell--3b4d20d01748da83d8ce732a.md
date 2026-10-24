# sampled_integrableOn_logarithmicCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bc1b93e-58fe-5bea-24e3-a2f045b4852c",
  "kind": "theorem",
  "lexical_name": "sampled_integrableOn_logarithmicCell",
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
  "slug": "sampled-integrableon-logarithmiccell--3b4d20d01748da83d8ce732a",
  "source": {
    "blob": "813d381298ab1415230ce94eb10edf05338aadba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 273,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b4d20d01748da83d8ce732ac77f89be56afea96a5b83d535ccb5a811fbeb872",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc1b93e-58fe-5bea-24e3-a2f045b4852c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampled_integrableOn_logarithmicCell (σ : ℝ) (k : ℕ) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2)
      (logarithmicCell k) := by
  have hc : Continuous (fun u : ℝ ↦
      Real.exp (-σ * u) * (2 * sampleResidue (k + 1)) ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul continuous_const
  have hi := (hc.integrableOn_Icc (μ := volume) (a := Real.log ((k : ℝ) + 1))
    (b := Real.log ((k : ℝ) + 2))).mono_set Ico_subset_Icc_self
  apply hi.congr_fun ?_ measurableSet_Ico
  intro u hu
  dsimp only
  rw [sampledPickup_eq_on_logarithmicCell hu]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813d381298ab1415230ce94eb10edf05338aadba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
