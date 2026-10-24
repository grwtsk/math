# isCyclic_of_card_pow_eq_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48a73624-0ec2-aec0-11cd-df5bf487a61b",
  "kind": "theorem",
  "lexical_name": "isCyclic_of_card_pow_eq_one_le",
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
  "slug": "iscyclic-of-card-pow-eq-one-le--e8c42730481a16a65b8fec8f",
  "source": {
    "blob": "ab4df74739cd427e9035d6118afbba657142a311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 403,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c42730481a16a65b8fec8fec0f510e8fb2ce3b425393de13dfb5389e70f98f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48a73624-0ec2-aec0-11cd-df5bf487a61b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCyclic_of_card_pow_eq_one_le : IsCyclic α :=
  have : (univ.filter fun a : α => orderOf a = Fintype.card α).Nonempty :=
    card_pos.1 <| by
      rw [card_orderOf_eq_totient_aux₂ hn dvd_rfl];
        exact totient_pos (Fintype.card_pos_iff.2 ⟨1⟩)
  let ⟨x, hx⟩ := this
  isCyclic_of_orderOf_eq_card x (Finset.mem_filter.1 hx).2
#align is_cyclic_of_card_pow_eq_one_le isCyclic_of_card_pow_eq_one_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4df74739cd427e9035d6118afbba657142a311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
