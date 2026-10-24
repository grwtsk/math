# TracesBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e93cff023059fc9267ff8f52b341d676a61709cc71ce4988dd09be3c9d62cd49",
  "kind": "structure",
  "lexical_name": "TracesBounds",
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
  "slug": "tracesbounds--f2e9c943ff4ccddc3439818d",
  "source": {
    "blob": "f9e2839242bf849085c73292751c344fc7e53ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2e9c943ff4ccddc3439818df5e554c786c3b53bfa7a45245cdef81e218c9a6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e93cff023059fc9267ff8f52b341d676a61709cc71ce4988dd09be3c9d62cd49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracesBounds (P : Params) (aT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  /-- [eq:tr1], first equality: `tr G̃ = a L N(T,2T) + O(L √X)`. -/
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T) (fun T => P.L T * Real.sqrt (P.X T))
  /-- [eq:tr1], second equality: `tr G̃ = L N(T,2T) (1 + O(𝓔_T))`. -/
  tr1' : EvBound (fun T => trG T - P.L T * Ncnt T) (fun T => P.calE T * (P.L T * Ncnt T))
  /-- [eq:tr2], second form: `tr G̃² = (T L/2π)(ℓ₁² + L²/3)(1 + O(𝓔_T))`. -/
  tr2 : EvBound (fun T => trG2 T - P.mainTr2 T) (fun T => P.calE T * P.mainTr2 T)
  /-- [eq:ratio]: `(tr G̃)² / tr G̃² = F(λ₁) N(T,2T) (1 + O(𝓔_T))` with `λ₁ = L/ℓ₁` (not `λ`). -/
  ratio : EvBound (fun T => trG T ^ 2 / trG2 T - Ffun (P.lam1 T) * Ncnt T)
    (fun T => P.calE T * (Ffun (P.lam1 T) * Ncnt T))

/-- Canonical instantiation of `TracesBounds`:
`ThmTracesHyp P Z` := [thm:traces] for the prime-side traces `P.trGtilde`, `P.trGtildeSq` of
`Defs.lean` ([eq:Gdef] 2nd expression) and the count `N(T,2T) = Z.N T (2T)` of the
zero configuration `Z`.  `Assembly` consumes `(hTr : ThmTracesHyp P Z)`; `PrimeSideB` proves it
from `PaperInputs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9e2839242bf849085c73292751c344fc7e53ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
