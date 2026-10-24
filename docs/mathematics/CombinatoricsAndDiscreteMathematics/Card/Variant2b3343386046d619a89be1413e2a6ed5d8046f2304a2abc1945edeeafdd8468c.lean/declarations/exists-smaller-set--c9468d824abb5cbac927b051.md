# exists_smaller_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:360883c3-4f7d-eff9-a4a4-3241de1a4765",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fb7576a-1b66-00dc-e12a-9a395b401cb6",
  "kind": "theorem",
  "lexical_name": "exists_smaller_set",
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
  "slug": "exists-smaller-set--c9468d824abb5cbac927b051",
  "source": {
    "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 487,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9468d824abb5cbac927b05154891b8f96d4fd0f0763c580b9cfc06e712dcad1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb7576a-1b66-00dc-e12a-9a395b401cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smaller_set (A : Finset α) (i : ℕ) (h₁ : i ≤ card A) :
    ∃ B : Finset α, B ⊆ A ∧ card B = i :=
  let ⟨B, _, x₁, x₂⟩ := exists_intermediate_set i (by simpa) (empty_subset A)
  ⟨B, x₁, x₂⟩
#align finset.exists_smaller_set Finset.exists_smaller_set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569c6f8297515ce337ad9ae4c9ebb94bd2554386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
