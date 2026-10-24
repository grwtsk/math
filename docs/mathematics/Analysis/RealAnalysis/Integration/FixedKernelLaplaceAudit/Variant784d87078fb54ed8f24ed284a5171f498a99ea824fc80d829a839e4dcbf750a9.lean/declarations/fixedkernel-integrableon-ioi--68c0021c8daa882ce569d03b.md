# fixedKernel_integrableOn_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1046df0-5759-c8c6-6163-939ed07e205c",
  "kind": "theorem",
  "lexical_name": "fixedKernel_integrableOn_Ioi",
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
  "slug": "fixedkernel-integrableon-ioi--68c0021c8daa882ce569d03b",
  "source": {
    "blob": "db37b78f749808402160d96b5b8bcf4072dc9ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 564,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68c0021c8daa882ce569d03b44a4ea104e03f1e7549ca93ea05ab31058ee9086",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1046df0-5759-c8c6-6163-939ed07e205c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_integrableOn_Ioi : IntegrableOn fixedKernel (Set.Ioi 0) := by
  apply ((fixedKernel_integrableOn_Icc 0 2).union fixedKernel_integrableOn_tail).mono_set
  intro t ht
  by_cases h : t ≤ 2
  · exact Or.inl ⟨ht.le, h⟩
  · exact Or.inr (lt_of_not_ge h)

/-- The actual zero extension is genuinely integrable on the whole real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db37b78f749808402160d96b5b8bcf4072dc9ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
