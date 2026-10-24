# MulEtransform.card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced9f240-6b69-24ba-d7d4-1a1cd2effdd2",
  "kind": "theorem",
  "lexical_name": "MulEtransform.card",
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
  "slug": "muletransform-card--0207842a903108a13e6dc550",
  "source": {
    "blob": "a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0207842a903108a13e6dc550666f7c77140d07a1e33d11e03a48ae5460f1cbcc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced9f240-6b69-24ba-d7d4-1a1cd2effdd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem MulEtransform.card :
    (mulEtransformLeft e x).1.card + (mulEtransformLeft e x).2.card +
        ((mulEtransformRight e x).1.card + (mulEtransformRight e x).2.card) =
      x.1.card + x.2.card + (x.1.card + x.2.card) := by
  rw [add_add_add_comm, mulEtransformLeft.card, mulEtransformRight.card, ← mul_add, two_mul]
#align finset.mul_e_transform.card Finset.MulEtransform.card
#align finset.add_e_transform.card Finset.AddEtransform.card

end Group

section CommGroup

variable [CommGroup α] (e : α) (x : Finset α × Finset α)

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
