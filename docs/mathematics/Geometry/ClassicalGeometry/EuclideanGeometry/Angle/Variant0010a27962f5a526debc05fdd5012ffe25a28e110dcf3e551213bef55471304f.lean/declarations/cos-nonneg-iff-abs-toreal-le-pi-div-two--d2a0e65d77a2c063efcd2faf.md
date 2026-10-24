# cos_nonneg_iff_abs_toReal_le_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f852d6915c7db18dff201cfba4825ed13e22bf48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 732,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f63eea55-6cd3-af44-a9a3-a644c5052a22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9f51635-0c2d-dd16-172e-6ae3f1de586f",
  "kind": "theorem",
  "lexical_name": "cos_nonneg_iff_abs_toReal_le_pi_div_two",
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
  "slug": "cos-nonneg-iff-abs-toreal-le-pi-div-two--d2a0e65d77a2c063efcd2faf",
  "source": {
    "blob": "f852d6915c7db18dff201cfba4825ed13e22bf48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 732,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a0e65d77a2c063efcd2faf3281691226771ea4f381929b19edc4d9012a03e6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9f51635-0c2d-dd16-172e-6ae3f1de586f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_nonneg_iff_abs_toReal_le_pi_div_two {θ : Angle} : 0 ≤ cos θ ↔ |θ.toReal| ≤ π / 2 := by
  nth_rw 1 [← coe_toReal θ]
  rw [abs_le, cos_coe]
  refine' ⟨fun h => _, cos_nonneg_of_mem_Icc⟩
  by_contra hn
  rw [not_and_or, not_le, not_le] at hn
  refine' (not_lt.2 h) _
  rcases hn with (hn | hn)
  · rw [← Real.cos_neg]
    refine' cos_neg_of_pi_div_two_lt_of_lt (by linarith) _
    linarith [neg_pi_lt_toReal θ]
  · refine' cos_neg_of_pi_div_two_lt_of_lt hn _
    linarith [toReal_le_pi θ]
#align real.angle.cos_nonneg_iff_abs_to_real_le_pi_div_two Real.Angle.cos_nonneg_iff_abs_toReal_le_pi_div_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f852d6915c7db18dff201cfba4825ed13e22bf48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
