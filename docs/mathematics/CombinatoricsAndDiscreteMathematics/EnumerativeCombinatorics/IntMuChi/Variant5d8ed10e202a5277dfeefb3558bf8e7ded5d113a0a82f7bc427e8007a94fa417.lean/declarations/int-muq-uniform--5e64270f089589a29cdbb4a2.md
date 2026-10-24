# int_muq_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0e2539-879e-8716-0284-f7b5d2678706",
  "kind": "theorem",
  "lexical_name": "int_muq_uniform",
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
  "slug": "int-muq-uniform--5e64270f089589a29cdbb4a2",
  "source": {
    "blob": "a2e771f291b4636d8b3d168c4d9f84ef1d5c8db5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 461,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e64270f089589a29cdbb4a23dd3024327a16622f64231d58a5aa1a1e3fe96c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0e2539-879e-8716-0284-f7b5d2678706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_muq_uniform (C : ℝ) : ∀ (κ q : ℕ), 1 ≤ q → Continuous (muq κ q) →
    (∀ τ : ℝ, 1 ≤ |τ| →
      |muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))| ≤ C / τ ^ 2) →
    ∀ T : ℝ, 1 ≤ T →
      |(∫ τ in T..(2 * T), muq κ q τ) - T * ell1q q T / (2 * Real.pi)| ≤ C / T := by
  intro κ q hq hcont hst T hT
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hq
  have hT0 : 0 < T := by linarith
  set c₀ : ℝ := Real.log q / (2 * Real.pi) with hc₀
  set g : ℝ → ℝ := fun τ => muq κ q τ - c₀ with hg
  have hgcont : Continuous g := hcont.sub continuous_const
  have hgst : ∀ τ : ℝ, 1 ≤ |τ| →
      |g τ - (1 / (2 * Real.pi)) * Real.log (|τ| / (2 * Real.pi))| ≤ C / τ ^ 2 := by
    intro τ hτ
    have hτ0 : 0 < |τ| := by linarith
    have e : g τ - (1 / (2 * Real.pi)) * Real.log (|τ| / (2 * Real.pi))
        = muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi)) := by
      rw [hg, hc₀]
      simp only
      rw [show (q : ℝ) * |τ| / (2 * Real.pi) = q * (|τ| / (2 * Real.pi)) by ring,
        Real.log_mul hq0.ne' (by positivity)]
      ring
    rw [e]
    exact hst τ hτ
  have hmain := int_g_explicit hgcont hgst hT
  have hgi : IntervalIntegrable g volume T (2 * T) := hgcont.intervalIntegrable _ _
  have hci : IntervalIntegrable (fun _ : ℝ => c₀) volume T (2 * T) := _root_.intervalIntegrable_const
  have hsplit : (∫ τ in T..(2 * T), muq κ q τ) = (∫ τ in T..(2 * T), g τ) + c₀ * T := by
    have e1 : (∫ τ in T..(2 * T), muq κ q τ) = ∫ τ in T..(2 * T), (g τ + c₀) := by
      apply intervalIntegral.integral_congr
      intro τ _
      rw [hg]
      ring
    rw [e1, intervalIntegral.integral_add hgi hci, intervalIntegral.integral_const, smul_eq_mul]
    ring
  rw [hsplit, ell1q_eq hq hT0]
  have e2 : (∫ τ in T..(2 * T), g τ) + c₀ * T - T * (ell1 T + Real.log q) / (2 * Real.pi)
      = (∫ τ in T..(2 * T), g τ) - T * ell1 T / (2 * Real.pi) := by
    rw [hc₀]; ring
  rw [e2]
  exact hmain

set_option maxHeartbeats 800000 in
/-- **q-uniform GammaFactsChiBounded.int_mu_sq**: constants depend only on the Stirling constant C:
threshold T₀(C) := max (2π e⁴) (32π²(C(1+C)+1)) (≥ 2π e² and ≥ 1 automatically), error constant
K(C) := 8(1+2log²2)+1 + 4π·|C|. The log q of μ_χ never multiplies: 2c₀·|E₂| ≤ 2c₀C/T is absorbed by
ell1q ≥ 2π·c₀ (i.e. ell1q ≥ log q). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e771f291b4636d8b3d168c4d9f84ef1d5c8db5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
