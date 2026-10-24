# HasLaw.comp_of_hasLaw_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:166ec8f0-77dd-56da-f810-5cc921fe3abf",
  "kind": "lemma",
  "lexical_name": "HasLaw.comp_of_hasLaw_comp",
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
  "slug": "haslaw-comp-of-haslaw-comp--36a1321e71ca4763435e2c10",
  "source": {
    "blob": "80fcd3a6f302aacb2def6456a03bf932c134f25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36a1321e71ca4763435e2c10ef5055c66a5edb5a9b3c998030b32b7780c164af",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:166ec8f0-77dd-56da-f810-5cc921fe3abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasLaw.comp_of_hasLaw_comp {Ω' 𝓨 : Type*} {m' : MeasurableSpace Ω'} {m𝓨 : MeasurableSpace 𝓨}
    {P' : Measure Ω'} {ν : Measure 𝓨} {f : 𝓧 → 𝓨} {Y : Ω' → 𝓧} (hf : AEMeasurable f μ)
    (hX : HasLaw X μ P) (hY : HasLaw Y μ P') (h : HasLaw (fun ω ↦ f (X ω)) ν P) :
    HasLaw (fun ω ↦ f (Y ω)) ν P' where
  aemeasurable := (hY.map_eq ▸ hf).comp_aemeasurable hY.aemeasurable
  map_eq := by
    rw [← Function.comp_def,
      ← AEMeasurable.map_map_of_aemeasurable (hY.map_eq ▸ hf) hY.aemeasurable,
      hY.map_eq, ← hX.map_eq, AEMeasurable.map_map_of_aemeasurable (hX.map_eq ▸ hf) hX.aemeasurable,
      Function.comp_def, h.map_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant09805179dbb3834a5a222d314e57b7a5aa9b31d1cab5392b7cb2023f2d5e89d4.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80fcd3a6f302aacb2def6456a03bf932c134f25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
