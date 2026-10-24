# ofRightInverseOfCardLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aea7af9c1c23016e3aabfb00d965e552d4f36366efb0b05efa45f878add09401",
  "kind": "def",
  "lexical_name": "ofRightInverseOfCardLE",
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
  "slug": "ofrightinverseofcardle--8c7869c4119994c18d4823ef",
  "source": {
    "blob": "0a3b63ab14d3111c4b55f4703c466716a2365405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 720,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c7869c4119994c18d4823efb987f05e8b7d7f67b985fab809ec2ccdc5bd9913",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aea7af9c1c23016e3aabfb00d965e552d4f36366efb0b05efa45f878add09401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofRightInverseOfCardLE (hαβ : card α ≤ card β) (f : α → β) (g : β → α) (h : RightInverse g f) :
    α ≃ β where
  toFun := f
  invFun := g
  left_inv := h.leftInverse_of_card_le hαβ
  right_inv := h
#align equiv.of_right_inverse_of_card_le Equiv.ofRightInverseOfCardLE
#align equiv.of_right_inverse_of_card_le_symm_apply Equiv.ofRightInverseOfCardLE_symm_apply
#align equiv.of_right_inverse_of_card_le_apply Equiv.ofRightInverseOfCardLE_apply

end Equiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3b63ab14d3111c4b55f4703c466716a2365405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
