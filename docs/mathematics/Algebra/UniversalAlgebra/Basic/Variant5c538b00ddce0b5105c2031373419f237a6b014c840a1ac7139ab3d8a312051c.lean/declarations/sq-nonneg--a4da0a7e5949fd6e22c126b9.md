# sq_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1208f08492bde25431c84e2c0847228c292f0bb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 685,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd1e21ef-4ce3-9b27-1f27-0a778c29f2b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d42a963-8e77-681a-9803-8680447fc8fb",
  "kind": "lemma",
  "lexical_name": "sq_nonneg",
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
  "slug": "sq-nonneg--a4da0a7e5949fd6e22c126b9",
  "source": {
    "blob": "1208f08492bde25431c84e2c0847228c292f0bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 685,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4da0a7e5949fd6e22c126b99a0ba7e7b0138249699785c7dfafd22b932d7cf2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d42a963-8e77-681a-9803-8680447fc8fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sq_nonneg [IsRightCancelAdd R]
    [ZeroLEOneClass R] [ExistsAddOfLE R] [PosMulMono R] [AddLeftStrictMono R]
    (a : R) : 0 ≤ a ^ 2 := by
  obtain ha | ha := le_total 0 a
  · exact pow_nonneg ha _
  obtain ⟨b, hab⟩ := exists_add_of_le ha
  calc
    0 ≤ b ^ 2 := pow_nonneg (not_lt.1 fun hb ↦ hab.not_gt <| add_neg_of_nonpos_of_neg ha hb) _
    _ = a ^ 2 := add_left_injective (a * b) ?_
  calc
    b ^ 2 + a * b = (a + b) * b := by rw [add_comm, sq, add_mul]
    _ = a * (a + b) := by simp [← hab]
    _ = a ^ 2 + a * b := by rw [sq, mul_add]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1208f08492bde25431c84e2c0847228c292f0bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
