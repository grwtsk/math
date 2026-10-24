# mul_inv_toFun_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2286326f133eb1c336a1a176283276d195f533c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ebd4a2c-70ea-ac23-d16c-f88c68634d70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52edeedc-0ba5-aae6-3c64-ae54ed1d7eb1",
  "kind": "theorem",
  "lexical_name": "mul_inv_toFun_mem",
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
  "slug": "mul-inv-tofun-mem--e4585334d0423e6ddd6c0b52",
  "source": {
    "blob": "2286326f133eb1c336a1a176283276d195f533c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 421,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4585334d0423e6ddd6c0b52785ce0eccb1754043207b42d54358e16e50ff9bb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52edeedc-0ba5-aae6-3c64-ae54ed1d7eb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv_toFun_mem (hS : S ∈ Subgroup.rightTransversals (H : Set G)) (g : G) :
    g * (toFun hS g : G)⁻¹ ∈ H :=
  QuotientGroup.rightRel_apply.mp <| Quotient.exact' <| mk''_toEquiv _ _
#align subgroup.mem_right_transversals.mul_inv_to_fun_mem Subgroup.MemRightTransversals.mul_inv_toFun_mem
#align add_subgroup.mem_right_transversals.add_neg_to_fun_mem AddSubgroup.MemRightTransversals.add_neg_toFun_mem

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2286326f133eb1c336a1a176283276d195f533c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
