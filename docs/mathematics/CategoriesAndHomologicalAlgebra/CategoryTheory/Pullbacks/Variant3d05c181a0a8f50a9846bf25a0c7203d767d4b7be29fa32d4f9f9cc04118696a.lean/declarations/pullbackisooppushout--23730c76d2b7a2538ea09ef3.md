# pullbackIsoOpPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ce4090b1771b5095922567cdebdb57004a6f5a04698365acfd6a10e80bb3d85",
  "kind": "def",
  "lexical_name": "pullbackIsoOpPushout",
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
  "slug": "pullbackisooppushout--23730c76d2b7a2538ea09ef3",
  "source": {
    "blob": "5ebe4f6986e43a1d21a52a623921241f015e0f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 311,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23730c76d2b7a2538ea09ef37de7dfe182496faab400cd15009127a23cb88322",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ce4090b1771b5095922567cdebdb57004a6f5a04698365acfd6a10e80bb3d85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pullbackIsoOpPushout {X Y Z : Cᵒᵖ} (f : X ⟶ Z) (g : Y ⟶ Z) [h : HasPullback f g] :
    pullback f g ≅ op (pushout f.unop g.unop) :=
  IsLimit.conePointUniqueUpToIso (@limit.isLimit _ _ _ _ _ h)
    ((PushoutCocone.isColimitEquivIsLimitOp _) (colimit.isColimit (span f.unop g.unop)))

set_option backward.isDefEq.respectTransparency.types false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant3d05c181a0a8f50a9846bf25a0c7203d767d4b7be29fa32d4f9f9cc04118696a.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ebe4f6986e43a1d21a52a623921241f015e0f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
