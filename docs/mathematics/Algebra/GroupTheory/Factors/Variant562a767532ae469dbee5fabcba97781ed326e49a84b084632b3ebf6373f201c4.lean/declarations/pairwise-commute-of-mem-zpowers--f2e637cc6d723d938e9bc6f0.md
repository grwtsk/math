# pairwise_commute_of_mem_zpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8220b528637e45bb2de40b8c49f8054695498c92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 602,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7689789d-9b6e-65aa-169a-359f07e26fa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eabdf0bc-98bb-670c-690c-3854f16df101",
  "kind": "lemma",
  "lexical_name": "pairwise_commute_of_mem_zpowers",
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
  "slug": "pairwise-commute-of-mem-zpowers--f2e637cc6d723d938e9bc6f0",
  "source": {
    "blob": "8220b528637e45bb2de40b8c49f8054695498c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 602,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e637cc6d723d938e9bc6f05841baef259f9e92d4421f052cbee2e5bb05d707",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabdf0bc-98bb-670c-690c-3854f16df101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairwise_commute_of_mem_zpowers :
    Pairwise fun (i j : f.cycleFactorsFinset) ↦
      ∀ (x y : Perm α), x ∈ Subgroup.zpowers ↑i → y ∈ Subgroup.zpowers ↑j → Commute x y :=
  f.pairwise_disjoint_of_mem_zpowers.mono
    (fun _ _ ↦ forall₂_imp (fun _ _ h hx hy ↦ (h hx hy).commute))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8220b528637e45bb2de40b8c49f8054695498c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
