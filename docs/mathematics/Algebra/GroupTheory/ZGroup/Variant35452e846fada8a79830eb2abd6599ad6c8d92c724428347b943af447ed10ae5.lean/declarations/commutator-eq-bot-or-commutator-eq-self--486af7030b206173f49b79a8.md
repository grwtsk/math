# commutator_eq_bot_or_commutator_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e8dc7af-bfbb-dfbd-a69c-cd15f534c563",
  "kind": "theorem",
  "lexical_name": "commutator_eq_bot_or_commutator_eq_self",
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
  "slug": "commutator-eq-bot-or-commutator-eq-self--486af7030b206173f49b79a8",
  "source": {
    "blob": "ed3206bc3870b8c1cecb24051faaadb194a44b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 237,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:486af7030b206173f49b79a8b746966c8a20a18bfd59cb8f67db6a3449df6e03",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e8dc7af-bfbb-dfbd-a69c-cd15f534c563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutator_eq_bot_or_commutator_eq_self [P.Normal] {K : Subgroup G}
    (h : K.IsComplement' P) : ⁅K, P.1⁆ = ⊥ ∨ ⁅K, P.1⁆ = P :=
  P.2.commutator_eq_bot_or_commutator_eq_self (P.normalizer_eq_top ▸ le_top)
    (h.index_eq_card ▸ P.card_coprime_index)

/-- A normal cyclic Sylow subgroup is either central or contained in the commutator subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant35452e846fada8a79830eb2abd6599ad6c8d92c724428347b943af447ed10ae5.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3206bc3870b8c1cecb24051faaadb194a44b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
