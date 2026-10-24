# first_tail_with_saving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:216a2aee-b275-09af-8f0b-bfee8dc2fc98",
  "kind": "theorem",
  "lexical_name": "first_tail_with_saving",
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
  "slug": "first-tail-with-saving--2d0cb3188fcdd3d64918dd6f",
  "source": {
    "blob": "859b686b504c0960ca8aedcf3a49bbc6263371b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0cb3188fcdd3d64918dd6f9421e490b8b02559dba7c452841022a83f7716d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:216a2aee-b275-09af-8f0b-bfee8dc2fc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_tail_with_saving {s : ℂ} (hs : 0 < s.re) (hs1 : s.re ≤ 1) :
    30240 * ‖tail 1 s‖ + 7 / 220 ≤ 1 / (s.re + 5) := by
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(s.re + 6))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hi := sixthKernel.integrand_integrable (T := 1) (z := s + 6) le_rfl
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : (∫ t : ℝ in Ioi 1, defect s t) = 1 / (s.re + 5) -
      30240 * ∫ t : ℝ in Ioi 1, ‖sixthKernel.integrand (s + 6) t‖ := by
    rw [defect, integral_sub hp (hi.norm.const_mul 30240), integral_const_mul]
    rw [integral_Ioi_rpow_of_lt (by linarith : -(s.re + 6) < -1) zero_lt_one,
      show -(s.re + 6) + 1 = -(s.re + 5) by ring, Real.one_rpow, neg_div_neg_eq]
  have hn : ‖tail 1 s‖ ≤ ∫ t : ℝ in Ioi 1, ‖sixthKernel.integrand (s + 6) t‖ :=
    norm_integral_le_integral_norm _
  have hd := full_defect_lower hs hs1
  rw [heq] at hd
  nlinarith

/-- The smaller multiplier needs BOTH the lower and upper real-part bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `859b686b504c0960ca8aedcf3a49bbc6263371b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
