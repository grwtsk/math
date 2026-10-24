# gentryNu_Pc_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:700bcfa6-4ef4-d7c1-9144-a0c839625b08",
  "kind": "lemma",
  "lexical_name": "gentryNu_Pc_diag",
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
  "slug": "gentrynu-pc-diag--6ec5ececb5553d6f5448c99e",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 501,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ec5ececb5553d6f5448c99ebe47b1a2836f159829928d606d898cbd5666da3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:700bcfa6-4ef4-d7c1-9144-a0c839625b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gentryNu_Pc_diag (c : ℕ → ℂ) (k : ℤ) :
    GentryNu (Pc p.X c) p Fn k k = ∫ s, Fn.phiHat s ^ 2 * Pc p.X c (p.tau k + s) := by
  unfold GentryNu
  rw [← integral_add_right_eq_self _ (p.tau k)]
  congr 1
  funext s
  rw [add_sub_cancel_right, add_comm s (p.tau k)]
  ring

/-- **[XF′ Lemma 6.1], trace part, at fixed T.**  With the diagonal expansion g^{k}_N = Σ_{r≥1} e_r(N) δ_k^r
(0 ≤ δ_k ≤ 1/2, δ_k monotone in k), e_r(1) = 0 and S₁(e_r) ≤ σρ^r (ρ ≤ 1):
|Σ_{k<d} Q_{kk}(g^k)| ≤ (2/log 2)·L²·σ·ρ  (Abel in k against the Dirichlet kernel). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
