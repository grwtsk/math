# reencode_typed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6003f3d2-450c-ea4c-24cb-9e2a158f92d9",
  "kind": "theorem",
  "lexical_name": "reencode_typed",
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
  "slug": "reencode-typed--704594f03dabe0154e8d5d9c",
  "source": {
    "blob": "f9b6b6bb928e6d27acfa0a4df9f7b019ca7e3257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1727,
    "line": 1721,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variantbb606684f1943972283383321e69408974d64bc29641dce036d91762d694d0bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:704594f03dabe0154e8d5d9c42ae38c03ab481af5c706b92e2d2f519ee4c543a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variantbb606684f1943972283383321e69408974d64bc29641dce036d91762d694d0bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6003f3d2-450c-ea4c-24cb-9e2a158f92d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1721–1727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reencode_typed (hR : Formed L I J R) (hR' : Formed L I K R') {T w : Expr S}
    (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (hw : HasType P Γ w (R.apply T)) (mw : WellModed γ w .data) :
    HasType P Γ (reencode R R' T w) (R'.apply T) ∧ WellModed γ (reencode R R' T w) .data :=
  (hR'.sound hT mT).1 _ (hR.evalCallback_family hT mT hw mw)
end Formed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variantbb606684f1943972283383321e69408974d64bc29641dce036d91762d694d0bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variantbb606684f1943972283383321e69408974d64bc29641dce036d91762d694d0bd.lean#L1721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9b6b6bb928e6d27acfa0a4df9f7b019ca7e3257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
