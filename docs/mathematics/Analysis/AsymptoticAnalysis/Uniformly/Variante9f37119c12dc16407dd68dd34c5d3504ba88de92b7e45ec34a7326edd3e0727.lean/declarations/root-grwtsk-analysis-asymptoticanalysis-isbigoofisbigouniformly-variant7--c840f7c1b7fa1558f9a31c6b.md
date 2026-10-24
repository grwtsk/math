# _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isThetaUniformlyOn_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a569bd82-2006-3ba2-7fe1-1a546dd361f3",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isThetaUniformlyOn_isCompact",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-isbigoofisbigouniformly-variant7--c840f7c1b7fa1558f9a31c6b",
  "source": {
    "blob": "cfb2d408b233957fd20ceccf75b8ccb5285f62f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c840f7c1b7fa1558f9a31c6bbb541cdb28c01811cc4ffe4dfb843284ccbf34b4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a569bd82-2006-3ba2-7fe1-1a546dd361f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isThetaUniformlyOn_isCompact (hf : ContinuousOn C s)
    (hs : IsCompact s) (hc : ‖c‖ ≠ 0) (hC : ∀ i ∈ s, C i ≠ 0) (l : Filter α) :
    (fun (i, _x) ↦ C i) =Θ[𝓟 s ×ˢ l] fun _ => c :=
  ⟨hf.const_isBigOUniformlyOn_isCompact hs hc l,
    hf.const_isBigOUniformlyOn_isCompact_rev hs hC l⟩

end IsTheta

end ContinuousOn
end Asymptotics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb2d408b233957fd20ceccf75b8ccb5285f62f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
