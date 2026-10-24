# rel_bot_eq_right_group_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b64b7034f64624fa09974b59dc783ec457d2a3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dab4366e-fb44-baeb-eeab-82fd1267ad56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee4fd967-e4ff-839e-d1a9-3673846d59d5",
  "kind": "theorem",
  "lexical_name": "rel_bot_eq_right_group_rel",
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
  "slug": "rel-bot-eq-right-group-rel--62fa1bb3a42ca90fc5f27b5a",
  "source": {
    "blob": "1b64b7034f64624fa09974b59dc783ec457d2a3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62fa1bb3a42ca90fc5f27b5a8956fce881f7f2955b14be31990811e8b6c184a9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4fd967-e4ff-839e-d1a9-3673846d59d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_bot_eq_right_group_rel (H : Subgroup G) :
    ⇑(setoid ↑H ↑(⊥ : Subgroup G)) = ⇑(QuotientGroup.rightRel H) := by
  ext a b
  rw [rel_iff, QuotientGroup.rightRel_apply]
  constructor
  · rintro ⟨b, hb, a, rfl : a = 1, rfl⟩
    rwa [mul_one, mul_inv_cancel_right]
  · rintro (h : b * a⁻¹ ∈ H)
    exact ⟨b * a⁻¹, h, 1, rfl, by rw [mul_one, inv_mul_cancel_right]⟩

/-- Create a doset out of an element of `H \ G / K` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b64b7034f64624fa09974b59dc783ec457d2a3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
