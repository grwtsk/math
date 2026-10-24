# IsStarNormal.instContinuousFunctionalCalculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8dda42bd5536d10ee3cf954cbd9f9f40d3a9a9c207819f7663becca0f75cb3d",
  "kind": "instance",
  "lexical_name": "IsStarNormal.instContinuousFunctionalCalculus",
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
  "slug": "isstarnormal-instcontinuousfunctionalcalculus--692f66908a3c9cc65c850ab4",
  "source": {
    "blob": "9a232de5f4356748e118239022ae71b016052f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:692f66908a3c9cc65c850ab49763b7a06d2631798f5a1c3bb788ce8ade42b34f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8dda42bd5536d10ee3cf954cbd9f9f40d3a9a9c207819f7663becca0f75cb3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsStarNormal.instContinuousFunctionalCalculus {A : Type*} [CStarAlgebra A] :
    ContinuousFunctionalCalculus ℂ A IsStarNormal where
  predicate_zero := .zero
  spectrum_nonempty a _ := spectrum.nonempty a
  exists_cfc_of_predicate a ha := by
    refine ⟨(StarAlgebra.elemental ℂ a).subtype.comp <| continuousFunctionalCalculus a,
      ?hom_isClosedEmbedding, ?hom_id, ?hom_map_spectrum, ?predicate_hom⟩
    case hom_isClosedEmbedding =>
      exact Isometry.isClosedEmbedding <|
        isometry_subtype_coe.comp <| StarAlgEquiv.isometry (continuousFunctionalCalculus a)
    case hom_id => exact congr_arg Subtype.val <| continuousFunctionalCalculus_map_id a
    case hom_map_spectrum =>
      intro f
      simp only [StarAlgHom.comp_apply, StarAlgHom.coe_coe, StarSubalgebra.coe_subtype]
      rw [← StarSubalgebra.spectrum_eq (hS := StarAlgebra.elemental.isClosed ℂ a),
        AlgEquiv.spectrum_eq (continuousFunctionalCalculus a), ContinuousMap.spectrum_eq_range]
    case predicate_hom => exact fun f ↦ ⟨by rw [← map_star]; exact Commute.all (star f) f |>.map _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a232de5f4356748e118239022ae71b016052f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
