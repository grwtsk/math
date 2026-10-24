# _root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eb3ecbb-cf59-b1b8-65b9-027109efa354",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.abs",
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
  "slug": "root-grwtsk-analysis-measuretheory-coefnle-variant59fb30c9456ed1e3ccffa7--2492419ccd3a8948f06e5951",
  "source": {
    "blob": "d868202b6c8c88ddacb18439f6f043f59b30bcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2492419ccd3a8948f06e59516791fda110222824c194e10b8b20bfbe90f7c78e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eb3ecbb-cf59-b1b8-65b9-027109efa354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.abs {f : α → E} (hf : MemLp f p μ) : MemLp |f| p μ :=
  hf.sup hf.neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d868202b6c8c88ddacb18439f6f043f59b30bcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
