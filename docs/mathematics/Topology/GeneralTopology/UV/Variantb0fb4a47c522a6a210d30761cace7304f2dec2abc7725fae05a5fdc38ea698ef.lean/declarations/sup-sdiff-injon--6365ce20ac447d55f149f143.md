# sup_sdiff_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31dd45492bf4de729963846f3c841eb04e98155a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:640e37e6-1ffd-a7e9-5e3e-597d88070075",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:848b18b6-bd0a-a942-1f03-5013a6625219",
  "kind": "theorem",
  "lexical_name": "sup_sdiff_injOn",
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
  "slug": "sup-sdiff-injon--6365ce20ac447d55f149f143",
  "source": {
    "blob": "31dd45492bf4de729963846f3c841eb04e98155a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6365ce20ac447d55f149f143124b8e793941112d3ba62b02f82530278c66d6b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:848b18b6-bd0a-a942-1f03-5013a6625219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_sdiff_injOn [GeneralizedBooleanAlgebra α] (u v : α) :
    { x | Disjoint u x ∧ v ≤ x }.InjOn fun x => (x ⊔ u) \ v := by
  rintro a ha b hb hab
  have h : ((a ⊔ u) \ v) \ u ⊔ v = ((b ⊔ u) \ v) \ u ⊔ v := by
    dsimp at hab
    rw [hab]
  rwa [sdiff_sdiff_comm, ha.1.symm.sup_sdiff_cancel_right, sdiff_sdiff_comm,
    hb.1.symm.sup_sdiff_cancel_right, sdiff_sup_cancel ha.2, sdiff_sup_cancel hb.2] at h

-- The namespace is here to distinguish from other compressions.
namespace UV

/-! ### UV-compression in generalized Boolean algebras -/


section GeneralizedBooleanAlgebra

variable [GeneralizedBooleanAlgebra α] [DecidableRel (@Disjoint α _ _)]
  [DecidableLE α] {s : Finset α} {u v a : α}

/-- UV-compressing `a` means removing `v` from it and adding `u` if `a` and `u` are disjoint and
`v ≤ a` (it replaces the `v` part of `a` by the `u` part). Else, UV-compressing `a` doesn't do
anything. This is most useful when `u` and `v` are disjoint finsets of the same size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31dd45492bf4de729963846f3c841eb04e98155a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
