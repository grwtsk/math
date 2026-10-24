# TracesBoundsXi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6749006306083f2875da26cf8e39f5b38e42f9c037e23ffbbcc314ac30a61ca0",
  "kind": "structure",
  "lexical_name": "TracesBoundsXi",
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
  "slug": "tracesboundsxi--545e7b07ea02a079d8c7645b",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:545e7b07ea02a079d8c7645bbda8624982db57aab54f86e39a7b2a2cb55e574b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6749006306083f2875da26cf8e39f5b38e42f9c037e23ffbbcc314ac30a61ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracesBoundsXi (P : Params) (aT bT JT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  /-- [eq:tr1]': `tr G̃ ~ a L N` — [XF′] Thm 8.1 `tr Ĝ = N(1 + o(1))`. -/
  tr1' : trG ~[atTop] (fun T => aT T * P.L T * Ncnt T)
  /-- [eq:tr2]: `tr G̃² ~ (TL/2π)(b ℓ₁² + L² J_T)` — [XF′] Thm 8.1's `‖Ĝ‖²_F = (N/c)(1 + o(1))` before
  normalisation. -/
  tr2 : trG2 ~[atTop] mainTr2Xi P bT JT
  /-- [eq:ratio-general]: `(tr G̃)²/tr G̃² ~ cRatio(λ₁; a, b, J_T) · N`. -/
  ratio : (fun T => trG T ^ 2 / trG2 T)
    ~[atTop] (fun T => ThmD.cRatio (P.lam1 T) (aT T) (bT T) (JT T) * Ncnt T)
  /-- hat-units second moment: `tr G̃²/(aL)² ~ cRatio(λ₁; a, b, J_T)⁻¹ · N` (`= ‖M̂ᵀ‖²_F`). -/
  frhat : (fun T => trG2 T / (aT T * P.L T) ^ 2)
    ~[atTop] (fun T => (ThmD.cRatio (P.lam1 T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T)

/-! ## Little-o glue -/

/-- domination by a vanishing multiple gives little-o: |g| ≤ E·h eventually with E → 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
