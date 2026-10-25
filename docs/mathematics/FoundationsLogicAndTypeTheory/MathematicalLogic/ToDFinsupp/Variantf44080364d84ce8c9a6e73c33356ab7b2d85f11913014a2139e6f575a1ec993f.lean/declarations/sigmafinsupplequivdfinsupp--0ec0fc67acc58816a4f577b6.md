# sigmaFinsuppLequivDFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97dfa6a8d3fbb8949c971dba87706291641b10f84879882b34ff59156769be7f",
  "kind": "def",
  "lexical_name": "sigmaFinsuppLequivDFinsupp",
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
  "slug": "sigmafinsupplequivdfinsupp--0ec0fc67acc58816a4f577b6",
  "source": {
    "blob": "8eeddf626115bc6ceaee25bc6f74cf2a0a5a73ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ec0fc67acc58816a4f577b6369e10b666fa343722291de892f7d07827a71f67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97dfa6a8d3fbb8949c971dba87706291641b10f84879882b34ff59156769be7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaFinsuppLequivDFinsupp [AddCommMonoid N] [Module R N] :
    ((Σi, η i) →₀ N) ≃ₗ[R] Π₀ i, η i →₀ N :=
    -- porting notes: was
    -- sigmaFinsuppAddEquivDFinsupp with map_smul' := sigmaFinsuppEquivDFinsupp_smul
    -- but times out
  { sigmaFinsuppEquivDFinsupp with
    toFun := sigmaFinsuppEquivDFinsupp
    invFun := sigmaFinsuppEquivDFinsupp.symm
    map_add' := sigmaFinsuppEquivDFinsupp_add
    map_smul' := sigmaFinsuppEquivDFinsupp_smul }
#align sigma_finsupp_lequiv_dfinsupp sigmaFinsuppLequivDFinsupp

end Sigma

end Equivs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eeddf626115bc6ceaee25bc6f74cf2a0a5a73ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
