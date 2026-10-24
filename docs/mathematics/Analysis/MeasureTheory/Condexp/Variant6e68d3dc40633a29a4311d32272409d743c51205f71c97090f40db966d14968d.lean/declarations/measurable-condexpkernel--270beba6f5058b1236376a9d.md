# measurable_condexpKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d7ee032-3e73-ed2d-0725-13e015b0b33c",
  "kind": "theorem",
  "lexical_name": "measurable_condexpKernel",
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
  "slug": "measurable-condexpkernel--270beba6f5058b1236376a9d",
  "source": {
    "blob": "22b2fba4bd6999892b15237d35d702bae0c7935d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270beba6f5058b1236376a9d67141c9c6e677d9db2bcaff29f50fd0250d7d49e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d7ee032-3e73-ed2d-0725-13e015b0b33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_condexpKernel {s : Set Ω} (hs : MeasurableSet s) :
    Measurable[m] fun ω => condexpKernel μ m ω s := by
  simp_rw [condexpKernel_apply_eq_condDistrib]
  refine Measurable.mono ?_ (inf_le_left : m ⊓ mΩ ≤ m) le_rfl
  convert measurable_condDistrib (μ := μ) hs
  rw [MeasurableSpace.comap_id]
#align probability_theory.measurable_condexp_kernel ProbabilityTheory.measurable_condexpKernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b2fba4bd6999892b15237d35d702bae0c7935d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
