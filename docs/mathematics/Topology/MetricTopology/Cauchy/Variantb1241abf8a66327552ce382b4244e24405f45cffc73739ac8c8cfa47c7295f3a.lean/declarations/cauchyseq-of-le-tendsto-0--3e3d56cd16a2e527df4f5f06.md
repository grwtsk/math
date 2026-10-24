# cauchySeq_of_le_tendsto_0'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa62127d-2b1c-9e6e-aa3b-7fea2e966061",
  "kind": "theorem",
  "lexical_name": "cauchySeq_of_le_tendsto_0'",
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
  "slug": "cauchyseq-of-le-tendsto-0--3e3d56cd16a2e527df4f5f06",
  "source": {
    "blob": "aea642e304035f271d86ab5ba7a0ad6e5713cc10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variantb1241abf8a66327552ce382b4244e24405f45cffc73739ac8c8cfa47c7295f3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3d56cd16a2e527df4f5f06c5a8cd23ebce463775a186fa143d4c0ac0aaa7af",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variantb1241abf8a66327552ce382b4244e24405f45cffc73739ac8c8cfa47c7295f3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa62127d-2b1c-9e6e-aa3b-7fea2e966061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_of_le_tendsto_0' {s : β → α} (b : β → ℝ)
    (h : ∀ n m : β, n ≤ m → dist (s n) (s m) ≤ b n) (h₀ : Tendsto b atTop (𝓝 0)) : CauchySeq s :=
  Metric.cauchySeq_iff'.2 fun ε ε0 => (h₀.eventually (gt_mem_nhds ε0)).exists.imp fun N hN n hn =>
    calc dist (s n) (s N) = dist (s N) (s n) := dist_comm _ _
    _ ≤ b N := h _ _ hn
    _ < ε := hN

/-- If the distance between `s n` and `s m`, `n, m ≥ N` is bounded above by `b N`
and `b` converges to zero, then `s` is a Cauchy sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variantb1241abf8a66327552ce382b4244e24405f45cffc73739ac8c8cfa47c7295f3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variantb1241abf8a66327552ce382b4244e24405f45cffc73739ac8c8cfa47c7295f3a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aea642e304035f271d86ab5ba7a0ad6e5713cc10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
