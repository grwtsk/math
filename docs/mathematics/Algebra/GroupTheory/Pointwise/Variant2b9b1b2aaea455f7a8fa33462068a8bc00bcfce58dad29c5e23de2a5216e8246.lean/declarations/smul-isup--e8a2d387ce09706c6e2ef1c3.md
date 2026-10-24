# smul_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34199fddbd2fe7c16c35e3509d6914da7a20b629",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a20d88a-9ca8-86e3-d6cd-39c649366593",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2954f45-1b81-d81a-50d8-a1265bf0d424",
  "kind": "lemma",
  "lexical_name": "smul_iSup",
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
  "slug": "smul-isup--e8a2d387ce09706c6e2ef1c3",
  "source": {
    "blob": "34199fddbd2fe7c16c35e3509d6914da7a20b629",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 117,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8a2d387ce09706c6e2ef1c3902946848a53ee5942d496954c27526bfd7dc63f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2954f45-1b81-d81a-50d8-a1265bf0d424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_iSup (T : AddSubmonoid R) (S : ι → AddSubmonoid A) : (T • ⨆ i, S i) = ⨆ i, T • S i :=
  le_antisymm (smul_le.mpr fun t ht s hs ↦ iSup_induction _ (motive := (t • · ∈ _)) hs
    (fun i s hs ↦ mem_iSup_of_mem i <| smul_mem_smul ht hs)
    (by simp_rw [smul_zero]; apply zero_mem) fun x y ↦ by simp_rw [smul_add]; apply add_mem)
  (iSup_le fun i ↦ smul_le_smul_right <| le_iSup _ i)

end SMul

section NonUnitalNonAssocSemiring
variable [NonUnitalNonAssocSemiring R] {M N P : AddSubmonoid R}

/-- Multiplication of additive submonoids of a semiring R. The additive submonoid `S * T` is the
smallest R-submodule of `R` containing the elements `s * t` for `s ∈ S` and `t ∈ T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34199fddbd2fe7c16c35e3509d6914da7a20b629` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
