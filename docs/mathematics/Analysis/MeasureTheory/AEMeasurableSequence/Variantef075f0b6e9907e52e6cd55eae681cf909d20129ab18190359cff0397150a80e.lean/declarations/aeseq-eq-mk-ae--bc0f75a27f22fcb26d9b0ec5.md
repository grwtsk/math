# aeSeq_eq_mk_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "748c98f88000dbd2d9b2e97ab41e21c5c62d5e8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84db49d1-2c9d-9250-a3b5-2c28c35f9623",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b069872a-a11e-1543-a2d1-8eebdb459c37",
  "kind": "theorem",
  "lexical_name": "aeSeq_eq_mk_ae",
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
  "slug": "aeseq-eq-mk-ae--bc0f75a27f22fcb26d9b0ec5",
  "source": {
    "blob": "748c98f88000dbd2d9b2e97ab41e21c5c62d5e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc0f75a27f22fcb26d9b0ec505395a65f560ac5f0a0628ca91565d2d3433de3d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b069872a-a11e-1543-a2d1-8eebdb459c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeSeq_eq_mk_ae [Countable ι] (hf : ∀ i, AEMeasurable (f i) μ)
    (hp : ∀ᵐ x ∂μ, p x fun n => f n x) : ∀ᵐ a : α ∂μ, ∀ i : ι, aeSeq hf p i a = (hf i).mk (f i) a :=
  haveI h_ss : aeSeqSet hf p ⊆ { a : α | ∀ i, aeSeq hf p i a = (hf i).mk (f i) a } := fun x hx i =>
    by simp only [aeSeq, hx, if_true]
  le_antisymm
    (le_trans (measure_mono (Set.compl_subset_compl.mpr h_ss))
      (le_of_eq (measure_compl_aeSeqSet_eq_zero hf hp)))
    (zero_le _)
#align ae_seq.ae_seq_eq_mk_ae aeSeq.aeSeq_eq_mk_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748c98f88000dbd2d9b2e97ab41e21c5c62d5e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
