# TracesBoundsD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f554722b42f74a7451c957a4666cfefa9080916374bfe235c208fda82b45aae9",
  "kind": "structure",
  "lexical_name": "TracesBoundsD",
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
  "slug": "tracesboundsd--cfc915cb303bc7a7aeedb7c4",
  "source": {
    "blob": "b0cb83b5eb804c23b6880cb708754761cea6602f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfc915cb303bc7a7aeedb7c4c7245b495f26936473a2cbb8df437e786a1bf8cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f554722b42f74a7451c957a4666cfefa9080916374bfe235c208fda82b45aae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracesBoundsD (P : Params) (aT bT JT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  /-- [eq:tr1] first equality (window-general prop:trace): tr G~ = a L N + O(L√X). -/
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T) (fun T => P.L T * Real.sqrt (P.X T))
  /-- [eq:ratio-general]: (tr G~)²/tr G~² = cRatio(λ₁; a, b, J) N (1 + O(E_T)). -/
  ratio : EvBound
    (fun T => trG T ^ 2 / trG2 T - cRatio (P.lam1 T) (aT T) (bT T) (JT T) * Ncnt T)
    (fun T => P.calE T * (cRatio (P.lam1 T) (aT T) (bT T) (JT T) * Ncnt T))
  /-- hat-units form consumed by the Thm-A-line endgame: the positive part of
  tr G~²/(aL)² − (1/cRatio)·N is O(E_T · (1/cRatio) N).  (Recorded separately since the
  division by (aL)² and the inversion are where TracesD does real work.) -/
  frhat : EvBound
    (fun T => max (trG2 T / (aT T * P.L T) ^ 2
        - (cRatio (P.lam1 T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T) 0)
    (fun T => P.calE T * ((cRatio (P.lam1 T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T))

/-! The ε-form wrappers live in Zeta23/ThmD/Endgame.lean (abstract) and Zeta23/ThmD/Final.lean (ζ). -/

end ThmD
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant392e810da8bd1a78555a3e84a57ddada2fccf3418bfd9bff7e737b85caba9e4d.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0cb83b5eb804c23b6880cb708754761cea6602f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
