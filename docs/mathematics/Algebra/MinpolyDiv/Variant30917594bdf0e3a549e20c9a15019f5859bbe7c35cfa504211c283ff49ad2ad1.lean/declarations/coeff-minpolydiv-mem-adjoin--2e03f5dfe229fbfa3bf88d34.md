# coeff_minpolyDiv_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdeabc8d727bf6ce2768155cc544197a1311d688",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2645e54b-9512-fb6e-f7bf-93e0a2494773",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:672a76bb-8677-e61f-cdbc-43db0eeac070",
  "kind": "lemma",
  "lexical_name": "coeff_minpolyDiv_mem_adjoin",
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
  "slug": "coeff-minpolydiv-mem-adjoin--2e03f5dfe229fbfa3bf88d34",
  "source": {
    "blob": "cdeabc8d727bf6ce2768155cc544197a1311d688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 80,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e03f5dfe229fbfa3bf88d3445eb6046b9599ddf60ccdc47bce434821eca3fb8",
  "verification": {
    "reference": "docs/verification/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:672a76bb-8677-e61f-cdbc-43db0eeac070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_minpolyDiv_mem_adjoin (x : S) (i) :
    coeff (minpolyDiv R x) i ∈ Algebra.adjoin R {x} := by
  by_contra H
  have : ∀ j, coeff (minpolyDiv R x) (i + j) ∉ Algebra.adjoin R {x} := by
    intro j; induction j with
    | zero => exact H
    | succ j IH =>
      intro H; apply IH
      rw [coeff_minpolyDiv]
      refine add_mem ?_ (mul_mem H (Algebra.self_mem_adjoin_singleton R x))
      exact Subalgebra.algebraMap_mem _ _
  apply this (natDegree (minpolyDiv R x) + 1)
  rw [coeff_eq_zero_of_natDegree_lt]
  · exact zero_mem _
  · refine (Nat.le_add_left _ i).trans_lt ?_
    rw [← add_assoc]
    exact Nat.lt_succ_self _

section IsIntegral
variable (hx : IsIntegral R x)
include hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdeabc8d727bf6ce2768155cc544197a1311d688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
