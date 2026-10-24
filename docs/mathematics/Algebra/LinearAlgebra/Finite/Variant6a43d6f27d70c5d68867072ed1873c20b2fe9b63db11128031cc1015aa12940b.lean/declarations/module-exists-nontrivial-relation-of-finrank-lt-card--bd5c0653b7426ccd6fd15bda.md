# Module.exists_nontrivial_relation_of_finrank_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95945b016c4ab559c482b5ab8632e4fa9e8d17ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:600ee7e6-3a6d-6e01-24f2-086ee48905cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11e09e0f-cea7-34bc-228b-0462820a5966",
  "kind": "theorem",
  "lexical_name": "Module.exists_nontrivial_relation_of_finrank_lt_card",
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
  "slug": "module-exists-nontrivial-relation-of-finrank-lt-card--bd5c0653b7426ccd6fd15bda",
  "source": {
    "blob": "95945b016c4ab559c482b5ab8632e4fa9e8d17ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd5c0653b7426ccd6fd15bdac35afcaca02eb381595caffad2b1ab25e053963b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e09e0f-cea7-34bc-228b-0462820a5966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.exists_nontrivial_relation_of_finrank_lt_card {t : Finset M}
    (h : finrank R M < t.card) : ∃ f : M → R, ∑ e ∈ t, f e • e = 0 ∧ ∃ x ∈ t, f x ≠ 0 := by
  obtain ⟨g, sum, z, nonzero⟩ := Fintype.not_linearIndependent_iff.mp
    (mt LinearIndependent.finset_card_le_finrank h.not_ge)
  refine ⟨Subtype.val.extend g 0, ?_, z, z.2, by rwa [Subtype.val_injective.extend_apply]⟩
  rw [← Finset.sum_finset_coe]; convert! sum; apply Subtype.val_injective.extend_apply

/-- If a finset has cardinality larger than `finrank + 1`,
then there is a nontrivial linear relation amongst its elements,
such that the coefficients of the relation sum to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95945b016c4ab559c482b5ab8632e4fa9e8d17ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
