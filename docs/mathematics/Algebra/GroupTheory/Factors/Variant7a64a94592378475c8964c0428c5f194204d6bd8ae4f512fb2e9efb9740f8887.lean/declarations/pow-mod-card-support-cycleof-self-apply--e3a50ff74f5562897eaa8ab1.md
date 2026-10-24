# pow_mod_card_support_cycleOf_self_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b92c71b484fcb1c327cdc72dedf42ccfd73547c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:046ff261-4536-6b08-b33c-1fd9e40d3fdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cd6931f-a66f-8902-2e26-3e9c6236f5c3",
  "kind": "theorem",
  "lexical_name": "pow_mod_card_support_cycleOf_self_apply",
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
  "slug": "pow-mod-card-support-cycleof-self-apply--e3a50ff74f5562897eaa8ab1",
  "source": {
    "blob": "b92c71b484fcb1c327cdc72dedf42ccfd73547c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 311,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3a50ff74f5562897eaa8ab15f114da536a4c2c725ee36a9a353b3c4035d624c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cd6931f-a66f-8902-2e26-3e9c6236f5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_mod_card_support_cycleOf_self_apply [DecidableEq α] [Fintype α]
    (f : Perm α) (n : ℕ) (x : α) : (f ^ (n % #(f.cycleOf x).support)) x = (f ^ n) x := by
  by_cases hx : f x = x
  · rw [pow_apply_eq_self_of_apply_eq_self hx, pow_apply_eq_self_of_apply_eq_self hx]
  · rw [← cycleOf_pow_apply_self, ← cycleOf_pow_apply_self f, ← (isCycle_cycleOf f hx).orderOf,
      pow_mod_orderOf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant7a64a94592378475c8964c0428c5f194204d6bd8ae4f512fb2e9efb9740f8887.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92c71b484fcb1c327cdc72dedf42ccfd73547c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
