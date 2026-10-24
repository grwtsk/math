# commutator_sup_right_of_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c25ce363-ecb9-4e62-d9fb-27065e2c8991",
  "kind": "theorem",
  "lexical_name": "commutator_sup_right_of_normal",
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
  "slug": "commutator-sup-right-of-normal--eee56c3c0f8f478f745d28c5",
  "source": {
    "blob": "baa949e1fd5a74609ff23fb18b890208fd90625e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 351,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee56c3c0f8f478f745d28c59661945641bbebb338c6337b5d3f2545bc0b21b2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c25ce363-ecb9-4e62-d9fb-27065e2c8991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem commutator_sup_right_of_normal (H K N : Subgroup G) [(⁅H, N⁆ ⊔ ⁅K, N⁆).Normal] :
    ⁅H ⊔ K, N⁆ = ⁅H, N⁆ ⊔ ⁅K, N⁆ := by
  refine le_antisymm ?_
    (sup_le (commutator_mono_left le_sup_left) (commutator_mono_left le_sup_right))
  have hH : ⁅H, N⁆ ≤ ⁅H, N⁆ ⊔ ⁅K, N⁆ := le_sup_left
  have hK : ⁅K, N⁆ ≤ ⁅H, N⁆ ⊔ ⁅K, N⁆ := le_sup_right
  rw [← QuotientGroup.ker_mk' (⁅H, N⁆ ⊔ ⁅K, N⁆), ← Subgroup.map_eq_bot_iff,
    map_commutator, Subgroup.commutator_eq_bot_iff_le_centralizer] at hH hK ⊢
  rw [map_sup]
  exact sup_le hH hK

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa949e1fd5a74609ff23fb18b890208fd90625e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
