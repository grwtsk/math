# frobSq_add_hermitian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2e7d7cb-cdce-5b08-ddd9-432a40aa6fb0",
  "kind": "lemma",
  "lexical_name": "frobSq_add_hermitian",
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
  "slug": "frobsq-add-hermitian--37ecaaa07ba38398e37b10a7",
  "source": {
    "blob": "ec5b21785eb0c8aeded004bcec1569aff22bd1f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ecaaa07ba38398e37b10a7d6a6fd0c401c8451603a18866c378f4046477928",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2e7d7cb-cdce-5b08-ddd9-432a40aa6fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frobSq_add_hermitian {A B : Matrix n n 𝕜}
    (hA : A.IsHermitian) (hB : B.IsHermitian) :
    frobSq (A + B) = frobSq A + 2 * RCLike.re (A * B).trace + frobSq B := by
  unfold frobSq
  rw [(hA.add hB).eq, hA.eq, hB.eq, add_mul, mul_add, mul_add,
    trace_add, trace_add, trace_add, map_add, map_add, map_add,
    re_trace_mul_comm B A]
  ring

omit [DecidableEq n] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variantbf3dde4a4debca05024074cfdf55fdac99a6c64e683a8e394bed6b13b23dd1c8.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec5b21785eb0c8aeded004bcec1569aff22bd1f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
