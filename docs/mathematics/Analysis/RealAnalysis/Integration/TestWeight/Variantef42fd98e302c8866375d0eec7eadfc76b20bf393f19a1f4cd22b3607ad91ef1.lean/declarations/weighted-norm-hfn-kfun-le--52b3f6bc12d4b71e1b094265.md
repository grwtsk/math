# weighted_norm_Hfn_kfun_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1243e5e0-eed8-2351-8240-b7f7a00b15b5",
  "kind": "theorem",
  "lexical_name": "weighted_norm_Hfn_kfun_le",
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
  "slug": "weighted-norm-hfn-kfun-le--52b3f6bc12d4b71e1b094265",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 766,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52b3f6bc12d4b71e1b094265486d907cd550d62d56ab43df51f18f930159c55f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1243e5e0-eed8-2351-8240-b7f7a00b15b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_norm_Hfn_kfun_le (h : WindowAt P T C) (k l : ℤ) (t : ℝ) :
    (1 + |t - P.tauStar T k l|) * ‖Hfn (kfun P T k l) ((5 / 4 : ℂ) + t * I)‖
      ≤ (1 + C) * (1 + 3 * C) * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 /
          ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2)) := by
  have hC := h.C_nonneg
  have hL := h.one_le_L
  have hX := h.X_pos
  have hXr : 0 ≤ P.X T ^ (3 / 4 : ℝ) := Real.rpow_nonneg hX.le _
  have h1 := h.norm_Hfn_kfun_le k l t
  have h2 := h.moment_norm_Hfn_kfun_le k l t
  have hts := abs_sub_tauStar_le P T k l t
  set D := (1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2)
  have hD : 0 < D := by positivity
  set N := ‖Hfn (kfun P T k l) ((5 / 4 : ℂ) + t * I)‖
  have hN : 0 ≤ N := norm_nonneg _
  calc (1 + |t - P.tauStar T k l|) * N
      ≤ N + (1 / 2) * ((|t - P.tau T k| + |t - P.tau T l|) * N) := by nlinarith
    _ ≤ (1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 / D
        + (1 / 2) * (4 * C * (1 + C) * P.X T ^ (3 / 4 : ℝ) * P.L T / D) := by gcongr
    _ = ((1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 + 2 * C * (1 + C) * P.X T ^ (3 / 4 : ℝ) * P.L T) / D := by
        ring
    _ ≤ ((1 + C) * (1 + 3 * C) * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2) / D := by
        gcongr
        nlinarith [mul_nonneg (mul_nonneg (mul_nonneg hC (by linarith : (0:ℝ) ≤ 1 + C)) hXr)
          (mul_nonneg (by linarith : (0:ℝ) ≤ P.L T) (sub_nonneg.mpr hL))]

/-- **(W6b, pointwise, mirrored)** (1+|t+τ⋆|)‖H_{k∘neg}(5/4+it)‖ ≤ (1+C)(1+3C) X^{3/4} L² / (…). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
