# aeSeq_eq_mk_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe07849d-3028-72dd-e395-e336bf5824cd",
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
  "slug": "aeseq-eq-mk-ae--7859a1ecdba15c1d3b570c21",
  "source": {
    "blob": "2ce1fc795a86c2679f5f09e0941818235352034f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 103,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7859a1ecdba15c1d3b570c217178b2b401486d2d6779a5c44aa631428d01165c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe07849d-3028-72dd-e395-e336bf5824cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeSeq_eq_mk_ae [Countable ι] (hf : ∀ i, AEMeasurable (f i) μ)
    (hp : ∀ᵐ x ∂μ, p x fun n => f n x) : ∀ᵐ a : α ∂μ, ∀ i : ι, aeSeq hf p i a = (hf i).mk (f i) a :=
  have h_ss : aeSeqSet hf p ⊆ { a : α | ∀ i, aeSeq hf p i a = (hf i).mk (f i) a } := fun x hx i =>
    by simp only [aeSeq, hx, if_true]
  (ae_iff.2 (measure_compl_aeSeqSet_eq_zero hf hp)).mono h_ss

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce1fc795a86c2679f5f09e0941818235352034f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
