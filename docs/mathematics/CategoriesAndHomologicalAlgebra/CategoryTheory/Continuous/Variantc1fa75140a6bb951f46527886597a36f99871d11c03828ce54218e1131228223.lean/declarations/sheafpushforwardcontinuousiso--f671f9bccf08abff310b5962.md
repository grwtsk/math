# sheafPushforwardContinuousIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1a18af0a47ab0cc4230050e9d0b1b6be8e29e3ea471b8c36cddb2227aef5759",
  "kind": "def",
  "lexical_name": "sheafPushforwardContinuousIso",
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
  "slug": "sheafpushforwardcontinuousiso--f671f9bccf08abff310b5962",
  "source": {
    "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 402,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f671f9bccf08abff310b5962a30dc1bee23096e678df985a9e55fc04e1fcd8aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1a18af0a47ab0cc4230050e9d0b1b6be8e29e3ea471b8c36cddb2227aef5759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafPushforwardContinuousIso [IsContinuous F' J K] :
    sheafPushforwardContinuous F A J K ≅ sheafPushforwardContinuous F' A J K where
  hom := sheafPushforwardContinuousNatTrans e.inv _ _ _
  inv := sheafPushforwardContinuousNatTrans e.hom _ _ _
  hom_inv_id := by ext; simp [← Functor.map_comp, ← op_comp]
  inv_hom_id := by ext; simp [← Functor.map_comp, ← op_comp]

/-- If a continuous functor between sites is isomorphic to the identity functor,
then the corresponding pushforward functor on sheaves identifies to the
identity functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bae41fd1efbcdc53c3b7685e2d696efa5589dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
