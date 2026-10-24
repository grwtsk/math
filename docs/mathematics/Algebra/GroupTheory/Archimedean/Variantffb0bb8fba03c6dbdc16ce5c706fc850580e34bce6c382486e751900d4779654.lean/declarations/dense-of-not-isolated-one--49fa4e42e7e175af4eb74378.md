# dense_of_not_isolated_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7834dc78a057c28a34a74f29803a5039880b191d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bc4be7f-112a-c027-3495-7f4cf0ad6e65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d857001-d28f-86e6-66bc-56a58a447e7e",
  "kind": "theorem",
  "lexical_name": "dense_of_not_isolated_one",
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
  "slug": "dense-of-not-isolated-one--49fa4e42e7e175af4eb74378",
  "source": {
    "blob": "7834dc78a057c28a34a74f29803a5039880b191d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49fa4e42e7e175af4eb743784c9cbf5a68e0f8a2a9cc26840c124a3627aef690",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d857001-d28f-86e6-66bc-56a58a447e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_of_not_isolated_one (S : Subgroup G) (hS : ∀ ε > 1, ∃ g ∈ S, g ∈ Ioo 1 ε) :
    Dense (S : Set G) := by
  cases subsingleton_or_nontrivial G
  · refine fun x => _root_.subset_closure ?_
    rw [Subsingleton.elim x 1]
    exact one_mem S
  refine dense_of_exists_between fun a b hlt => ?_
  rcases hS (b / a) (one_lt_div'.2 hlt) with ⟨g, hgS, hg0, hg⟩
  rcases (existsUnique_add_zpow_mem_Ioc hg0 1 a).exists with ⟨m, hm⟩
  rw [one_mul] at hm
  refine ⟨g ^ m, zpow_mem hgS _, hm.1, hm.2.trans_lt ?_⟩
  rwa [lt_div_iff_mul_lt'] at hg

/-- Let `S` be a nontrivial subgroup in an archimedean linear ordered multiplicative commutative
group `G` with order topology. If the set of elements of `S` that are greater than one
does not have a minimal element, then `S` is dense `G`. -/
@[to_additive "Let `S` be a nontrivial additive subgroup in an archimedean linear ordered additive
commutative group `G` with order topology. If the set of positive elements of `S` does not have a
minimal element, then `S` is dense `G`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7834dc78a057c28a34a74f29803a5039880b191d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
