# DataXi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15d967b3078ed5336e4ffaa4220f73d557537218ea12872377e314767793029b",
  "kind": "structure",
  "lexical_name": "DataXi",
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
  "slug": "dataxi--1d6dca68bd9f1f377edda6c7",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 160,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d6dca68bd9f1f377edda6c7636a983c36b35bcf63ca15f5e757f12e44023637",
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

Occurrence: `declaration:15d967b3078ed5336e4ffaa4220f73d557537218ea12872377e314767793029b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DataXi (P : Params) where
  /-- `a := L⁻¹ ∫ φ²` -/
  aT : ℝ → ℝ
  /-- `b := L⁻¹ ∫ φ⁴` -/
  bT : ℝ → ℝ
  /-- `J_T := (2/L³)·l·∫_0^L D(y/l) g(y) dy` -/
  JT : ℝ → ℝ
  /-- `tr M̃ᵀ` -/
  trG : ℝ → ℝ
  /-- `tr (M̃ᵀ)²` -/
  trG2 : ℝ → ℝ
  /-- the count `N` (any, with `N = Tℓ₁/2π + O(l)`) -/
  Ncnt : ℝ → ℝ
  /-- `𝓜 = 𝓜[ν, ν]` -/
  Mtot : ℝ → ℝ
  /-- `𝓜[μ, μ]` -/
  Mmumu : ℝ → ℝ
  /-- `𝓜[P_c, P_c]` -/
  MPP : ℝ → ℝ
  /-- `𝓜[μ, P_c]` -/
  MmuP : ℝ → ℝ
  /-- `cΠ·𝓜[μ, Π_X]` -/
  MmuPi : ℝ → ℝ
  /-- `cΠ·𝓜[P_c, Π_X]` -/
  MPPi : ℝ → ℝ
  /-- `cΠ²·𝓜[Π_X, Π_X]` -/
  MPiPi : ℝ → ℝ
  /-- `∫_T^{2T} μ²` -/
  intMu2 : ℝ → ℝ
  /-- the diagonal `Σ_{N≤X} |c_N|²/N · g(log N)` -/
  sumB2g : ℝ → ℝ

variable {P : Params} (D : DataXi P)

/-- the lem_ends-scale remainder `R_T := L·l³·log l·(1 + X)` that absorbs every first-form error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
