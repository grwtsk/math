# reversal_trans_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03723322-20eb-892c-5890-8e276b311080",
  "kind": "theorem",
  "lexical_name": "reversal_trans_inverse",
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
  "slug": "reversal-trans-inverse--0bfa906efab612110b352214",
  "source": {
    "blob": "ca0dff37bc4050c46fae4f7e45907b15a96c032e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant9c94d38034eec3d2b97058c6642ab0d68612aa6e4fc2626cc8033c8997d8b54d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bfa906efab612110b352214754c57c60210ef682e7a2f90d4f96ae8100ae7a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant9c94d38034eec3d2b97058c6642ab0d68612aa6e4fc2626cc8033c8997d8b54d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03723322-20eb-892c-5890-8e276b311080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reversal_trans_inverse
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    G.trans (B.reversal embedding hq) (G.symm (B.reversal embedding hq)) =
      G.refl (T.surgery (B.beltEmbedding embedding hq)) :=
  G.trans_symm (B.reversal embedding hq)

/-- Every invariant functorial under relative diffeomorphisms is restored by belt surgery. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant9c94d38034eec3d2b97058c6642ab0d68612aa6e4fc2626cc8033c8997d8b54d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant9c94d38034eec3d2b97058c6642ab0d68612aa6e4fc2626cc8033c8997d8b54d.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0dff37bc4050c46fae4f7e45907b15a96c032e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
