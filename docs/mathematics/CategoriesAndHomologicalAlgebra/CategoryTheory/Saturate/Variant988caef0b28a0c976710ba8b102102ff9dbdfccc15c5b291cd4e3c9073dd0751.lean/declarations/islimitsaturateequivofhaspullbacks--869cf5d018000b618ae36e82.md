# isLimitSaturateEquivOfHasPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d97875e4707a040e768be2533229df271813c57e2132d38498449d338aa5d0e2",
  "kind": "def",
  "lexical_name": "isLimitSaturateEquivOfHasPullbacks",
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
  "slug": "islimitsaturateequivofhaspullbacks--869cf5d018000b618ae36e82",
  "source": {
    "blob": "fb383fe2663bc0c2e306451b044cd4f828208ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:869cf5d018000b618ae36e82e56662d3a7d29ed24d532c6b3a5c6eeaf1478d35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d97875e4707a040e768be2533229df271813c57e2132d38498449d338aa5d0e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitSaturateEquivOfHasPullbacks {S : C} (E : PreZeroHypercover S)
    [E.HasPullbacks] (F : Cᵒᵖ ⥤ A) :
    IsLimit (E.saturate.multifork F) ≃ IsLimit (E.toPreOneHypercover.multifork F) :=
  PreOneHypercover.Homotopy.isLimitMultiforkEquiv E.fromSaturateOfHasPullbacks
    E.toSaturateOfHasPullbacks E.fromSaturateToSaturateHomotopy
    (by
      rw [toSaturateOfHasPullbacks_fromSaturateOfHasPullbacks]
      exact E.toPreOneHypercoverHomotopy)

end CategoryTheory.PreZeroHypercover
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb383fe2663bc0c2e306451b044cd4f828208ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
