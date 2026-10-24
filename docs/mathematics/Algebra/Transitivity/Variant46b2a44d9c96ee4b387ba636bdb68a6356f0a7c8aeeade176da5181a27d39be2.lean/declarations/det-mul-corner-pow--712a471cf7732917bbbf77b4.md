# det_mul_corner_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24644d89d6d10a9f43fa0557b32b8e7d5a1aa26f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a536a933-3825-af38-e4ec-516b70879426",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e11a891-9856-ddb1-16ba-270fea96d867",
  "kind": "lemma",
  "lexical_name": "det_mul_corner_pow",
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
  "slug": "det-mul-corner-pow--712a471cf7732917bbbf77b4",
  "source": {
    "blob": "24644d89d6d10a9f43fa0557b32b8e7d5a1aa26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:712a471cf7732917bbbf77b4b3592349246d768bb2480baeca4a5688ad314d52",
  "verification": {
    "reference": "docs/verification/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e11a891-9856-ddb1-16ba-270fea96d867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma det_mul_corner_pow :
    M.det * M k k ^ (Fintype.card m - 1) = M k k * (mulAuxMatBlock).det := by
  let := Prop.linearOrder
  trans (M * auxMat M k).det
  · simp [det_mul, (auxMat_blockTriangular M k).det_fintype,
      auxMat_toSquareBlock_ne, auxMat_toSquareBlock_eq]
  rw [(mul_auxMat_blockTriangular M k).det_fintype, Fintype.prod_Prop, mul_auxMat_toSquareBlock_eq]
  simp_rw [det_smul_of_tower, eq_iff_iff, iff_true, Fintype.card_unique,
    pow_one, det_one, smul_eq_mul, mul_one]
  -- `Decidable (P = Q)` diamond induced by `Prop.linearOrder`, which is classical, when `P` and `Q`
  -- are themselves decidable.
  convert! rfl

/-- A matrix with X added to the corner. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24644d89d6d10a9f43fa0557b32b8e7d5a1aa26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
