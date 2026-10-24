# RingHom.IsStableUnderBaseChange.isLocalization_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b36b12-66e9-6a84-92ec-7defa3707e0d",
  "kind": "lemma",
  "lexical_name": "RingHom.IsStableUnderBaseChange.isLocalization_map",
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
  "slug": "ringhom-isstableunderbasechange-islocalization-map--52a3a213f8c50354c4c336c1",
  "source": {
    "blob": "c4843966cdd144391aab8bcdbab8b77677ad3ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 446,
    "path": "GRWTSK/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52a3a213f8c50354c4c336c1bf93fb1d449ccf63d98d660aed4d98130aa2ea86",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b36b12-66e9-6a84-92ec-7defa3707e0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.IsStableUnderBaseChange.isLocalization_map (M : Submonoid R) [IsLocalization M Rᵣ]
    (f : R →+* S) [IsLocalization (M.map f) Sᵣ] (hf : P f) :
    P (IsLocalization.map Sᵣ f M.le_comap_map : Rᵣ →+* Sᵣ) := by
  algebraize [f, IsLocalization.map (S := Rᵣ) Sᵣ f M.le_comap_map,
    (IsLocalization.map (S := Rᵣ) Sᵣ f M.le_comap_map).comp (algebraMap R Rᵣ)]
  haveI : IsScalarTower R S Sᵣ := IsScalarTower.of_algebraMap_eq'
    (IsLocalization.map_comp M.le_comap_map)
  haveI : IsLocalization (Algebra.algebraMapSubmonoid S M) Sᵣ :=
    inferInstanceAs <| IsLocalization (M.map f) Sᵣ
  apply hP.of_isLocalization M hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4bd2f0ba188dedcd807dfe641c70afaab5c7d7e837f4250810f7e65892f2b2b1.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4843966cdd144391aab8bcdbab8b77677ad3ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
