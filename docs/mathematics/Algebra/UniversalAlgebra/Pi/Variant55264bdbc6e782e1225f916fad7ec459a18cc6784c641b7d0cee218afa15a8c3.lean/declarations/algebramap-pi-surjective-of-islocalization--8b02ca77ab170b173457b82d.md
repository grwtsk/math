# algebraMap_pi_surjective_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d5ba198-6064-d197-adcf-90240d832237",
  "kind": "lemma",
  "lexical_name": "algebraMap_pi_surjective_of_isLocalization",
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
  "slug": "algebramap-pi-surjective-of-islocalization--8b02ca77ab170b173457b82d",
  "source": {
    "blob": "e8ad5ef31215afa8c47359f90ab20ce417e66316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b02ca77ab170b173457b82d3ad165d73e032c1f204589a1c99507ab217ebd0f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d5ba198-6064-d197-adcf-90240d832237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algebraMap_pi_surjective_of_isLocalization [∀ i, Ring.KrullDimLE 0 (R i)]
    [∀ i, IsLocalRing (R i)] [IsLocalization M S']
    [Finite ι] : Surjective (algebraMap (Π i, R i) S') := by
  intro s
  set S := fun (i : ι) => Localization (M.map (Pi.evalRingHom R i))
  obtain ⟨r, hr⟩ :=
    surjective_piRingHom_algebraMap_comp_piEvalRingHom
    S M ((lift (isUnit_piRingHom_algebraMap_comp_piEvalRingHom R S M)) s)
  refine ⟨r, (bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom R S _ M).injective ?_⟩
  rwa [lift_eq (isUnit_piRingHom_algebraMap_comp_piEvalRingHom R S M) r]

end IsLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ad5ef31215afa8c47359f90ab20ce417e66316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
