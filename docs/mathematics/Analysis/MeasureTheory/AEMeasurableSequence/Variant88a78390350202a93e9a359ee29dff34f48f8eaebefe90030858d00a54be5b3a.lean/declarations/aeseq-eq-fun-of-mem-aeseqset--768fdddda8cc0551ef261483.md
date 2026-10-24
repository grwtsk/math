# aeSeq_eq_fun_of_mem_aeSeqSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d588d0f4-368d-fb45-373a-e91dcd6d9d4b",
  "kind": "theorem",
  "lexical_name": "aeSeq_eq_fun_of_mem_aeSeqSet",
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
  "slug": "aeseq-eq-fun-of-mem-aeseqset--768fdddda8cc0551ef261483",
  "source": {
    "blob": "2ce1fc795a86c2679f5f09e0941818235352034f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 65,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:768fdddda8cc0551ef2614839e2317c07a44c4d7fe78343bb34e37163686a595",
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

Occurrence: `result:d588d0f4-368d-fb45-373a-e91dcd6d9d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeSeq_eq_fun_of_mem_aeSeqSet (hf : ∀ i, AEMeasurable (f i) μ) {x : α}
    (hx : x ∈ aeSeqSet hf p) (i : ι) : aeSeq hf p i x = f i x := by
  simp only [aeSeq_eq_mk_of_mem_aeSeqSet hf hx i, mk_eq_fun_of_mem_aeSeqSet hf hx i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce1fc795a86c2679f5f09e0941818235352034f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
