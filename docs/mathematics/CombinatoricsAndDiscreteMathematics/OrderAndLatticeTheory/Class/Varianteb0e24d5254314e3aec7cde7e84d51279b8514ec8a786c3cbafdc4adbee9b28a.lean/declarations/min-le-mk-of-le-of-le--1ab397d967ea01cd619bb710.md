# min_le_mk_of_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06fbc370beee0135a44a1d8394614927229779a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed74ad30-25e9-368a-f82a-6a0d9cf67887",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bde2638-5f3e-501d-c3ba-271e25697a9b",
  "kind": "theorem",
  "lexical_name": "min_le_mk_of_le_of_le",
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
  "slug": "min-le-mk-of-le-of-le--1ab397d967ea01cd619bb710",
  "source": {
    "blob": "06fbc370beee0135a44a1d8394614927229779a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 346,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ab397d967ea01cd619bb7108f5b9fae876aa50532a09d34588ef10a8bddb236",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bde2638-5f3e-501d-c3ba-271e25697a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_le_mk_of_le_of_le {x y z : M} (hy : y ≤ x) (hz : x ≤ z) : min (mk y) (mk z) ≤ mk x := by
  have H := mabs_le_max_mabs_mabs hy hz
  rw [← mabs_of_one_le (le_max_of_le_left (one_le_mabs y))] at H
  apply (mk_le_mk_of_mabs H).trans'
  obtain h | h := le_total |y|ₘ |z|ₘ
  · rw [max_eq_right h, min_eq_right, mk_mabs]
    exact mk_le_mk_of_mabs h
  · rw [max_eq_left h, min_eq_left, mk_mabs]
    exact mk_le_mk_of_mabs h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06fbc370beee0135a44a1d8394614927229779a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
