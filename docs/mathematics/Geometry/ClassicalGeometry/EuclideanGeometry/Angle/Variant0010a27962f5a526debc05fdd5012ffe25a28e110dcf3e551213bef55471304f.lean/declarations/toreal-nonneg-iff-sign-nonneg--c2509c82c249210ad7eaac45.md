# toReal_nonneg_iff_sign_nonneg

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
      "line": 907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ff9fed3-5ad9-45fc-45c1-a2a3c0e83eec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:082e7a7a-3d2b-0e95-2905-ec542a699559",
  "kind": "theorem",
  "lexical_name": "toReal_nonneg_iff_sign_nonneg",
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
  "slug": "toreal-nonneg-iff-sign-nonneg--c2509c82c249210ad7eaac45",
  "source": {
    "blob": "f852d6915c7db18dff201cfba4825ed13e22bf48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 907,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2509c82c249210ad7eaac45d971a86e3a8c5be5a852e3cdf7addb7dc88daf42",
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

Occurrence: `result:082e7a7a-3d2b-0e95-2905-ec542a699559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toReal_nonneg_iff_sign_nonneg {θ : Angle} : 0 ≤ θ.toReal ↔ 0 ≤ θ.sign := by
  rcases lt_trichotomy θ.toReal 0 with (h | h | h)
  · refine' ⟨fun hn => False.elim (h.not_le hn), fun hn => _⟩
    rw [toReal_neg_iff_sign_neg.1 h] at hn
    exact False.elim (hn.not_lt (by decide))
  · simp [h, sign, ← sin_toReal]
  · refine' ⟨fun _ => _, fun _ => h.le⟩
    rw [sign, ← sin_toReal, sign_nonneg_iff]
    exact sin_nonneg_of_nonneg_of_le_pi h.le (toReal_le_pi θ)
#align real.angle.to_real_nonneg_iff_sign_nonneg Real.Angle.toReal_nonneg_iff_sign_nonneg

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f852d6915c7db18dff201cfba4825ed13e22bf48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
