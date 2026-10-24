# aeSeq_n_eq_fun_n_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:289e1bc6-d896-0e14-e27d-531b1a53d83f",
  "kind": "theorem",
  "lexical_name": "aeSeq_n_eq_fun_n_ae",
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
  "slug": "aeseq-n-eq-fun-n-ae--0d2df029996e0c40b70c8c2c",
  "source": {
    "blob": "f13d6d9ac16c240945bf63a6ee5fe762af505425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 133,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d2df029996e0c40b70c8c2c607108bf7aa6417b02209e60adae8a240e4b829a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289e1bc6-d896-0e14-e27d-531b1a53d83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeSeq_n_eq_fun_n_ae [Countable ι] (hf : ∀ i, AEMeasurable (f i) μ)
    (hp : ∀ᵐ x ∂μ, p x fun n => f n x) (n : ι) : aeSeq hf p n =ᵐ[μ] f n :=
  ae_all_iff.mp (aeSeq_eq_fun_ae hf hp) n
#align ae_seq.ae_seq_n_eq_fun_n_ae aeSeq.aeSeq_n_eq_fun_n_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13d6d9ac16c240945bf63a6ee5fe762af505425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
