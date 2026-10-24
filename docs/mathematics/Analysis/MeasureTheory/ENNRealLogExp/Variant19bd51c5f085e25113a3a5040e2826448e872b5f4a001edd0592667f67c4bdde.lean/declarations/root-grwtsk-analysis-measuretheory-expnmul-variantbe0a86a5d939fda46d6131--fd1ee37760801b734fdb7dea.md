# _root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.tendsto_exp_nhds_zero_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16cf46b6-c746-5e86-3608-5265d3efbf8d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.tendsto_exp_nhds_zero_nhds_one",
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
  "slug": "root-grwtsk-analysis-measuretheory-expnmul-variantbe0a86a5d939fda46d6131--fd1ee37760801b734fdb7dea",
  "source": {
    "blob": "3500b3eb32c792a6d9d525b20b5e1d133d24caa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 136,
    "path": "GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd1ee37760801b734fdb7dea7a8f125edadb5592f81b5b8d0d0e0f286029720d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16cf46b6-c746-5e86-3608-5265d3efbf8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.EReal.tendsto_exp_nhds_zero_nhds_one : Filter.Tendsto exp (𝓝 0) (𝓝 1) := by
  convert! continuous_exp.tendsto 0
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variant19bd51c5f085e25113a3a5040e2826448e872b5f4a001edd0592667f67c4bdde.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3500b3eb32c792a6d9d525b20b5e1d133d24caa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
