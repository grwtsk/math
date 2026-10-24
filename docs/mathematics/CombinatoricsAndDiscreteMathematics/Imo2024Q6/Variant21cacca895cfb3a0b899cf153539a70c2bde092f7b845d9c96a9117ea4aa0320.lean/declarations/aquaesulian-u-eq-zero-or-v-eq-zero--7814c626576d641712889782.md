# Aquaesulian.u_eq_zero_or_v_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3aaa1a65a5f3105cae9534903542da50bf9e54dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:383e66a3-4c10-fba0-f3d8-5e8a705a6b94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:565a1c80-c6a6-b3e9-bb52-0674c845d8b3",
  "kind": "lemma",
  "lexical_name": "Aquaesulian.u_eq_zero_or_v_eq_zero",
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
  "slug": "aquaesulian-u-eq-zero-or-v-eq-zero--7814c626576d641712889782",
  "source": {
    "blob": "3aaa1a65a5f3105cae9534903542da50bf9e54dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7814c626576d641712889782fe7348309e519c95f85b75d8cefbe858770abd38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:565a1c80-c6a6-b3e9-bb52-0674c845d8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Aquaesulian.u_eq_zero_or_v_eq_zero {x y u v : G} (huv : u ≠ v) (hx : f x + f (-x) = u)
    (hy : f y + f (-y) = v) : u = 0 ∨ v = 0 := by
  rcases h.g_two huv hx hy with hxy' | hxy'
  · exact .inl (h.u_eq_zero huv hx hy hxy')
  · rw [add_comm x y, add_comm (-(f (-x))) (-(f (-y)))] at hxy'
    exact .inr (h.u_eq_zero huv.symm hy hx hxy')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant21cacca895cfb3a0b899cf153539a70c2bde092f7b845d9c96a9117ea4aa0320.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aaa1a65a5f3105cae9534903542da50bf9e54dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
