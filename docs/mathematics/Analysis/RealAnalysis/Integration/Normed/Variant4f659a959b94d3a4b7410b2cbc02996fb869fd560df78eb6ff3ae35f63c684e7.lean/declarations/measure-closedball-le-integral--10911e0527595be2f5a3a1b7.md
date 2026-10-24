# measure_closedBall_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b86843a-7c7d-4c85-de99-0c374959e94f",
  "kind": "theorem",
  "lexical_name": "measure_closedBall_le_integral",
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
  "slug": "measure-closedball-le-integral--10911e0527595be2f5a3a1b7",
  "source": {
    "blob": "28881d7a684edf47357f9c12750c8bad993f0131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10911e0527595be2f5a3a1b786d7682adf085cce82f0840564801b0425a7bb4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b86843a-7c7d-4c85-de99-0c374959e94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_closedBall_le_integral : (μ (closedBall c f.rIn)).toReal ≤ ∫ x, f x ∂μ := by calc
  (μ (closedBall c f.rIn)).toReal = ∫ x in closedBall c f.rIn, 1 ∂μ := by simp
  _ = ∫ x in closedBall c f.rIn, f x ∂μ := set_integral_congr (measurableSet_closedBall)
        (fun x hx ↦ (one_of_mem_closedBall f hx).symm)
  _ ≤ ∫ x, f x ∂μ := set_integral_le_integral f.integrable (eventually_of_forall (fun x ↦ f.nonneg))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28881d7a684edf47357f9c12750c8bad993f0131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
