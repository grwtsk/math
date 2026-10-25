# featurePred_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e3396c0-bddc-a023-11fb-7f0a7e15ccfd",
  "kind": "theorem",
  "lexical_name": "featurePred_evaluation",
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
  "slug": "featurepred-evaluation--edc6fccc6acad48170d914c8",
  "source": {
    "blob": "43f1fd568fc593415ed142c039d5eba888e0c9de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 816,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc6fccc6acad48170d914c8c9eb94cb680630511a75f4c47627393de12b3c22",
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

Occurrence: `result:9e3396c0-bddc-a023-11fb-7f0a7e15ccfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 816–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem featurePred_evaluation {f : ObservationFeature S} (hf : B.FeatureFormed (P := P) Γ γ f)
    {y : Expr S} (hy : HasType P Γ y B.yType) (my : WellModed γ y .data) :
    Equivalent P Γ γ (B.ev (B.featurePred L.code KY.code KP.code f) y) (B.feature L.code
      KY.code KP.code f y) := by
  obtain ⟨s,hs⟩ := H.relational_formed.probe.funTriple.domain.1
  have he := H.relational_formed.channel.pred_evaluation H.base_sorted H.base_mode (H.shape ▸
    H.featureBody_family KY KP hf)
    (H.relational_formed.probe.raw_sorted H.type_sorted s hs) (H.shape ▸ hy) my
  rw [featureBody_instantiate] at he
  have ht := H.featurePred_typed KY KP hf
  have hr := H.round_typed hy my
  exact (H.ev_formula ht.1 ht.2 hy my).equivalent_trans (H.feature_formula KY KP hf hr.1 hr.2)
    (H.feature_formula KY KP hf hy my) he (H.feature_round KY KP hf hy my)
end Formed
end SpecializedCode

namespace SpecializedCode.Formed

section
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J k p n g j h : Set S} {B : SpecializedCode S}
    (H : B.Formed L I J k p n g j h) (KY : QuantifierRoute L.witnesses C L.base j)
    (KP : QuantifierRoute L.witnesses C L.base h)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean#L816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f1fd568fc593415ed142c039d5eba888e0c9de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
