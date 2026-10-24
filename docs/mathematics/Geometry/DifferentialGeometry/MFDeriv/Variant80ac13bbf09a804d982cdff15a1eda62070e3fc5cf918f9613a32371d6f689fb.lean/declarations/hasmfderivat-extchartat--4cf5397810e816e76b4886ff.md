# hasMFDerivAt_extChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1992,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d83eda75-fec2-9fee-424d-e12c15ac9393",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a488929-4463-4c15-c732-284102062af4",
  "kind": "theorem",
  "lexical_name": "hasMFDerivAt_extChartAt",
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
  "slug": "hasmfderivat-extchartat--4cf5397810e816e76b4886ff",
  "source": {
    "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1996,
    "line": 1992,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cf5397810e816e76b4886ff60c8d3e77a2002713f3e8720b06c2ac8241b99c3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a488929-4463-4c15-c732-284102062af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1992–1996.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasMFDerivAt_extChartAt (h : y ∈ (chartAt H x).source) :
    HasMFDerivAt I 𝓘(𝕜, E) (extChartAt I x) y (mfderiv I I (chartAt H x) y : _) :=
  I.hasMFDerivAt.comp y ((mdifferentiable_chart I x).mdifferentiableAt h).hasMFDerivAt
#align has_mfderiv_at_ext_chart_at hasMFDerivAt_extChartAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean#L1992).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e199bd0574779cf65ad0ca6c87251b12a8c06f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
