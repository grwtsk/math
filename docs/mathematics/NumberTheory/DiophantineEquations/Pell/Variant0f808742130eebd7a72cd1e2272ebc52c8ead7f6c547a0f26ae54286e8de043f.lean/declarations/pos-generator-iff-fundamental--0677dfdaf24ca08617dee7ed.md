# pos_generator_iff_fundamental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f87d666b65f60fffd27dcd2be911526e4dd3f783",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 664,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:174caed0-3aed-75b2-17c3-148489d1b4e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8d8c5a9-9332-aef3-1413-74b4176dc699",
  "kind": "theorem",
  "lexical_name": "pos_generator_iff_fundamental",
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
  "slug": "pos-generator-iff-fundamental--0677dfdaf24ca08617dee7ed",
  "source": {
    "blob": "f87d666b65f60fffd27dcd2be911526e4dd3f783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 664,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0677dfdaf24ca08617dee7eda525787cd7f359e7ca29a57bf5b9b5910cbb42d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8d8c5a9-9332-aef3-1413-74b4176dc699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pos_generator_iff_fundamental (a : Solution₁ d) :
    (1 < a.x ∧ 0 < a.y ∧ ∀ b : Solution₁ d, ∃ n : ℤ, b = a ^ n ∨ b = -a ^ n) ↔ IsFundamental a := by
  refine ⟨fun h => ?_, fun H => ⟨H.1, H.2.1, H.eq_zpow_or_neg_zpow⟩⟩
  have h₀ := d_pos_of_one_lt_x h.1
  have hd := d_nonsquare_of_one_lt_x h.1
  obtain ⟨a₁, ha₁⟩ := IsFundamental.exists_of_not_isSquare h₀ hd
  obtain ⟨b, -, hb₂⟩ := existsUnique_pos_generator h₀ hd
  rwa [hb₂ a h, ← hb₂ a₁ ⟨ha₁.1, ha₁.2.1, ha₁.eq_zpow_or_neg_zpow⟩]

end Pell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87d666b65f60fffd27dcd2be911526e4dd3f783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
