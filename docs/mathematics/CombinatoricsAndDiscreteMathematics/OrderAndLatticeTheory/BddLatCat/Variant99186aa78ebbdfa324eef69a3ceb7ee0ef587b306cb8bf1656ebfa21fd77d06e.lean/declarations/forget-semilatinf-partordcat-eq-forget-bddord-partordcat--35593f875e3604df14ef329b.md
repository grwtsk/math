# forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c51ba17f-ad09-67d6-f84a-d3970d02d037",
  "kind": "theorem",
  "lexical_name": "forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat",
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
  "slug": "forget-semilatinf-partordcat-eq-forget-bddord-partordcat--35593f875e3604df14ef329b",
  "source": {
    "blob": "86f5b2c6b30cf59dde5179075083c6f8d1f6a938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35593f875e3604df14ef329b87e20ab6a9e821f863c2f276ef036ee4068e2684",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c51ba17f-ad09-67d6-f84a-d3970d02d037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat :
    forget₂ BddLatCat SemilatInfCat ⋙ forget₂ SemilatInfCat PartOrdCat =
      forget₂ BddLatCat BddOrdCat ⋙ forget₂ BddOrdCat PartOrdCat :=
  rfl
#align BddLat.forget_SemilatInf_PartOrd_eq_forget_BddOrd_PartOrd BddLatCat.forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat

/-- Constructs an equivalence between bounded lattices from an order isomorphism
between them. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f5b2c6b30cf59dde5179075083c6f8d1f6a938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
