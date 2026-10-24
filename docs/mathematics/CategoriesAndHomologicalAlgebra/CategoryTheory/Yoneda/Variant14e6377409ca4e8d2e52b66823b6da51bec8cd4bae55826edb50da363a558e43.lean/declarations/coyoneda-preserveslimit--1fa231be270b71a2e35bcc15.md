# coyoneda_preservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbfd1de95fcc5b0a3a38a7ae41cd2f65a4999b27c3d8462ff9f3ef77001bf364",
  "kind": "instance",
  "lexical_name": "coyoneda_preservesLimit",
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
  "slug": "coyoneda-preserveslimit--1fa231be270b71a2e35bcc15",
  "source": {
    "blob": "da201d27117d4668564383a96ba7dc4f86410385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fa231be270b71a2e35bcc15ab8035201e3b0941ef32a8c67dcdcf548e9220fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbfd1de95fcc5b0a3a38a7ae41cd2f65a4999b27c3d8462ff9f3ef77001bf364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coyoneda_preservesLimit (F : J ⥤ C) (X : Cᵒᵖ) :
    PreservesLimit F (coyoneda.obj X) where
  preserves {c} hc := by
    rw [Types.isLimit_iff]
    intro s hs
    exact ⟨hc.lift (Limits.coneOfSectionCompCoyoneda F X ⟨s, hs⟩), hc.fac _,
      hc.uniq (Limits.coneOfSectionCompCoyoneda F X ⟨s, hs⟩)⟩

variable (J) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da201d27117d4668564383a96ba7dc4f86410385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
