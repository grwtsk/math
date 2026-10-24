# mem_support_cycleOf_iff_aux

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
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ff50631-dacc-f27b-c5da-46a79ee7107b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d774e5a9-a985-896d-4b6f-6319389a5512",
  "kind": "theorem",
  "lexical_name": "mem_support_cycleOf_iff_aux",
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
  "slug": "mem-support-cycleof-iff-aux--83da393c29f11ca33cf0bcd7",
  "source": {
    "blob": "8220b528637e45bb2de40b8c49f8054695498c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83da393c29f11ca33cf0bcd74ed249f48aadbeba0e3607cfeb83c050f0dacf33",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d774e5a9-a985-896d-4b6f-6319389a5512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_support_cycleOf_iff_aux [DecidableRel f.SameCycle] [DecidableEq α] [Fintype α] :
    y ∈ support (f.cycleOf x) ↔ SameCycle f x y ∧ x ∈ support f := by
  by_cases hx : f x = x
  · rw [(cycleOf_eq_one_iff _).mpr hx]
    simp [hx]
  · rw [mem_support, cycleOf_apply]
    split_ifs with hy
    · simp only [hx, hy, Ne, not_false_iff, and_self_iff, mem_support]
      rcases hy with ⟨k, rfl⟩
      rw [← notMem_support]
      simpa using hx
    · simpa [hx] using hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variant562a767532ae469dbee5fabcba97781ed326e49a84b084632b3ebf6373f201c4.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8220b528637e45bb2de40b8c49f8054695498c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
