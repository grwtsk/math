# measurable_of_real_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d91465b6-6b32-9d49-7496-e53f36040ab8",
  "kind": "lemma",
  "lexical_name": "measurable_of_real_prod",
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
  "slug": "measurable-of-real-prod--ef91e39e050c6f4ba0ad8b3c",
  "source": {
    "blob": "8a25633b4775782565ba768b78967f5aa0ab171d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 487,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef91e39e050c6f4ba0ad8b3ce3126e387d6c14c56fc0550720253e89ca6a5396",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d91465b6-6b32-9d49-7496-e53f36040ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_of_real_prod {f : EReal × β → γ}
    (h_real : Measurable fun p : ℝ × β ↦ f (p.1, p.2))
    (h_bot : Measurable fun x ↦ f (⊥, x)) (h_top : Measurable fun x ↦ f (⊤, x)) : Measurable f :=
  .of_union₃_range_cover (measurableEmbedding_prodMk_left _) (measurableEmbedding_prodMk_left _)
    (measurableEmbedding_coe.prodMap .id) (by simp [-univ_subset_iff, subset_def, EReal.forall])
    h_bot h_top h_real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a25633b4775782565ba768b78967f5aa0ab171d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
