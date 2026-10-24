# withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23309b3fb8cbceab18b29dc39bc69ed3a6503f0b05609913a3067aee2ad72075",
  "kind": "def",
  "lexical_name": "withDensity",
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
  "slug": "withdensity--96c1216afd4940b8536a9c3e",
  "source": {
    "blob": "8fb7f4d757f76c40c17974acba5410954bf79291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96c1216afd4940b8536a9c3e885e3dce663750a5ac8471984b57f29f3da7d119",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23309b3fb8cbceab18b29dc39bc69ed3a6503f0b05609913a3067aee2ad72075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def withDensity (κ : Kernel α β) [IsSFiniteKernel κ] (f : α → β → ℝ≥0∞) :
    Kernel α β :=
  @dite _ (Measurable (Function.uncurry f)) (Classical.dec _) (fun hf =>
    (⟨fun a => (κ a).withDensity (f a),
      by
        refine Measure.measurable_of_measurable_coe _ fun s hs => ?_
        simp_rw [withDensity_apply _ hs]
        exact hf.setLIntegral_kernel_prod_right hs⟩ : Kernel α β)) fun _ => 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb7f4d757f76c40c17974acba5410954bf79291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
