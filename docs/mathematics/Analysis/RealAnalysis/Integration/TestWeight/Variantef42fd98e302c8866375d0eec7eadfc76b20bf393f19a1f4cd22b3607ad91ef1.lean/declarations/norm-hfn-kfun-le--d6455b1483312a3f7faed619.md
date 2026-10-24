# norm_Hfn_kfun_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f79631d-98b6-2f07-0487-5675d99f2596",
  "kind": "theorem",
  "lexical_name": "norm_Hfn_kfun_le",
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
  "slug": "norm-hfn-kfun-le--d6455b1483312a3f7faed619",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 535,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6455b1483312a3f7faed6198c660b4ee760180707a2f6fa165044dcc746ea92",
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

Occurrence: `result:7f79631d-98b6-2f07-0487-5675d99f2596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Hfn_kfun_le (h : WindowAt P T C) (k l : ℤ) (t : ℝ) :
    ‖Hfn (kfun P T k l) ((5 / 4 : ℂ) + t * I)‖
      ≤ (1 + C) ^ 2 * P.X T ^ (3 / 4 : ℝ) * P.L T ^ 2 /
          ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2)) := by
  have hC := h.C_nonneg
  have hL := h.L_pos
  rw [h.Hfn_kfun, norm_mul]
  calc ‖P.phiHat T (((t - P.tau T k : ℝ) : ℂ) - 3 / 4 * I)‖
        * ‖P.phiHat T (((t - P.tau T l : ℝ) : ℂ) - 3 / 4 * I)‖
      ≤ ((1 + C) * Real.exp (3 / 4 * (P.L T / 2)) * P.L T / (1 + (t - P.tau T k) ^ 2))
        * ((1 + C) * Real.exp (3 / 4 * (P.L T / 2)) * P.L T / (1 + (t - P.tau T l) ^ 2)) :=
        mul_le_mul (h.factor_le _) (h.factor_le _) (norm_nonneg _) (by positivity)
    _ = (1 + C) ^ 2 * (Real.exp (3 / 4 * (P.L T / 2)) * Real.exp (3 / 4 * (P.L T / 2))) * P.L T ^ 2 /
          ((1 + (t - P.tau T k) ^ 2) * (1 + (t - P.tau T l) ^ 2)) := by
        rw [div_mul_div_comm]; ring
    _ = _ := by rw [exp_mul_exp_eq_X_rpow]

/-- **(W2)** (|t−τ_k| + |t−τ_l|) ‖H(5/4+it)‖ ≤ 4C(1+C) X^{3/4} L / ((1+(t−τ_k)²)(1+(t−τ_l)²)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
