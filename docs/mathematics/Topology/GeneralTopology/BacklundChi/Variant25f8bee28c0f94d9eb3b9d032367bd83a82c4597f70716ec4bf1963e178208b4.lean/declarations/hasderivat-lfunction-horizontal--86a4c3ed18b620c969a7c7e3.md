# hasDerivAt_LFunction_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46ec81d-ead9-ec02-5ec4-4173e634b18e",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_LFunction_horizontal",
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
  "slug": "hasderivat-lfunction-horizontal--86a4c3ed18b620c969a7c7e3",
  "source": {
    "blob": "07d5bcacede31f7967ba4ba5a412b8f32dd72556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86a4c3ed18b620c969a7c7e3c840d114a15ab6b5d95e72520d482355fe95516f",
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

Occurrence: `result:a46ec81d-ead9-ec02-5ec4-4173e634b18e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_LFunction_horizontal (hχ1 : χ ≠ 1) (σ : ℝ) :
    HasDerivAt (fun σ : ℝ => χ.LFunction (σ + T * I)) (deriv χ.LFunction (σ + T * I)) σ := by
  have hζ : HasDerivAt χ.LFunction (deriv χ.LFunction (σ + T * I)) (σ + T * I) :=
    ((DirichletCharacter.differentiable_LFunction hχ1) _).hasDerivAt
  have hγ : HasDerivAt (fun σ : ℝ => (σ : ℂ) + T * I) 1 σ := by
    have h1 : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 σ := Complex.ofRealCLM.hasDerivAt
    simpa using h1.add_const ((T : ℂ) * I)
  exact (hζ.comp σ hγ).congr_deriv (mul_one _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d5bcacede31f7967ba4ba5a412b8f32dd72556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
