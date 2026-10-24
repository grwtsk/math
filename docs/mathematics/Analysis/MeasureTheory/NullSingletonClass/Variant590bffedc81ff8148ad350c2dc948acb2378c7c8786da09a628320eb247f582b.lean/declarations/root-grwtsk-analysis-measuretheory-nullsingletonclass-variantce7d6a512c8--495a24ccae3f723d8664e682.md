# _root_.GRWTSK.Analysis.MeasureTheory.NullSingletonClass.Variantce7d6a512c82ac79452e80ef3ce19de86a55ee0976ba5a2abd0aa889cab9894c.Set.Countable.measure_restrict_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03ead174-4ff0-fb4d-9574-cfc04fa2607b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.NullSingletonClass.Variantce7d6a512c82ac79452e80ef3ce19de86a55ee0976ba5a2abd0aa889cab9894c.Set.Countable.measure_restrict_compl",
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
  "slug": "root-grwtsk-analysis-measuretheory-nullsingletonclass-variantce7d6a512c8--495a24ccae3f723d8664e682",
  "source": {
    "blob": "a0684af861eddc9835172dfd6fb67e80f7e5da93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/NullSingletonClass/Variant590bffedc81ff8148ad350c2dc948acb2378c7c8786da09a628320eb247f582b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:495a24ccae3f723d8664e68241ac873d01d02f5d990ff6ab7f26e23e9c3a9ce4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullSingletonClass/Variant590bffedc81ff8148ad350c2dc948acb2378c7c8786da09a628320eb247f582b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ead174-4ff0-fb4d-9574-cfc04fa2607b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.NullSingletonClass.Variantce7d6a512c82ac79452e80ef3ce19de86a55ee0976ba5a2abd0aa889cab9894c.Set.Countable.measure_restrict_compl (h : s.Countable) (μ : Measure α)
    [NullSingletonClass μ] :
    μ.restrict sᶜ = μ :=
  restrict_eq_self_of_ae_mem <| h.ae_notMem μ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullSingletonClass/Variant590bffedc81ff8148ad350c2dc948acb2378c7c8786da09a628320eb247f582b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullSingletonClass/Variant590bffedc81ff8148ad350c2dc948acb2378c7c8786da09a628320eb247f582b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0684af861eddc9835172dfd6fb67e80f7e5da93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
