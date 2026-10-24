# iso_of_countable_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc1c2311-25d0-1ef5-08a2-57cc11fb6d54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da193887-2f9f-f1f4-3dff-1becb772eac1",
  "kind": "theorem",
  "lexical_name": "iso_of_countable_dense",
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
  "slug": "iso-of-countable-dense--5b76877277aacddbb5d36bf4",
  "source": {
    "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b76877277aacddbb5d36bf447a1458bb3e01395affd6bef657c0038d6b2af08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da193887-2f9f-f1f4-3dff-1becb772eac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iso_of_countable_dense [Encodable α] [DenselyOrdered α] [NoMinOrder α] [NoMaxOrder α]
    [Nonempty α] [Encodable β] [DenselyOrdered β] [NoMinOrder β] [NoMaxOrder β] [Nonempty β] :
    Nonempty (α ≃o β) :=
  let to_cofinal : Sum α β → Cofinal (PartialIso α β) := fun p ↦
    Sum.recOn p (definedAtLeft β) (definedAtRight α)
  let our_ideal : Ideal (PartialIso α β) := idealOfCofinals default to_cofinal
  let F a := funOfIdeal a our_ideal (cofinal_meets_idealOfCofinals _ to_cofinal (Sum.inl a))
  let G b := invOfIdeal b our_ideal (cofinal_meets_idealOfCofinals _ to_cofinal (Sum.inr b))
  ⟨OrderIso.ofCmpEqCmp (fun a ↦ (F a).val) (fun b ↦ (G b).val) fun a b ↦ by
      rcases(F a).prop with ⟨f, hf, ha⟩
      rcases(G b).prop with ⟨g, hg, hb⟩
      rcases our_ideal.directed _ hf _ hg with ⟨m, _, fm, gm⟩
      exact m.prop (a, _) (fm ha) (_, b) (gm hb)⟩
#align order.iso_of_countable_dense Order.iso_of_countable_dense

end Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd3b17b5cd06c739512ef9ba00a4f48af355372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
