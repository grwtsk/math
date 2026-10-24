# measure_iUnionNotConvergentSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5258b632-6640-c447-3ff3-d9de15d30687",
  "kind": "theorem",
  "lexical_name": "measure_iUnionNotConvergentSeq",
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
  "slug": "measure-iunionnotconvergentseq--59bbc6e9c03b3f41577d901c",
  "source": {
    "blob": "ce91ab5496e5e4d3e3db582666c8cd7575d7ff20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 146,
    "path": "GRWTSK/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59bbc6e9c03b3f41577d901cd5d046923ecad7027bb1587b42d122e53d91797b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5258b632-6640-c447-3ff3-d9de15d30687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_iUnionNotConvergentSeq (hε : 0 < ε)
    (hf : ∀ n, Measurable (fun a ↦ edist (f n a) (g a)))
    (hsm : MeasurableSet s) (hs : μ s ≠ ∞)
    (hfg : ∀ᵐ x ∂μ, x ∈ s → Tendsto (fun n => f n x) atTop (𝓝 (g x))) :
    μ (iUnionNotConvergentSeq hε hf hsm hs hfg) ≤ ε := by
  refine (measure_iUnion_le _).trans (le_trans
    (ENNReal.tsum_le_tsum <| notConvergentSeqLTIndex_spec (ε.half_pos hε.ne') hf hsm hs hfg) ?_)
  rw [ENNReal.tsum_mul_left, ENNReal.tsum_geometric_two, mul_comm]
  exact mul_div_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce91ab5496e5e4d3e3db582666c8cd7575d7ff20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
