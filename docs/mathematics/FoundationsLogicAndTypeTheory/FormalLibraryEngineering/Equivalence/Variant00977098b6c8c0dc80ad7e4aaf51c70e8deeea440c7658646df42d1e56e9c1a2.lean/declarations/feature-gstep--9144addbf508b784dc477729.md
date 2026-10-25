# feature_gStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:162287d7-bc63-a162-379e-7c4e79e65096",
  "kind": "theorem",
  "lexical_name": "feature_gStep",
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
  "slug": "feature-gstep--9144addbf508b784dc477729",
  "source": {
    "blob": "43f1fd568fc593415ed142c039d5eba888e0c9de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 857,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9144addbf508b784dc4777295e7173bad5d2b86d2fc17a518a8e04ea7705af1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:162287d7-bc63-a162-379e-7c4e79e65096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feature_gStep {f : ObservationFeature S} (hf : B.FeatureFormed (P := P) Γ γ f)
    {y z : Expr S} (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data) :
    Proves P Γ γ (B.gStep L.code KY.code KP.code (B.featurePred L.code KY.code KP.code f) y z) := by
  have hp := H.featurePred_typed KY KP hf
  apply L.imp_intro_future (H.observation.ae_formula KY KP hy my hz mz)
    (L.iff_formula (H.ev_formula hp.1 hp.2 hy my) (H.ev_formula hp.1 hp.2 hz mz))
  intro Δ δ e he
  simp only [ObservationCode.ae_rename] at he
  rw [LogicSetup.iff_rename,ev_rename,ev_rename,featurePred_rename]
  have hp' := (H.rename e).featurePred_typed (KY.rename e) (KP.rename e) (FeatureFormed.rename hf e)
  have hy' := y_typed_rename (B := B) e hy
  have hz' := y_typed_rename (B := B) e hz
  exact (L.rename e).iff_of_equivalent ((H.rename e).ev_formula hp'.1 hp'.2 hy' (e.moded my))
    ((H.rename e).ev_formula hp'.1 hp'.2 hz' (e.moded mz))
    ((H.rename e).featurePred_respect (KY.rename e) (KP.rename e) (FeatureFormed.rename hf e)
      hy' (e.moded my) hz' (e.moded mz) he)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f1fd568fc593415ed142c039d5eba888e0c9de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
