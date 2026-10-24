# denselyOrdered_iff_of_strictAnti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:412179e5-53e9-e080-02dc-b9275825dde1",
  "kind": "lemma",
  "lexical_name": "denselyOrdered_iff_of_strictAnti",
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
  "slug": "denselyordered-iff-of-strictanti--1b1a3c03b7d3095d0ccc727e",
  "source": {
    "blob": "5415f4a52dee6230b684f239cba5cd25e76c7ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1354,
    "line": 1339,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1a3c03b7d3095d0ccc727ecfcb11ca9b1fadb02196b998b766d2c1efcfdd41",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:412179e5-53e9-e080-02dc-b9275825dde1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1339–1354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma denselyOrdered_iff_of_strictAnti {X Y F : Type*} [LinearOrder X] [Preorder Y]
    [EquivLike F X Y] (f : F) (hf : StrictAnti f) :
    DenselyOrdered X ↔ DenselyOrdered Y := by
  rw [← denselyOrdered_orderDual]
  let e : Xᵒᵈ ≃o Y := ⟨OrderDual.ofDual.trans (f : X ≃ Y), ?_⟩
  · exact denselyOrdered_iff_of_orderIsoClass e
  · simp only [Equiv.trans_apply, EquivLike.coe_coe, OrderDual.forall, OrderDual.ofDual_toDual,
      OrderDual.toDual_le_toDual]
    intro a b
    rw [hf.le_iff_ge]

end DenselyOrdered

universe v u in
/-- The bijection `ULift.{v} α ≃ α` as an isomorphism of orders. -/
@[pp_with_univ, simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean#L1339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5415f4a52dee6230b684f239cba5cd25e76c7ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
