# TracesBoundsDChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f0560a524aa9ad5326be38eec1c2ebfdc00d189f08ebe0b9021023087b181ac",
  "kind": "structure",
  "lexical_name": "TracesBoundsDChi",
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
  "slug": "tracesboundsdchi--cef5731a7d45ca1141087301",
  "source": {
    "blob": "cd394662ae7d4619500425eed55dac609bc0027a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHyp/Variant1810e830ac21e780599d05a6f0bd40d4e1c80c87bfca568cfcfadae908b68b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cef5731a7d45ca1141087301d23fe6a32f25a24c63e6e1a1eaf9e66fcd05f8e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHyp/Variant1810e830ac21e780599d05a6f0bd40d4e1c80c87bfca568cfcfadae908b68b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f0560a524aa9ad5326be38eec1c2ebfdc00d189f08ebe0b9021023087b181ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracesBoundsDChi (P : Params) (q : ℕ) (aT bT JT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T) (fun T => P.L T * Real.sqrt (P.X T))
  ratio : EvBound
    (fun T => trG T ^ 2 / trG2 T - cRatio (lam1q P q T) (aT T) (bT T) (JT T) * Ncnt T)
    (fun T => P.calE T * (cRatio (lam1q P q T) (aT T) (bT T) (JT T) * Ncnt T))
  frhat : EvBound
    (fun T => max (trG2 T / (aT T * P.L T) ^ 2
        - (cRatio (lam1q P q T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T) 0)
    (fun T => P.calE T * ((cRatio (lam1q P q T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T))

end ThmDE
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHyp/Variant1810e830ac21e780599d05a6f0bd40d4e1c80c87bfca568cfcfadae908b68b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesHyp/Variant1810e830ac21e780599d05a6f0bd40d4e1c80c87bfca568cfcfadae908b68b82.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd394662ae7d4619500425eed55dac609bc0027a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
