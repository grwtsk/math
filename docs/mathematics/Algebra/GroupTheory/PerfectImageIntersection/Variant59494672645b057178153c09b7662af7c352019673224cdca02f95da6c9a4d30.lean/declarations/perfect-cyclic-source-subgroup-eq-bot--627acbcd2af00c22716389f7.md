# perfect_cyclic_source_subgroup_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3995a4e3-95a9-c955-010c-51c702a46d07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e0b2e92-d5ee-0753-c193-8cd2a0ebb85b",
  "kind": "theorem",
  "lexical_name": "perfect_cyclic_source_subgroup_eq_bot",
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
  "slug": "perfect-cyclic-source-subgroup-eq-bot--627acbcd2af00c22716389f7",
  "source": {
    "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:627acbcd2af00c22716389f77d82fd2bcfd657e383e9c9d484123f8cd18f897a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e0b2e92-d5ee-0753-c193-8cd2a0ebb85b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfect_cyclic_source_subgroup_eq_bot (M : ℕ) (P : AddSubgroup (ZMod M))
    (hP : ⁅P.toSubgroup, P.toSubgroup⁆ = P.toSubgroup) : P = ⊥ := by
  have hbot : ⁅P.toSubgroup, P.toSubgroup⁆ = ⊥ :=
    (Subgroup.commutator_self_eq_bot_iff (H := P.toSubgroup)).mpr inferInstance
  apply AddSubgroup.toSubgroup.injective
  exact hP.symm.trans hbot

end FormalResearch.FiniteLatticeArithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e58b9bdf0e960862417a47fc0bb013cdf16e29d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
