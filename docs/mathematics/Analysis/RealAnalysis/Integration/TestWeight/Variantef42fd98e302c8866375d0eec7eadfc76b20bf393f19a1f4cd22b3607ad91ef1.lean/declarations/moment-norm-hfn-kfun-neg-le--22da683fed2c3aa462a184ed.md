# moment_norm_Hfn_kfun_neg_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fddc0b0-2cc0-e910-563d-3378e54a819d",
  "kind": "theorem",
  "lexical_name": "moment_norm_Hfn_kfun_neg_le",
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
  "slug": "moment-norm-hfn-kfun-neg-le--22da683fed2c3aa462a184ed",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 598,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22da683fed2c3aa462a184ed5668b3d8e4f7fb43966482d1f7140a4656000792",
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

Occurrence: `result:4fddc0b0-2cc0-e910-563d-3378e54a819d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moment_norm_Hfn_kfun_neg_le (h : WindowAt P T C) (k l : ℤ) (t : ℝ) :
    (|t + P.tau T k| + |t + P.tau T l|) * ‖Hfn (fun u => kfun P T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
      ≤ 4 * C * (1 + C) * P.X T ^ (3 / 4 : ℝ) * P.L T /
          ((1 + (t + P.tau T k) ^ 2) * (1 + (t + P.tau T l) ^ 2)) := by
  have hC := h.C_nonneg
  have hL := h.L_pos
  rw [h.Hfn_kfun_neg, norm_mul, ← exp_mul_exp_eq_X_rpow]
  set A := ‖P.phiHat T (-((t + P.tau T k : ℝ) : ℂ) + 3 / 4 * I)‖
  set B := ‖P.phiHat T (-((t + P.tau T l : ℝ) : ℂ) + 3 / 4 * I)‖
  set e := Real.exp (3 / 4 * (P.L T / 2))
  have hA := h.mfactor_le (t + P.tau T k)
  have hA' := h.mfactor_moment_le (t + P.tau T k)
  have hB := h.mfactor_le (t + P.tau T l)
  have hB' := h.mfactor_moment_le (t + P.tau T l)
  have hp : 0 < 1 + (t + P.tau T k) ^ 2 := by positivity
  have hq : 0 < 1 + (t + P.tau T l) ^ 2 := by positivity
  calc (|t + P.tau T k| + |t + P.tau T l|) * (A * B)
      = (|t + P.tau T k| * A) * B + A * (|t + P.tau T l| * B) := by ring
    _ ≤ (2 * C * e / (1 + (t + P.tau T k) ^ 2)) * ((1 + C) * e * P.L T / (1 + (t + P.tau T l) ^ 2))
        + ((1 + C) * e * P.L T / (1 + (t + P.tau T k) ^ 2)) * (2 * C * e / (1 + (t + P.tau T l) ^ 2)) :=
        add_le_add (mul_le_mul hA' hB (by positivity) (by positivity))
          (mul_le_mul hA hB' (by positivity) (by positivity))
    _ = 4 * C * (1 + C) * (e * e) * P.L T / ((1 + (t + P.tau T k) ^ 2) * (1 + (t + P.tau T l) ^ 2)) := by
        field_simp
        ring

/-! ## §G. (W4): the transform on the real line -/

/-- **(W4)** on ℝ the transform is the real number φ̂_ℝ(τ−τ_k) φ̂_ℝ(τ−τ_l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
