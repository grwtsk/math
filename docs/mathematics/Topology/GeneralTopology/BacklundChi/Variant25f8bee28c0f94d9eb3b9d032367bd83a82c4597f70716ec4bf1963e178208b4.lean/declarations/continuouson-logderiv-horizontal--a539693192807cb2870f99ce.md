# continuousOn_logDeriv_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c92d3ce-4c0b-1726-73e3-096aa384370e",
  "kind": "lemma",
  "lexical_name": "continuousOn_logDeriv_horizontal",
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
  "slug": "continuouson-logderiv-horizontal--a539693192807cb2870f99ce",
  "source": {
    "blob": "07d5bcacede31f7967ba4ba5a412b8f32dd72556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a539693192807cb2870f99ce6080e3f9379e56d9420ff043b984ab3d8cc5aba3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c92d3ce-4c0b-1726-73e3-096aa384370e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_logDeriv_horizontal (hχ1 : χ ≠ 1)
    (hnz : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, χ.LFunction (σ + T * I) ≠ 0) :
    ContinuousOn (fun σ : ℝ => logDeriv χ.LFunction (σ + T * I)) (Set.Icc (1/2 : ℝ) 2) := by
  have h : ContinuousOn (fun σ : ℝ => deriv χ.LFunction (σ + T * I) / χ.LFunction (σ + T * I))
      (Set.Icc (1/2 : ℝ) 2) :=
    (continuous_deriv_LFunction_horizontal hχ1).continuousOn.div
      (continuous_LFunction_horizontal hχ1).continuousOn hnz
  exact h.congr (fun σ _ => by rw [logDeriv_apply])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d5bcacede31f7967ba4ba5a412b8f32dd72556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
