# apply_mem_rootsOfUnity_orderOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a90d56bec1499206a106408f2986f8d90aecbd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2904f957-c1d5-4028-8021-c39d424de162",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35196919-ef60-275b-3d2f-b3ce0622a801",
  "kind": "lemma",
  "lexical_name": "apply_mem_rootsOfUnity_orderOf",
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
  "slug": "apply-mem-rootsofunity-orderof--e36c56881ffefacfb322aa05",
  "source": {
    "blob": "1a90d56bec1499206a106408f2986f8d90aecbd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e36c56881ffefacfb322aa053adeea9c5c4143ff83d5c0cf000482239d963fd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35196919-ef60-275b-3d2f-b3ce0622a801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mem_rootsOfUnity_orderOf (χ : MulChar F R) {a : F} (ha : a ≠ 0) :
    ∃ ζ ∈ rootsOfUnity (orderOf χ) R, ζ = χ a := by
  have hu : IsUnit (χ a) := ha.isUnit.map χ
  refine ⟨hu.unit, ?_, hu.unit_spec⟩
  rw [mem_rootsOfUnity, Units.ext_iff, Units.val_pow_eq_pow_val, Units.val_one,
    IsUnit.unit_spec, ← χ.pow_apply' χ.orderOf_pos.ne', pow_orderOf_eq_one,
    show a = (isUnit_iff_ne_zero.mpr ha).unit by simp only [IsUnit.unit_spec],
    MulChar.one_apply_coe]

/-- The non-zero values of a multiplicative character `χ` such that `χ^n = 1`
are `n`th roots of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a90d56bec1499206a106408f2986f8d90aecbd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
