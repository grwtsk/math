# mem_or_mem_of_zipWith_swap_prod_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18e40f114c908757d2506ef7f9971779af2c5bd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3615fdaf-08ac-6307-97d6-275d89e540ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d27782a0-d5df-f1a8-8284-950d5ff44c59",
  "kind": "theorem",
  "lexical_name": "mem_or_mem_of_zipWith_swap_prod_ne",
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
  "slug": "mem-or-mem-of-zipwith-swap-prod-ne--2540644e8a0f7c313bf856b6",
  "source": {
    "blob": "18e40f114c908757d2506ef7f9971779af2c5bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2540644e8a0f7c313bf856b65190bee27832c444015b9f4e5b09747719c81220",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d27782a0-d5df-f1a8-8284-950d5ff44c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_or_mem_of_zipWith_swap_prod_ne : ∀ {l l' : List α} {x : α},
    (zipWith Equiv.swap l l').prod x ≠ x → x ∈ l ∨ x ∈ l'
  | [], _, _ => by simp
  | _, [], _ => by simp
  | a::l, b::l', x => fun hx ↦
    if h : (zipWith Equiv.swap l l').prod x = x then
      (eq_or_eq_of_swap_apply_ne_self (a := a) (b := b) (x := x) (by simpa [h] using hx)).imp
        (by rintro rfl; exact .head _) (by rintro rfl; exact .head _)
    else
     (mem_or_mem_of_zipWith_swap_prod_ne h).imp (.tail _) (.tail _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18e40f114c908757d2506ef7f9971779af2c5bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
