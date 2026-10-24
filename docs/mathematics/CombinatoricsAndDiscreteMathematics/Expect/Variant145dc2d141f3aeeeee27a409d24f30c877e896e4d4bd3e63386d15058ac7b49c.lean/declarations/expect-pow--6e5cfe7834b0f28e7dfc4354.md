# expect_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92793ea15d3b244065edcf2c5d102ba2b638e2d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/145dc2d141f3aeeeee27a409d24f30c877e896e4d4bd3e63386d15058ac7b49c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15298b2c-5b90-2355-9ee9-620ef6d187cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d5f2709-e3c4-090d-184f-3932f5ff930d",
  "kind": "lemma",
  "lexical_name": "expect_pow",
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
  "slug": "expect-pow--6e5cfe7834b0f28e7dfc4354",
  "source": {
    "blob": "92793ea15d3b244065edcf2c5d102ba2b638e2d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 345,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant145dc2d141f3aeeeee27a409d24f30c877e896e4d4bd3e63386d15058ac7b49c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e5cfe7834b0f28e7dfc43542d114609a5f9be269da66871e87dda33320f9f92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant145dc2d141f3aeeeee27a409d24f30c877e896e4d4bd3e63386d15058ac7b49c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d5f2709-e3c4-090d-184f-3932f5ff930d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expect_pow (s : Finset ι) (f : ι → M) (n : ℕ) :
    (𝔼 i ∈ s, f i) ^ n = 𝔼 p ∈ Fintype.piFinset fun _ : Fin n ↦ s, ∏ i, f (p i) := by
  rw [expect, smul_pow, sum_pow', expect, Fintype.card_piFinset_const, inv_pow, Nat.cast_pow]

end CommSemiring

section Semifield
variable [Semifield K] [CharZero K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant145dc2d141f3aeeeee27a409d24f30c877e896e4d4bd3e63386d15058ac7b49c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant145dc2d141f3aeeeee27a409d24f30c877e896e4d4bd3e63386d15058ac7b49c.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92793ea15d3b244065edcf2c5d102ba2b638e2d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
