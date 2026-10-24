# denselyOrdered_iff_denselyOrdered_units_and_nontrivial_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "710225fd8aa1765132f25802340186b1aea369b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9a88e64-b27a-e3fc-5b08-21abcd37a43d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8cbc203-d687-1787-9f95-4779117b371f",
  "kind": "lemma",
  "lexical_name": "denselyOrdered_iff_denselyOrdered_units_and_nontrivial_units",
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
  "slug": "denselyordered-iff-denselyordered-units-and-nontrivial-units--996273673ce9d3f68dbccc15",
  "source": {
    "blob": "710225fd8aa1765132f25802340186b1aea369b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:996273673ce9d3f68dbccc15811c87f3d721d195bcbd3c252f84cc3881c58cb5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8cbc203-d687-1787-9f95-4779117b371f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma denselyOrdered_iff_denselyOrdered_units_and_nontrivial_units :
    DenselyOrdered α ↔ Nontrivial αˣ ∧ DenselyOrdered αˣ := by
  refine ⟨fun H ↦ ⟨?_, ?_⟩, fun ⟨H₁, H₂⟩ ↦ ?_⟩
  · obtain ⟨x, hx, hx'⟩ := exists_between (zero_lt_one' α)
    exact ⟨Units.mk0 x hx.ne', 1, by simpa [Units.ext_iff] using hx'.ne⟩
  · refine ⟨fun x y h ↦ ?_⟩
    obtain ⟨z, hz⟩ := exists_between (Units.val_lt_val.mpr h)
    refine ⟨Units.mk0 z (ne_zero_of_lt hz.1), by simp [← Units.val_lt_val, hz]⟩
  · refine ⟨fun x y h ↦ ?_⟩
    lift y to αˣ using (ne_zero_of_lt h).isUnit
    obtain rfl | hx := eq_zero_or_pos x
    · obtain ⟨z, hz⟩ := exists_one_lt' (α := αˣ)
      exact ⟨(y * z⁻¹ : αˣ), by simp, Units.val_lt_val.mpr <| by simp [hz]⟩
    · lift x to αˣ using hx.ne'.isUnit
      obtain ⟨z, hz, hz'⟩ := H₂.dense x y (Units.val_lt_val.mpr h)
      exact ⟨z, by simp [hz, hz']⟩

-- Counterexample with monoid: `{ x : ℝ | 0 ≤ x ≤ 1 }`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant0c71a221412e02fe2e20e26b2a6af63558e4c5dc31d6b90c4a3cf33a0c1a57bd.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710225fd8aa1765132f25802340186b1aea369b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
