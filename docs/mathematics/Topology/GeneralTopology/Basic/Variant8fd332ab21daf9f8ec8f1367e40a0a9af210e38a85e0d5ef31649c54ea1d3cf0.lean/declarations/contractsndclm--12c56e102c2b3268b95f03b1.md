# contractSndCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1472883b040c2ce89ae9e81db4971c637d1c47f736a9ac695de02a42c58722c7",
  "kind": "def",
  "lexical_name": "contractSndCLM",
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
  "slug": "contractsndclm--12c56e102c2b3268b95f03b1",
  "source": {
    "blob": "e15a01eb951d4d4ae1e80acaf66af5a0da077c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12c56e102c2b3268b95f03b1d0ed6ca46ad669b62a8c9ea33ca4e78e9af07918",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1472883b040c2ce89ae9e81db4971c637d1c47f736a9ac695de02a42c58722c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contractSndCLM : D(Y, R) →ₗ[R] C(X × Y, R) →L[R] C(X, R) where
  toFun ν := ⟨contractSnd ν, by
    refine continuous_of_continuous_uncurry _ (ν.continuous.comp ?_)
    apply continuous_of_continuous_uncurry
    rw [← (Homeomorph.prodAssoc C(X × Y, R) X Y).symm.comp_continuous_iff']
    exact ContinuousEval.continuous_eval⟩
  map_add' _ _ := ContinuousLinearMap.coe_injective.eq_iff.mp <| contractSnd.map_add _ _
  map_smul' _ _ := ContinuousLinearMap.coe_injective.eq_iff.mp <| contractSnd.map_smul _ _

/-- `AbstractMeasure.contractFst` bundled with continuity in the function argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8fd332ab21daf9f8ec8f1367e40a0a9af210e38a85e0d5ef31649c54ea1d3cf0.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15a01eb951d4d4ae1e80acaf66af5a0da077c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
