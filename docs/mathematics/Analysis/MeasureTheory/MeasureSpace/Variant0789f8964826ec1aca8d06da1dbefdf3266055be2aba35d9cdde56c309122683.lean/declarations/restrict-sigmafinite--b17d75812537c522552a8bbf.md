# Restrict.sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab2863fc3bd597c3200161d76619ef21951d866171c614f8ca826459467963c7",
  "kind": "instance",
  "lexical_name": "Restrict.sigmaFinite",
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
  "slug": "restrict-sigmafinite--b17d75812537c522552a8bbf",
  "source": {
    "blob": "0588602c394b79b9ab0b5bd11ed4cb6579bbc7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3641,
    "line": 3635,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b17d75812537c522552a8bbf38fbf1845075bad289f080ae772a39ff875e3243",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab2863fc3bd597c3200161d76619ef21951d866171c614f8ca826459467963c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3635–3641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Restrict.sigmaFinite (μ : Measure α) [SigmaFinite μ] (s : Set α) :
    SigmaFinite (μ.restrict s) := by
  refine' ⟨⟨⟨spanningSets μ, fun _ => trivial, fun i => _, iUnion_spanningSets μ⟩⟩⟩
  rw [Measure.restrict_apply (measurable_spanningSets μ i)]
  exact (measure_mono <| inter_subset_left _ _).trans_lt (measure_spanningSets_lt_top μ i)
#align measure_theory.restrict.sigma_finite MeasureTheory.Restrict.sigmaFinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant0789f8964826ec1aca8d06da1dbefdf3266055be2aba35d9cdde56c309122683.lean#L3635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0588602c394b79b9ab0b5bd11ed4cb6579bbc7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
